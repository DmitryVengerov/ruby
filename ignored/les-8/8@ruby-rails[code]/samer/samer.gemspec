require_relative 'lib/samer/version'

Gem::Specification.new do |s|
  s.name        = 'samer'
  s.version     = Samer.version
  s.date        = '2015-12-09'
  s.summary     = "Find someone like you!"
  s.description = "A simple gem that finds similar person to you by comparing the music ratings"
  s.authors     = ["Evgeniy Fateev"]
  s.email       = 'spaceflow@gmail.com'

  s.homepage      = 'http://rubygems.org/gems/samer'
  s.license       = 'MIT'

  s.files       = %w{
    lib/samer.rb
    lib/samer/data_provider.rb
    lib/samer/engine.rb
    lib/samer/user.rb
  }
  s.files += Dir['lib/data/*']

  s.executables.push 'samer'
end