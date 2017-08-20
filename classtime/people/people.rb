class People
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def greeting
    "Hi, my name is #{self.name}"
  end
end

class Student < People

  def learn
    "I get it!"
  end

end

class Teacher < People

  def teach
    "Everything in Ruby is an Object."
  end

end




nadia = Teacher.new("Nadia")
puts nadia.greeting

chris = Student.new("Chris")
puts chris.greeting

puts nadia.teach
puts chris.learn

puts chris.teach #breaks because the Student class has no .teach method defined.
