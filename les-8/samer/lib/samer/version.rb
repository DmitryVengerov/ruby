require 'singleton'

module samer
  class Version
    include Singleton
    MAJOR = '1'
    MINOR = '0'
    PATCH = '0'

    def current_version
      [MAJOR, MINOR, PATCH].join '.'
    end

  end

  def self.version_update
    Version.instance.current_version
  end
end
