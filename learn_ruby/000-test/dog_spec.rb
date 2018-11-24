require 'rspec'
require_relative 'dog'

RSpec.describe Dog do

	subject {Dog.new}

	describe '#bark' do 

		it 'returns the string "Woof!"' do
			dog = Dog.new
			expect(dog.bark).to eql('Woof!')
		end
	end 

	describe '#feed' do
		context 'when the dog is hungry' do
			subject {described_class.new(hunger_level: 7)}
			it 'is no longer hunger' do
				subject.feed
				expect(subject).to_not be_hungry
			end
		end
	end

	describe '#hungry?' do
		context 'when hunger_level is more then 5' do
			# subject позволяет нам иницилизировать класс и использовать его в упращенном виде
			subject {described_class.new(hunger_level: 7)}
			
			it 'returns true' do
				expect(subject.hungry?).to eql(true)
			end	

			it 'returns true if hunger_level is more then 5' do
				expect(subject).to be_hungry
			end		
		end


		context 'when hunger_level is 5 or less' do
			# subject позволяет нам иницилизировать класс и использовать его в упращенном виде
			subject {described_class.new(hunger_level: 5)}

			it 'returns false' do
				expect(subject.hungry?).to eql(false)
			end

			it 'returns false' do
				expect(subject).to_not be_hungry
			end
		end



	end
end