require 'open-uri'

module RTrack
  module Data

    TIMEOUT_TIME = 10
    DATA_URL = "http://data.mos.ru/apiproxy/datasets/899/rows"

    def self.import
      Timeout.timeout TIMEOUT_TIME, &fetch
    rescue Timeout::Error
      puts "Превышен лимит (#{TIMEOUT_TIME}с) ожидания получения данных о беговых дорожках."
      []
    end


    def self.fetch
      Proc.new do
        open DATA_URL do |tracks_tempfile|
          tracks = JSON.parse tracks_tempfile.read
          tracks.map{ |track| Track.new track }
        end
      end
    end

  end
end