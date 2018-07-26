module RTrack
  class Track

    include States

    def initialize track
      @track = track['Cells']
    end

    def self.load! tracks
      @tracks = tracks
    end

    def self.all
      @tracks ||= check_tracks! Data.import
    rescue NoDataReceivedError
      puts "Данных о беговых дорожках не обнаружено."
    end

    def self.find name, value
      all.find do |track|
        track.has? name, value
      end
    end

    def has? name, value
      @track[name] == value
    end

    def to_s
      `echo '#{@track.to_json}' | jq .`
    end


    private

    def self.check_tracks! tracks
      tracks.empty? ? raise(NoDataReceivedError) : tracks
    end

  end
end