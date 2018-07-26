module RTrack
  module TrackCollection

    FILE_PATH = File.expand_path '../data/tracks.yml', __FILE__

    def self.random count = 1
      Track.all.sample count
    end

    def self.save!
      File.open(FILE_PATH, 'w'){ |file| file.write Track.all.to_yaml }
    end

    def self.load!
      Track.load! YAML.load_file(FILE_PATH)
    end

  end
end