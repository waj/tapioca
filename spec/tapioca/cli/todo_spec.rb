# typed: strict
# frozen_string_literal: true

require "spec_with_project"

module Tapioca
  class TodoSpec < SpecWithProject
    describe("#cli::todo") do
      before(:all) do
        project.bundle_install
        project.tapioca("init")
      end

      after do
        @project.remove("lib/")
        @project.remove("sorbet/rbi")
      end

      it "does nothing if all constant are already resolved" do
        result = @project.tapioca("todo")

        assert_equal(<<~OUT, result.out)
          Finding all unresolved constants, this may take a few seconds... Nothing to do
        OUT

        assert_empty_stderr(result)
        assert_success_status(result)

        refute_project_file_exist("sorbet/rbi/todo.rbi")
      end

      it "creates a list of all unresolved constants" do
        @project.write("lib/file.rb", <<~RB)
          class Foo < ::Undef1
            def foo
              Undef2.new
            end
          end

          ::Undef1::Undef3.foo
          Undef2::Undef4.bar
        RB

        result = @project.tapioca("todo")

        assert_equal(<<~OUT, result.out)
          Finding all unresolved constants, this may take a few seconds... Done

          All unresolved constants have been written to sorbet/rbi/todo.rbi.
          Please review changes and commit them.
        OUT

        assert_project_file_equal("sorbet/rbi/todo.rbi", <<~RB)
          # DO NOT EDIT MANUALLY
          # This is an autogenerated file for unresolved constants.
          # Please instead update this file by running `bin/tapioca todo`.

          # typed: false

          module ::Undef1; end
          module ::Undef1::Undef3; end
          module ::Undef2::Undef4; end
          module Foo::Undef2; end
        RB

        assert_empty_stderr(result)
        assert_success_status(result)
      end

      it "creates a TODO file without header" do
        @project.write("lib/file.rb", <<~RUBY)
          class Foo < ::Undef1; end
        RUBY

        result = @project.tapioca("todo --no-file-header")

        assert_equal(<<~OUT, result.out)
          Finding all unresolved constants, this may take a few seconds... Done

          All unresolved constants have been written to sorbet/rbi/todo.rbi.
          Please review changes and commit them.
        OUT

        assert_project_file_equal("sorbet/rbi/todo.rbi", <<~RB)
          # typed: false

          module ::Undef1; end
        RB

        assert_empty_stderr(result)
        assert_success_status(result)
      end

      it "deletes the todo.rbi file when everything is resolved" do
        @project.write("sorbet/rbi/todo.rbi", <<~RB)
          # typed: false

          module SomeTodo; end
        RB

        result = @project.tapioca("todo")

        assert_equal(<<~OUT, result.out)
          Finding all unresolved constants, this may take a few seconds... Nothing to do
        OUT

        refute_project_file_exist("sorbet/rbi/todo.rbi")

        assert_empty_stderr(result)
        assert_success_status(result)
      end
    end
  end
end
