require_relative 'lib/weather.rb'

class WeatherApp
  def initialize
    puts "Create app"
    @city_name = 'Moscow'
  end

  def call env
    @request = Rack::Request.new env
    # city = @request.params['city']
    @city_name = @request.url.split('=')[1] unless @request.url.split('=').[1] = nil
    [ code, headers, body ]
  end

  private

  def code
    200
  end

  def headers
    {"App" => "WeatherApp"}
  end

  def body
    response = []

    content = Wather.show(@city_name)
    save! constent
    template = load!
    response.push template
  end

  def save! content
    File.open('index.html','w'){ |file| file.puts content }
  end

  def load!
    File.open('index.html','r'){ |file| file.read }

  end

end
