require 'json'

class PersonCollection

  include Enumerable

  attr_reader :persons

  def each &block

    # @persons.each{ |person| yield person}
     # block
    @persons.each &block
  end

  private

  def initialize
    #p DATA.read
    @persons = parse! DATA.read
  end


  def parse! data
    JSON.parse(data).map! do |record|
      Person.new record
    end
  end

end


class Person

  attr_reader :name, :age, :gender

  def initialize record
    @name   = record['name']
    @age    = record['age']
    @gender = record['gender']
  end

  def to_s
    "#{@name.capitalize} [#{@gender}], age: #{@age}"
  end
end

colletion = PersonCollection.new
# p colletion.persons
#colletion.each{ |person| puts person }
p colletion.reject{ |person| person.age < 40}

__END__
[
  {"name":"jack","age":23,"gender":"M"},
  {"name":"john","age":15,"gender":"M"},
  {"name":"week","age":47,"gender":"F"}
]
