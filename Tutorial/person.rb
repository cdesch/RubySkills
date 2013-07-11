class Person
  attr_accessor :firstName, :lastName

  def initialize(firstName, lastName)
    @firstName = firstName
    @lastName = lastName
  end

  def to_s
    @lastName + ", " + @firstName
  end
end