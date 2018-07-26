require 'singleton'

module Samer

  class Version

    include Singleton

    MAJOR = '1'
    MINOR = '0'
    PATCH = '5'

    def current_version
      [ MAJOR, MINOR, PATCH ].join '.'
    end

  end

  def self.version
    Version.instance.current_version
  end

end

