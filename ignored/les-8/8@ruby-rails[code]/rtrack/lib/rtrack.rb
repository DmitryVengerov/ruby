require 'yaml'
require 'json'
require 'timeout'
require 'workflow'
require_relative 'rtrack/data'
require_relative 'rtrack/track/states'
require_relative 'rtrack/track'
require_relative 'rtrack/track_collection'

module RTrack

  ERROR_CLASSES = [
    :NoDataReceivedError
  ]
  ERROR_CLASSES.each{ |err| const_set err, Class.new(StandardError) }

end


track = RTrack::Track.find "global_id", 14158660
puts track.current_state
track.good!

RTrack::TrackCollection.save!

RTrack::TrackCollection.load!
track = RTrack::Track.find 'global_id', 14158660
puts track.current_state