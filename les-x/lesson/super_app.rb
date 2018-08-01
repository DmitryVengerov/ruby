class SuperApp

  def initialize
    puts "Create app"
  end

  def call env
    p self.object_id
    [ code, headers, body ]
  end


  private

  def code
    200
  end

  def headers
    { "App" => "SuperApp" }
  end

  def body
    response = []
    template = File.open('index.html'){ |file| file.read }
    response.push template
  end

end