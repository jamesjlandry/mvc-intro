require_relative './config/environment'
use ApplicationController
run Sinatra::Application
use Rack::MethodOverride