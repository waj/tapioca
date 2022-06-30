# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `sqlite3` gem.
# Please instead update this file by running `bin/tapioca gem sqlite3`.

module SQLite3
  class << self
    def const_missing(name); end
    def libversion; end
    def sqlcipher?; end
    def threadsafe; end

    # Was sqlite3 compiled with thread safety on?
    #
    # @return [Boolean]
    def threadsafe?; end
  end
end

class SQLite3::AbortException < ::SQLite3::Exception; end
class SQLite3::AuthorizationException < ::SQLite3::Exception; end

class SQLite3::Backup
  def initialize(_arg0, _arg1, _arg2, _arg3); end

  def finish; end
  def pagecount; end
  def remaining; end
  def step(_arg0); end
end

class SQLite3::Blob < ::String; end
class SQLite3::BusyException < ::SQLite3::Exception; end
class SQLite3::CantOpenException < ::SQLite3::Exception; end
module SQLite3::Constants; end
module SQLite3::Constants::ColumnType; end
SQLite3::Constants::ColumnType::BLOB = T.let(T.unsafe(nil), Integer)
SQLite3::Constants::ColumnType::FLOAT = T.let(T.unsafe(nil), Integer)
SQLite3::Constants::ColumnType::INTEGER = T.let(T.unsafe(nil), Integer)
SQLite3::Constants::ColumnType::NULL = T.let(T.unsafe(nil), Integer)
SQLite3::Constants::ColumnType::TEXT = T.let(T.unsafe(nil), Integer)
module SQLite3::Constants::ErrorCode; end

# Callback routine requested an abort
SQLite3::Constants::ErrorCode::ABORT = T.let(T.unsafe(nil), Integer)

# Authorization denied
SQLite3::Constants::ErrorCode::AUTH = T.let(T.unsafe(nil), Integer)

# The database file is locked
SQLite3::Constants::ErrorCode::BUSY = T.let(T.unsafe(nil), Integer)

# Unable to open the database file
SQLite3::Constants::ErrorCode::CANTOPEN = T.let(T.unsafe(nil), Integer)

# Abort due to constraint violation
SQLite3::Constants::ErrorCode::CONSTRAINT = T.let(T.unsafe(nil), Integer)

# The database disk image is malformed
SQLite3::Constants::ErrorCode::CORRUPT = T.let(T.unsafe(nil), Integer)

# sqlite_step() has finished executing
SQLite3::Constants::ErrorCode::DONE = T.let(T.unsafe(nil), Integer)

# (Internal Only) Database table is empty
SQLite3::Constants::ErrorCode::EMPTY = T.let(T.unsafe(nil), Integer)

# SQL error or missing database
SQLite3::Constants::ErrorCode::ERROR = T.let(T.unsafe(nil), Integer)

# Insertion failed because database is full
SQLite3::Constants::ErrorCode::FULL = T.let(T.unsafe(nil), Integer)

# An internal logic error in SQLite
SQLite3::Constants::ErrorCode::INTERNAL = T.let(T.unsafe(nil), Integer)

# Operation terminated by sqlite_interrupt()
SQLite3::Constants::ErrorCode::INTERRUPT = T.let(T.unsafe(nil), Integer)

# Some kind of disk I/O error occurred
SQLite3::Constants::ErrorCode::IOERR = T.let(T.unsafe(nil), Integer)

# A table in the database is locked
SQLite3::Constants::ErrorCode::LOCKED = T.let(T.unsafe(nil), Integer)

# Data type mismatch
SQLite3::Constants::ErrorCode::MISMATCH = T.let(T.unsafe(nil), Integer)

# Library used incorrectly
SQLite3::Constants::ErrorCode::MISUSE = T.let(T.unsafe(nil), Integer)

# Uses OS features not supported on host
SQLite3::Constants::ErrorCode::NOLFS = T.let(T.unsafe(nil), Integer)

# A malloc() failed
SQLite3::Constants::ErrorCode::NOMEM = T.let(T.unsafe(nil), Integer)

# (Internal Only) Table or record not found
SQLite3::Constants::ErrorCode::NOTFOUND = T.let(T.unsafe(nil), Integer)

# Successful result
SQLite3::Constants::ErrorCode::OK = T.let(T.unsafe(nil), Integer)

# Access permission denied
SQLite3::Constants::ErrorCode::PERM = T.let(T.unsafe(nil), Integer)

# Database lock protocol error
SQLite3::Constants::ErrorCode::PROTOCOL = T.let(T.unsafe(nil), Integer)

# Attempt to write a readonly database
SQLite3::Constants::ErrorCode::READONLY = T.let(T.unsafe(nil), Integer)

# sqlite_step() has another row ready
SQLite3::Constants::ErrorCode::ROW = T.let(T.unsafe(nil), Integer)

# The database schema changed
SQLite3::Constants::ErrorCode::SCHEMA = T.let(T.unsafe(nil), Integer)

# Too much data for one row of a table
SQLite3::Constants::ErrorCode::TOOBIG = T.let(T.unsafe(nil), Integer)

module SQLite3::Constants::Open; end
SQLite3::Constants::Open::AUTOPROXY = T.let(T.unsafe(nil), Integer)
SQLite3::Constants::Open::CREATE = T.let(T.unsafe(nil), Integer)
SQLite3::Constants::Open::DELETEONCLOSE = T.let(T.unsafe(nil), Integer)
SQLite3::Constants::Open::EXCLUSIVE = T.let(T.unsafe(nil), Integer)
SQLite3::Constants::Open::FULLMUTEX = T.let(T.unsafe(nil), Integer)
SQLite3::Constants::Open::MAIN_DB = T.let(T.unsafe(nil), Integer)
SQLite3::Constants::Open::MAIN_JOURNAL = T.let(T.unsafe(nil), Integer)
SQLite3::Constants::Open::MASTER_JOURNAL = T.let(T.unsafe(nil), Integer)
SQLite3::Constants::Open::MEMORY = T.let(T.unsafe(nil), Integer)
SQLite3::Constants::Open::NOMUTEX = T.let(T.unsafe(nil), Integer)
SQLite3::Constants::Open::PRIVATECACHE = T.let(T.unsafe(nil), Integer)
SQLite3::Constants::Open::READONLY = T.let(T.unsafe(nil), Integer)
SQLite3::Constants::Open::READWRITE = T.let(T.unsafe(nil), Integer)
SQLite3::Constants::Open::SHAREDCACHE = T.let(T.unsafe(nil), Integer)
SQLite3::Constants::Open::SUBJOURNAL = T.let(T.unsafe(nil), Integer)
SQLite3::Constants::Open::TEMP_DB = T.let(T.unsafe(nil), Integer)
SQLite3::Constants::Open::TEMP_JOURNAL = T.let(T.unsafe(nil), Integer)
SQLite3::Constants::Open::TRANSIENT_DB = T.let(T.unsafe(nil), Integer)
SQLite3::Constants::Open::URI = T.let(T.unsafe(nil), Integer)
SQLite3::Constants::Open::WAL = T.let(T.unsafe(nil), Integer)
module SQLite3::Constants::TextRep; end
SQLite3::Constants::TextRep::ANY = T.let(T.unsafe(nil), Integer)
SQLite3::Constants::TextRep::DETERMINISTIC = T.let(T.unsafe(nil), Integer)
SQLite3::Constants::TextRep::UTF16 = T.let(T.unsafe(nil), Integer)
SQLite3::Constants::TextRep::UTF16BE = T.let(T.unsafe(nil), Integer)
SQLite3::Constants::TextRep::UTF16LE = T.let(T.unsafe(nil), Integer)
SQLite3::Constants::TextRep::UTF8 = T.let(T.unsafe(nil), Integer)
class SQLite3::ConstraintException < ::SQLite3::Exception; end
class SQLite3::CorruptException < ::SQLite3::Exception; end

# The Database class encapsulates a single connection to a SQLite3 database.
# Its usage is very straightforward:
#
#   require 'sqlite3'
#
#   SQLite3::Database.new( "data.db" ) do |db|
#     db.execute( "select * from table" ) do |row|
#       p row
#     end
#   end
#
# It wraps the lower-level methods provides by the selected driver, and
# includes the Pragmas module for access to various pragma convenience
# methods.
#
# The Database class provides type translation services as well, by which
# the SQLite3 data types (which are all represented as strings) may be
# converted into their corresponding types (as defined in the schemas
# for their tables). This translation only occurs when querying data from
# the database--insertions and updates are all still typeless.
#
# Furthermore, the Database class has been designed to work well with the
# ArrayFields module from Ara Howard. If you require the ArrayFields
# module before performing a query, and if you have not enabled results as
# hashes, then the results will all be indexible by field name.
class SQLite3::Database
  include ::SQLite3::Pragmas

  # call-seq: SQLite3::Database.new(file, options = {})
  #
  # Create a new Database object that opens the given file. If utf16
  # is +true+, the filename is interpreted as a UTF-16 encoded string.
  #
  # By default, the new database will return result rows as arrays
  # (#results_as_hash) and has type translation disabled (#type_translation=).
  #
  # @return [Database] a new instance of Database
  def initialize(file, options = T.unsafe(nil), zvfs = T.unsafe(nil)); end

  # Installs (or removes) a block that will be invoked for every access
  # to the database. If the block returns 0 (or +nil+), the statement
  # is allowed to proceed. Returning 1 causes an authorization error to
  # occur, and returning 2 causes the access to be silently denied.
  def authorizer(&block); end

  def authorizer=(_arg0); end
  def busy_handler(*_arg0); end
  def busy_timeout(_arg0); end
  def busy_timeout=(_arg0); end
  def changes; end
  def close; end
  def closed?; end
  def collation(_arg0, _arg1); end

  # Returns the value of attribute collations.
  def collations; end

  # Commits the current transaction. If there is no current transaction,
  # this will cause an error to be raised. This returns +true+, in order
  # to allow it to be used in idioms like
  # <tt>abort? and rollback or commit</tt>.
  def commit; end

  def complete?(_arg0); end

  # Creates a new aggregate function for use in SQL statements. Aggregate
  # functions are functions that apply over every row in the result set,
  # instead of over just a single row. (A very common aggregate function
  # is the "count" function, for determining the number of rows that match
  # a query.)
  #
  # The new function will be added as +name+, with the given +arity+. (For
  # variable arity functions, use -1 for the arity.)
  #
  # The +step+ parameter must be a proc object that accepts as its first
  # parameter a FunctionProxy instance (representing the function
  # invocation), with any subsequent parameters (up to the function's arity).
  # The +step+ callback will be invoked once for each row of the result set.
  #
  # The +finalize+ parameter must be a +proc+ object that accepts only a
  # single parameter, the FunctionProxy instance representing the current
  # function invocation. It should invoke FunctionProxy#result= to
  # store the result of the function.
  #
  # Example:
  #
  #   db.create_aggregate( "lengths", 1 ) do
  #     step do |func, value|
  #       func[ :total ] ||= 0
  #       func[ :total ] += ( value ? value.length : 0 )
  #     end
  #
  #     finalize do |func|
  #       func.result = func[ :total ] || 0
  #     end
  #   end
  #
  #   puts db.get_first_value( "select lengths(name) from table" )
  #
  # See also #create_aggregate_handler for a more object-oriented approach to
  # aggregate functions.
  def create_aggregate(name, arity, step = T.unsafe(nil), finalize = T.unsafe(nil), text_rep = T.unsafe(nil), &block); end

  # This is another approach to creating an aggregate function (see
  # #create_aggregate). Instead of explicitly specifying the name,
  # callbacks, arity, and type, you specify a factory object
  # (the "handler") that knows how to obtain all of that information. The
  # handler should respond to the following messages:
  #
  # +arity+:: corresponds to the +arity+ parameter of #create_aggregate. This
  #           message is optional, and if the handler does not respond to it,
  #           the function will have an arity of -1.
  # +name+:: this is the name of the function. The handler _must_ implement
  #          this message.
  # +new+:: this must be implemented by the handler. It should return a new
  #         instance of the object that will handle a specific invocation of
  #         the function.
  #
  # The handler instance (the object returned by the +new+ message, described
  # above), must respond to the following messages:
  #
  # +step+:: this is the method that will be called for each step of the
  #          aggregate function's evaluation. It should implement the same
  #          signature as the +step+ callback for #create_aggregate.
  # +finalize+:: this is the method that will be called to finalize the
  #              aggregate function's evaluation. It should implement the
  #              same signature as the +finalize+ callback for
  #              #create_aggregate.
  #
  # Example:
  #
  #   class LengthsAggregateHandler
  #     def self.arity; 1; end
  #     def self.name; 'lengths'; end
  #
  #     def initialize
  #       @total = 0
  #     end
  #
  #     def step( ctx, name )
  #       @total += ( name ? name.length : 0 )
  #     end
  #
  #     def finalize( ctx )
  #       ctx.result = @total
  #     end
  #   end
  #
  #   db.create_aggregate_handler( LengthsAggregateHandler )
  #   puts db.get_first_value( "select lengths(name) from A" )
  def create_aggregate_handler(handler); end

  # Creates a new function for use in SQL statements. It will be added as
  # +name+, with the given +arity+. (For variable arity functions, use
  # -1 for the arity.)
  #
  # The block should accept at least one parameter--the FunctionProxy
  # instance that wraps this function invocation--and any other
  # arguments it needs (up to its arity).
  #
  # The block does not return a value directly. Instead, it will invoke
  # the FunctionProxy#result= method on the +func+ parameter and
  # indicate the return value that way.
  #
  # Example:
  #
  #   db.create_function( "maim", 1 ) do |func, value|
  #     if value.nil?
  #       func.result = nil
  #     else
  #       func.result = value.split(//).sort.join
  #     end
  #   end
  #
  #   puts db.get_first_value( "select maim(name) from table" )
  def create_function(name, arity, text_rep = T.unsafe(nil), &block); end

  # Define an aggregate function named +name+ using a object template
  # object +aggregator+. +aggregator+ must respond to +step+ and +finalize+.
  # +step+ will be called with row information and +finalize+ must return the
  # return value for the aggregator function.
  #
  # _API Change:_ +aggregator+ must also implement +clone+. The provided
  # +aggregator+ object will serve as template that is cloned to provide the
  # individual instances of the aggregate function. Regular ruby objects
  # already provide a suitable +clone+.
  # The functions arity is the arity of the +step+ method.
  def define_aggregator(name, aggregator); end

  def define_function(_arg0); end
  def define_function_with_flags(_arg0, _arg1); end
  def enable_load_extension(_arg0); end
  def encoding; end
  def errcode; end
  def errmsg; end

  # Executes the given SQL statement. If additional parameters are given,
  # they are treated as bind variables, and are bound to the placeholders in
  # the query.
  #
  # Note that if any of the values passed to this are hashes, then the
  # key/value pairs are each bound separately, with the key being used as
  # the name of the placeholder to bind the value to.
  #
  # The block is optional. If given, it will be invoked for each row returned
  # by the query. Otherwise, any results are accumulated into an array and
  # returned wholesale.
  #
  # See also #execute2, #query, and #execute_batch for additional ways of
  # executing statements.
  def execute(sql, bind_vars = T.unsafe(nil), *args, &block); end

  # Executes the given SQL statement, exactly as with #execute. However, the
  # first row returned (either via the block, or in the returned array) is
  # always the names of the columns. Subsequent rows correspond to the data
  # from the result set.
  #
  # Thus, even if the query itself returns no rows, this method will always
  # return at least one row--the names of the columns.
  #
  # See also #execute, #query, and #execute_batch for additional ways of
  # executing statements.
  def execute2(sql, *bind_vars); end

  # Executes all SQL statements in the given string. By contrast, the other
  # means of executing queries will only execute the first statement in the
  # string, ignoring all subsequent statements. This will execute each one
  # in turn. The same bind parameters, if given, will be applied to each
  # statement.
  #
  # This always returns +nil+, making it unsuitable for queries that return
  # rows.
  #
  # See also #execute_batch2 for additional ways of
  # executing statements.
  def execute_batch(sql, bind_vars = T.unsafe(nil), *args); end

  # Executes all SQL statements in the given string. By contrast, the other
  # means of executing queries will only execute the first statement in the
  # string, ignoring all subsequent statements. This will execute each one
  # in turn. Bind parameters cannot be passed to #execute_batch2.
  #
  # If a query is made, all values will be returned as strings.
  # If no query is made, an empty array will be returned.
  #
  # Because all values except for 'NULL' are returned as strings,
  # a block can be passed to parse the values accordingly.
  #
  # See also #execute_batch for additional ways of
  # executing statements.
  def execute_batch2(sql, &block); end

  def extended_result_codes=(_arg0); end

  # Returns the filename for the database named +db_name+.  +db_name+ defaults
  # to "main".  Main return `nil` or an empty string if the database is
  # temporary or in-memory.
  def filename(db_name = T.unsafe(nil)); end

  # A convenience method for obtaining the first row of a result set, and
  # discarding all others. It is otherwise identical to #execute.
  #
  # See also #get_first_value.
  def get_first_row(sql, *bind_vars); end

  # A convenience method for obtaining the first value of the first row of a
  # result set, and discarding all other values and rows. It is otherwise
  # identical to #execute.
  #
  # See also #get_first_row.
  def get_first_value(sql, *bind_vars); end

  def interrupt; end
  def last_insert_row_id; end
  def load_extension(_arg0); end

  # Returns a Statement object representing the given SQL. This does not
  # execute the statement; it merely prepares the statement for execution.
  #
  # The Statement can then be executed using Statement#execute.
  def prepare(sql); end

  # This is a convenience method for creating a statement, binding
  # parameters to it, and calling execute:
  #
  #   result = db.query( "select * from foo where a=?", [5])
  #   # is the same as
  #   result = db.prepare( "select * from foo where a=?" ).execute( 5 )
  #
  # You must be sure to call +close+ on the ResultSet instance that is
  # returned, or you could have problems with locks on the table. If called
  # with a block, +close+ will be invoked implicitly when the block
  # terminates.
  def query(sql, bind_vars = T.unsafe(nil), *args); end

  # Returns +true+ if the database has been open in readonly mode
  # A helper to check before performing any operation
  #
  # @return [Boolean]
  def readonly?; end

  # A boolean that indicates whether rows in result sets should be returned
  # as hashes or not. By default, rows are returned as arrays.
  def results_as_hash; end

  # A boolean that indicates whether rows in result sets should be returned
  # as hashes or not. By default, rows are returned as arrays.
  def results_as_hash=(_arg0); end

  # Rolls the current transaction back. If there is no current transaction,
  # this will cause an error to be raised. This returns +true+, in order
  # to allow it to be used in idioms like
  # <tt>abort? and rollback or commit</tt>.
  def rollback; end

  def total_changes; end
  def trace(*_arg0); end

  # Begins a new transaction. Note that nested transactions are not allowed
  # by SQLite, so attempting to nest a transaction will result in a runtime
  # exception.
  #
  # The +mode+ parameter may be either <tt>:deferred</tt> (the default),
  # <tt>:immediate</tt>, or <tt>:exclusive</tt>.
  #
  # If a block is given, the database instance is yielded to it, and the
  # transaction is committed when the block terminates. If the block
  # raises an exception, a rollback will be performed instead. Note that if
  # a block is given, #commit and #rollback should never be called
  # explicitly or you'll get an error when the block terminates.
  #
  # If a block is not given, it is the caller's responsibility to end the
  # transaction explicitly, either by calling #commit, or by calling
  # #rollback.
  def transaction(mode = T.unsafe(nil)); end

  def transaction_active?; end

  # Translates a +row+ of data from the database with the given +types+
  def translate_from_db(types, row); end

  # Return the type translator employed by this database instance. Each
  # database instance has its own type translator; this allows for different
  # type handlers to be installed in each instance without affecting other
  # instances. Furthermore, the translators are instantiated lazily, so that
  # if a database does not use type translation, it will not be burdened by
  # the overhead of a useless type translator. (See the Translator class.)
  def translator; end

  def type_translation; end
  def type_translation=(value); end

  private

  def db_filename(_arg0); end
  def define_aggregator2(_arg0, _arg1); end
  def disable_quirk_mode; end
  def exec_batch(_arg0, _arg1); end
  def make_type_translator(should_translate); end
  def open16(_arg0); end
  def open_v2(_arg0, _arg1, _arg2); end

  class << self
    def open(*_arg0); end

    # Quotes the given string, making it safe to use in an SQL statement.
    # It replaces all instances of the single-quote character with two
    # single-quote characters. The modified string is returned.
    def quote(string); end
  end
end

# A helper class for dealing with custom functions (see #create_function,
# #create_aggregate, and #create_aggregate_handler). It encapsulates the
# opaque function object that represents the current invocation. It also
# provides more convenient access to the API functions that operate on
# the function object.
#
# This class will almost _always_ be instantiated indirectly, by working
# with the create methods mentioned above.
class SQLite3::Database::FunctionProxy
  # Create a new FunctionProxy that encapsulates the given +func+ object.
  # If context is non-nil, the functions context will be set to that. If
  # it is non-nil, it must quack like a Hash. If it is nil, then none of
  # the context functions will be available.
  #
  # @return [FunctionProxy] a new instance of FunctionProxy
  def initialize; end

  # Returns the value with the given key from the context. This is only
  # available to aggregate functions.
  def [](key); end

  # Sets the value with the given key in the context. This is only
  # available to aggregate functions.
  def []=(key, value); end

  # (Only available to aggregate functions.) Returns the number of rows
  # that the aggregate has processed so far. This will include the current
  # row, and so will always return at least 1.
  def count; end

  # Returns the value of attribute result.
  def result; end

  # Sets the attribute result
  #
  # @param value the value to set the attribute result to.
  def result=(_arg0); end

  # Set the result of the function to the given error message.
  # The function will then return that error.
  def set_error(error); end
end

SQLite3::Database::NULL_TRANSLATOR = T.let(T.unsafe(nil), Proc)
class SQLite3::EmptyException < ::SQLite3::Exception; end

class SQLite3::Exception < ::StandardError
  # A convenience for accessing the error code for this exception.
  def code; end
end

class SQLite3::FormatException < ::SQLite3::Exception; end
class SQLite3::FullException < ::SQLite3::Exception; end
class SQLite3::IOException < ::SQLite3::Exception; end
class SQLite3::InternalException < ::SQLite3::Exception; end
class SQLite3::InterruptException < ::SQLite3::Exception; end
class SQLite3::LockedException < ::SQLite3::Exception; end
class SQLite3::MemoryException < ::SQLite3::Exception; end
class SQLite3::MismatchException < ::SQLite3::Exception; end
class SQLite3::MisuseException < ::SQLite3::Exception; end
class SQLite3::NotADatabaseException < ::SQLite3::Exception; end
class SQLite3::NotFoundException < ::SQLite3::Exception; end
class SQLite3::PermissionException < ::SQLite3::Exception; end

# This module is intended for inclusion solely by the Database class. It
# defines convenience methods for the various pragmas supported by SQLite3.
#
# For a detailed description of these pragmas, see the SQLite3 documentation
# at http://sqlite.org/pragma.html.
module SQLite3::Pragmas
  def application_id; end
  def application_id=(integer); end
  def auto_vacuum; end
  def auto_vacuum=(mode); end
  def automatic_index; end
  def automatic_index=(mode); end
  def busy_timeout; end
  def busy_timeout=(milliseconds); end
  def cache_size; end
  def cache_size=(size); end
  def cache_spill; end
  def cache_spill=(mode); end
  def case_sensitive_like=(mode); end
  def cell_size_check; end
  def cell_size_check=(mode); end
  def checkpoint_fullfsync; end
  def checkpoint_fullfsync=(mode); end

  # :yields: row
  def collation_list(&block); end

  # :yields: row
  def compile_options(&block); end

  def count_changes; end
  def count_changes=(mode); end
  def data_version; end

  # :yields: row
  def database_list(&block); end

  def default_cache_size; end
  def default_cache_size=(size); end
  def default_synchronous; end
  def default_synchronous=(mode); end
  def default_temp_store; end
  def default_temp_store=(mode); end
  def defer_foreign_keys; end
  def defer_foreign_keys=(mode); end
  def encoding; end
  def encoding=(mode); end

  # :yields: row
  def foreign_key_check(*table, &block); end

  # :yields: row
  def foreign_key_list(table, &block); end

  def foreign_keys; end
  def foreign_keys=(mode); end
  def freelist_count; end
  def full_column_names; end
  def full_column_names=(mode); end
  def fullfsync; end
  def fullfsync=(mode); end

  # Returns +true+ or +false+ depending on the value of the named pragma.
  def get_boolean_pragma(name); end

  # Return the value of the given pragma.
  def get_enum_pragma(name); end

  # Returns the value of the given pragma as an integer.
  def get_int_pragma(name); end

  # Requests the given pragma (and parameters), and if the block is given,
  # each row of the result set will be yielded to it. Otherwise, the results
  # are returned as an array.
  def get_query_pragma(name, *params, &block); end

  def ignore_check_constraints=(mode); end

  # :yields: row
  def incremental_vacuum(pages, &block); end

  # :yields: row
  def index_info(index, &block); end

  # :yields: row
  def index_list(table, &block); end

  # :yields: row
  def index_xinfo(index, &block); end

  # :yields: row
  def integrity_check(*num_errors, &block); end

  def journal_mode; end
  def journal_mode=(mode); end
  def journal_size_limit; end
  def journal_size_limit=(size); end
  def legacy_file_format; end
  def legacy_file_format=(mode); end
  def locking_mode; end
  def locking_mode=(mode); end
  def max_page_count; end
  def max_page_count=(size); end
  def mmap_size; end
  def mmap_size=(size); end
  def page_count; end
  def page_size; end
  def page_size=(size); end
  def parser_trace=(mode); end
  def query_only; end
  def query_only=(mode); end

  # :yields: row
  def quick_check(*num_errors, &block); end

  def read_uncommitted; end
  def read_uncommitted=(mode); end
  def recursive_triggers; end
  def recursive_triggers=(mode); end
  def reverse_unordered_selects; end
  def reverse_unordered_selects=(mode); end
  def schema_cookie; end
  def schema_cookie=(cookie); end
  def schema_version; end
  def schema_version=(version); end
  def secure_delete; end
  def secure_delete=(mode); end

  # Sets the given pragma to the given boolean value. The value itself
  # may be +true+ or +false+, or any other commonly used string or
  # integer that represents truth.
  def set_boolean_pragma(name, mode); end

  # Set the value of the given pragma to +mode+. The +mode+ parameter must
  # conform to one of the values in the given +enum+ array. Each entry in
  # the array is another array comprised of elements in the enumeration that
  # have duplicate values. See #synchronous, #default_synchronous,
  # #temp_store, and #default_temp_store for usage examples.
  #
  # @raise [Exception]
  def set_enum_pragma(name, mode, enums); end

  # Set the value of the given pragma to the integer value of the +value+
  # parameter.
  def set_int_pragma(name, value); end

  def short_column_names; end
  def short_column_names=(mode); end
  def shrink_memory; end
  def soft_heap_limit; end
  def soft_heap_limit=(mode); end

  # :yields: row
  def stats(&block); end

  def synchronous; end
  def synchronous=(mode); end

  # Returns information about +table+.  Yields each row of table information
  # if a block is provided.
  def table_info(table); end

  def temp_store; end
  def temp_store=(mode); end
  def threads; end
  def threads=(count); end
  def user_cookie; end
  def user_cookie=(cookie); end
  def user_version; end
  def user_version=(version); end
  def vdbe_addoptrace=(mode); end
  def vdbe_debug=(mode); end
  def vdbe_listing=(mode); end
  def vdbe_trace; end
  def vdbe_trace=(mode); end
  def wal_autocheckpoint; end
  def wal_autocheckpoint=(mode); end
  def wal_checkpoint; end
  def wal_checkpoint=(mode); end
  def writable_schema=(mode); end

  private

  # Since SQLite 3.3.8, the table_info pragma has returned the default
  # value of the row as a quoted SQL value. This method essentially
  # unquotes those values.
  def tweak_default(hash); end

  # Compares two version strings
  def version_compare(v1, v2); end
end

# The enumeration of valid auto vacuum modes.
SQLite3::Pragmas::AUTO_VACUUM_MODES = T.let(T.unsafe(nil), Array)

# The list of valid encodings.
SQLite3::Pragmas::ENCODINGS = T.let(T.unsafe(nil), Array)

# The list of valid journaling modes.
SQLite3::Pragmas::JOURNAL_MODES = T.let(T.unsafe(nil), Array)

# The list of valid locking modes.
SQLite3::Pragmas::LOCKING_MODES = T.let(T.unsafe(nil), Array)

# The enumeration of valid synchronous modes.
SQLite3::Pragmas::SYNCHRONOUS_MODES = T.let(T.unsafe(nil), Array)

# The enumeration of valid temp store modes.
SQLite3::Pragmas::TEMP_STORE_MODES = T.let(T.unsafe(nil), Array)

# The list of valid WAL checkpoints.
SQLite3::Pragmas::WAL_CHECKPOINTS = T.let(T.unsafe(nil), Array)

class SQLite3::ProtocolException < ::SQLite3::Exception; end
class SQLite3::RangeException < ::SQLite3::Exception; end
class SQLite3::ReadOnlyException < ::SQLite3::Exception; end

# The ResultSet object encapsulates the enumerability of a query's output.
# It is a simple cursor over the data that the query returns. It will
# very rarely (if ever) be instantiated directly. Instead, clients should
# obtain a ResultSet instance via Statement#execute.
class SQLite3::ResultSet
  include ::Enumerable

  # Create a new ResultSet attached to the given database, using the
  # given sql text.
  #
  # @return [ResultSet] a new instance of ResultSet
  def initialize(db, stmt); end

  # Closes the statement that spawned this result set.
  # <em>Use with caution!</em> Closing a result set will automatically
  # close any other result sets that were spawned from the same statement.
  def close; end

  # Queries whether the underlying statement has been closed or not.
  #
  # @return [Boolean]
  def closed?; end

  # Returns the names of the columns returned by this result set.
  def columns; end

  # Required by the Enumerable mixin. Provides an internal iterator over the
  # rows of the result set.
  def each; end

  # Provides an internal iterator over the rows of the result set where
  # each row is yielded as a hash.
  def each_hash; end

  # Query whether the cursor has reached the end of the result set or not.
  #
  # @return [Boolean]
  def eof?; end

  # Obtain the next row from the cursor. If there are no more rows to be
  # had, this will return +nil+. If type translation is active on the
  # corresponding database, the values in the row will be translated
  # according to their types.
  #
  # The returned value will be an array, unless Database#results_as_hash has
  # been set to +true+, in which case the returned value will be a hash.
  #
  # For arrays, the column names are accessible via the +fields+ property,
  # and the column types are accessible via the +types+ property.
  #
  # For hashes, the column names are the keys of the hash, and the column
  # types are accessible via the +types+ property.
  def next; end

  # Return the next row as a hash
  def next_hash; end

  # Reset the cursor, so that a result set which has reached end-of-file
  # can be rewound and reiterated.
  def reset(*bind_params); end

  # Returns the types of the columns returned by this result set.
  def types; end
end

class SQLite3::ResultSet::ArrayWithTypes < ::Array
  # Returns the value of attribute types.
  def types; end

  # Sets the attribute types
  #
  # @param value the value to set the attribute types to.
  def types=(_arg0); end
end

class SQLite3::ResultSet::ArrayWithTypesAndFields < ::Array
  def fields; end

  # Sets the attribute fields
  #
  # @param value the value to set the attribute fields to.
  def fields=(_arg0); end

  def types; end

  # Sets the attribute types
  #
  # @param value the value to set the attribute types to.
  def types=(_arg0); end
end

# The class of which we return an object in case we want a Hash as
# result.
class SQLite3::ResultSet::HashWithTypesAndFields < ::Hash
  def [](key); end
  def fields; end

  # Sets the attribute fields
  #
  # @param value the value to set the attribute fields to.
  def fields=(_arg0); end

  def types; end
  def types=(_arg0); end
end

class SQLite3::SQLException < ::SQLite3::Exception; end
SQLite3::SQLITE_VERSION = T.let(T.unsafe(nil), String)
SQLite3::SQLITE_VERSION_NUMBER = T.let(T.unsafe(nil), Integer)
class SQLite3::SchemaChangedException < ::SQLite3::Exception; end

# A statement represents a prepared-but-unexecuted SQL query. It will rarely
# (if ever) be instantiated directly by a client, and is most often obtained
# via the Database#prepare method.
class SQLite3::Statement
  include ::Enumerable

  def initialize(_arg0, _arg1); end

  # Returns true if the statement is currently active, meaning it has an
  # open result set.
  #
  # @return [Boolean]
  def active?; end

  def bind_param(_arg0, _arg1); end
  def bind_parameter_count; end

  # Binds the given variables to the corresponding placeholders in the SQL
  # text.
  #
  # See Database#execute for a description of the valid placeholder
  # syntaxes.
  #
  # Example:
  #
  #   stmt = db.prepare( "select * from table where a=? and b=?" )
  #   stmt.bind_params( 15, "hello" )
  #
  # See also #execute, #bind_param, Statement#bind_param, and
  # Statement#bind_params.
  def bind_params(*bind_vars); end

  def clear_bindings!; end
  def close; end
  def closed?; end
  def column_count; end
  def column_decltype(_arg0); end
  def column_name(_arg0); end

  # Return an array of the column names for this statement. Note that this
  # may execute the statement in order to obtain the metadata; this makes it
  # a (potentially) expensive operation.
  def columns; end

  def database_name(_arg0); end
  def done?; end
  def each; end

  # Execute the statement. This creates a new ResultSet object for the
  # statement's virtual machine. If a block was given, the new ResultSet will
  # be yielded to it; otherwise, the ResultSet will be returned.
  #
  # Any parameters will be bound to the statement using #bind_params.
  #
  # Example:
  #
  #   stmt = db.prepare( "select * from table" )
  #   stmt.execute do |result|
  #     ...
  #   end
  #
  # See also #bind_params, #execute!.
  #
  # @yield [@results]
  def execute(*bind_vars); end

  # Execute the statement. If no block was given, this returns an array of
  # rows returned by executing the statement. Otherwise, each row will be
  # yielded to the block.
  #
  # Any parameters will be bound to the statement using #bind_params.
  #
  # Example:
  #
  #   stmt = db.prepare( "select * from table" )
  #   stmt.execute! do |row|
  #     ...
  #   end
  #
  # See also #bind_params, #execute.
  def execute!(*bind_vars, &block); end

  # Performs a sanity check to ensure that the statement is not
  # closed. If it is, an exception is raised.
  def must_be_open!; end

  # This is any text that followed the first valid SQL statement in the text
  # with which the statement was initialized. If there was no trailing text,
  # this will be the empty string.
  def remainder; end

  def reset!; end
  def step; end

  # Return an array of the data types for each column in this statement. Note
  # that this may execute the statement in order to obtain the metadata; this
  # makes it a (potentially) expensive operation.
  def types; end

  private

  # A convenience method for obtaining the metadata about the query. Note
  # that this will actually execute the SQL, which means it can be a
  # (potentially) expensive operation.
  def get_metadata; end
end

class SQLite3::TooBigException < ::SQLite3::Exception; end

# The Translator class encapsulates the logic and callbacks necessary for
# converting string data to a value of some specified type. Every Database
# instance may have a Translator instance, in order to assist in type
# translation (Database#type_translation).
#
# Further, applications may define their own custom type translation logic
# by registering translator blocks with the corresponding database's
# translator instance (Database#translator).
class SQLite3::Translator
  # Create a new Translator instance. It will be preinitialized with default
  # translators for most SQL data types.
  #
  # @return [Translator] a new instance of Translator
  def initialize; end

  # Add a new translator block, which will be invoked to process type
  # translations to the given type. The type should be an SQL datatype, and
  # may include parentheses (i.e., "VARCHAR(30)"). However, any parenthetical
  # information is stripped off and discarded, so type translation decisions
  # are made solely on the "base" type name.
  #
  # The translator block itself should accept two parameters, "type" and
  # "value". In this case, the "type" is the full type name (including
  # parentheses), so the block itself may include logic for changing how a
  # type is translated based on the additional data. The "value" parameter
  # is the (string) data to convert.
  #
  # The block should return the translated value.
  def add_translator(type, &block); end

  # Translate the given string value to a value of the given type. In the
  # absence of an installed translator block for the given type, the value
  # itself is always returned. Further, +nil+ values are never translated,
  # and are always passed straight through regardless of the type parameter.
  def translate(type, value); end

  private

  # Register the default translators for the current Translator instance.
  # This includes translators for most major SQL data types.
  def register_default_translators; end

  # A convenience method for working with type names. This returns the "base"
  # type name, without any parenthetical data.
  def type_name(type); end
end

class SQLite3::UnsupportedException < ::SQLite3::Exception; end
SQLite3::VERSION = T.let(T.unsafe(nil), String)

class SQLite3::Value
  # @return [Value] a new instance of Value
  def initialize(db, handle); end

  # Returns the value of attribute handle.
  def handle; end

  def length(utf16 = T.unsafe(nil)); end

  # @return [Boolean]
  def null?; end

  def to_blob; end
  def to_f; end
  def to_i; end
  def to_int64; end
  def to_s(utf16 = T.unsafe(nil)); end
  def type; end
end

module SQLite3::VersionProxy; end
SQLite3::VersionProxy::MAJOR = T.let(T.unsafe(nil), Integer)
SQLite3::VersionProxy::MINOR = T.let(T.unsafe(nil), Integer)
SQLite3::VersionProxy::STRING = T.let(T.unsafe(nil), String)
SQLite3::VersionProxy::TINY = T.let(T.unsafe(nil), Integer)

# :beta-tag:
SQLite3::VersionProxy::VERSION = T.let(T.unsafe(nil), String)

# Allows Writing of '100'.to_money for +String+ types
# Excess characters will be discarded
#   '100'.to_money => #<Money @cents=10000>
#   '100.37'.to_money => #<Money @cents=10037>
class String
  include ::Comparable

  def to_blob; end
end

String::BLANK_RE = T.let(T.unsafe(nil), Regexp)
String::ENCODED_BLANKS = T.let(T.unsafe(nil), Concurrent::Map)
