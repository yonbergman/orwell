require 'rubygems'
require 'sequel'
DB_NAME = 'config/database.sqlite3'
DB_MIGRATION_PATH = 'config/migrations'
DB = Sequel.sqlite(DB_NAME)