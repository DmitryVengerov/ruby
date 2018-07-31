require 'rack'
require_relative 'super_app'

# 1. #call
# 2. # Принимает параметры в переменную окружения (env)
# 3. Возвращает корректный ответ
# app = Proc.new do |env|
#   [ 200, {"Content-Type" => "text/html"}, ["Hello, Rack!\n"] ] # each
# end

# app = Proc.new do |env|
#   p env
#   [ 200, {}, ["Hello, Rack!\n"] ]
# end


# Rack::Handler::WEBrick.run app

# class SuperApp
#
#   def initialize
#     puts "Create app"
#   end
#
#   def call env
# #     @request  = Rack::Request.new env
# #     @response = Rack::Response.new
# #     p @request.params
# #     p @request.user_agent
# #     p @request.ip
# #     p @request.url
#     # [ 200, {}, ["Hello, Rack!\n"] ]
#     send_response
#   end
#
# #   def body
# #     "Hey, I'm on Rack!\n"
# #   end
#
#   private
#
#   def send_response
#     [ 200, {}, ["Hello, Rack!\n"] ]
# #     # @response['Content-Type'] = 'text/html'
# #     # if body
# #     #   @response.write body
# #     # else
# #     #   @response.redirect('/info')
# #     # end
# #     @response.write body
# #     @response.finish
#   end
#
# end

# Rack::Handler::WEBrick.run SuperApp.new

# builder = Rack::Builder.new
# builder.run SuperApp.new
# builder.use Rack::Runtime

# builder = Rack::Builder.new do
#   run SuperApp.new
#   use Rack::Runtime
# end

info = Proc.new do |env|
  [ 200, {}, ["Created and running on Rack.\n"] ]
end

builder = Rack::Builder.new do

  map '/' do
#     # use Rack::Reloader
    run SuperApp.new
    # run RootController
  end

  map '/info' do
    run info
    # run InfoController
  end

end

Rack::Handler::WEBrick.run builder # app #SuperApp.new # respond_to? :call