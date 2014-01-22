require 'pathname'
gemfile = ENV['BUNDLE_GEMFILE'] || File.expand_path('../../Gemfile', __FILE__)
require 'bundler/setup' if File.exists?(gemfile)

Lattice.root = Pathname.new(File.expand_path('../..', __FILE__))
$LOAD_PATH.unshift Lattice.root.join('app').to_s

require 'webmachine'
require 'active_support/core_ext'
require 'webmachine/actionview'

Webmachine::ActionView.configure do |config|
  config.view_paths = [File.expand_path("../../app/views", __FILE__)]
  config.handlers = [:erb]
end

require_relative './db'

Dir['app/actors/*.rb'].each {|file| require file }
Dir['app/models/*.rb'].each {|file| require file }
Dir['app/resources/*.rb'].each {|file| require file }
