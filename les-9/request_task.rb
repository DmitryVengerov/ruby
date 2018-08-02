require 'Rack'

request = Rack::Request.new(env)
request.user_agent


request.ip

request.base_url

response = Rack::Response.new(env)
response.initialize(body=[], status = 200, header ={}) { |_self| ...}

response.finish

response.redirect('*.html')

content_type = Rack::ContentType.new
content_type.initialize(app, content_type = "text/html")

etag = Rack::ETag.new(env)
etag.initialize(app, no_cache_control = nil, cache_control = DAFAULT_CACHE_CONTROL)
