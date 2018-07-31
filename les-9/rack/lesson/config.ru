# app = Proc.new do |env|
#   [ 200, { 'Content-Type' => 'text/html' }, ["Hello, Rack!!!!!!!\n"] ]
# end

require './app'

use Rack::Reloader
run App.new