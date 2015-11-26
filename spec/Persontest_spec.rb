require 'rspec'
require_relative '../lib/person'

describe 'Testing Person class' do

  it 'should get initialized first name' do
    person = Person.new('Bogdan','Król',32, 182)
    firstname = person.getFirstname
    puts firstname
  end

  it 'should get initialized last name' do
    person = Person.new('Bogdan','Król',32, 182)
    lastname = person.getLastname
    puts lastname
  end

  it 'should get initialized age' do
    person = Person.new('Bogdan','Król',32, 182)
    age = person.getAge
    puts age
  end

  it 'should get initialized height' do
    person = Person.new('Bogdan','Król',32, 182)
    height = person.getHeight
    puts height
  end

  it 'should set new first name' do
    person = Person.new('Bogdan','Król',32, 182)
    person.setFirstname('Boguś')
    firstname = person.getFirstname
    puts firstname
  end

  it 'should set new last name' do
    person = Person.new('Bogdan','Król',32, 182)
    person.setLastname('Niekról')
    lastname = person.getLastname
    puts lastname
  end

  it 'should set new age' do
    person = Person.new('Bogdan','Król',32, 182)
    person.setAge(23)
    age = person.getAge
    puts age
  end

  it 'should set new height' do
    person = Person.new('Bogdan','Król',32, 182)
    person.setHeight(183)
    height = person.getHeight
    puts height
  end

  it 'should get person informations' do
    person = Person.new('Bogdan','Król',32, 182)
    person1 = person.getPerson
    puts person1
  end
end