require 'net/http'
require 'json'

class Speller

  def self.get url
    uri = URI(url)
    res = Net::HTTP.get uri
    JSON.parse(res)
  end

  def self.postMethod body
    uri = URI('https://speller.yandex.net/services/spellservice.json/checkText')
    res = Net::HTTP.post_form(uri, 'text' => body)
    JSON.parse(res.body)
  end

end

text = "SAVEFRAM HEL"

Speller.get('https://speller.yandex.net/services/spellservice.json/checkText?text=fucj+yoo.+where+arer+y3')
p Speller.postMethod(text)
