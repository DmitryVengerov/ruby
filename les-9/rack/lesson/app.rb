class App

  def call env
    p env
    [ status, headers, body ]
  end

  def status
    200
  end

  def headers
    { 'Content-Type' => 'text/html' }
  end

  def body
    ["Hello, Rack!\n"]
  end

end