## Samer. Find the similar one

Samer is a simple gem, that helps you to find similar user by their recommendations.

This is the source data example (in lib/data/users.yml):

    # Electronic music
    john:
      'trance': 5
      'ambient': 4
      'chillout': 4
      'rock': 3
      'pop': 1
      'heavy-metal': 1
    # Pop, ballad
    jane:
      'trance': 1
      'ambient': 2
      'chillout': 3
      'ballad': 4
      'pop': 5
    # Rock
    jake:
      'rock': 5
      'heavy-metal': 4
      'pop': 1
      'ballad': 2
      'trance': 1
    # Pop, ballad
    jasmine:
      'pop': 5
      'ballad': 4
      'heavy-metal': 1
      'rock': 2
      'trance': 1
      'ambient': 2
    # Chillout, ambient, ballad
    johanna:
      'ambient': 5
      'ballad': 3
      'chillout': 4
      'pop': 2
      'rock': 2
      'heavy-metal': 0

Samer provides Samer#find_for method to do the work:

    Samer.find_for "johanna"
    # => john (Name of the similar user)
    # => 0.3333333333333333
    #
    # Or with the command
    samer johanna
    # => john
    # => 0.3333333333333333