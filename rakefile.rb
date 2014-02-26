#!/usr/bin/env rake
require File.expand_path('../config/db', __FILE__)

namespace :db do 
	task :migrate do
		Sequel.extension :migration
		Sequel::Migrator.run(DB, DB_MIGRATION_PATH)
	end

	task :is_migrated do
		Sequel.extension :migration
		Sequel::Migrator.check_current(DB, DB_MIGRATION_PATH)
		puts "Yes"
	end	

	task :seed do
		require File.expand_path('../config/seed', __FILE__)
	end	
	
	task :server do 
		require "lattice/server"
		Lattice::Server.new("0.0.0.0", 9292, root: Lattice.root).run
	end
end
