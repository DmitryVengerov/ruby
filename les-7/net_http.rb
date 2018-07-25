require 'net/http'

class RunningTrack

  DATA_URL = "http://data.mos.ru/datasets/download/899"
  API_DATA_URL = "http://api.data.mos.ru/v1/datasets/899/rows"
  DAL_GASO = 'https://api.dalgaso.ru/api/v1/6s7pTPw89/offers/vzr'
  def self.import
    uri = URI(API_DATA_URL)
    Net::HTTP.get uri
  end
end

puts RunningTrack.import
