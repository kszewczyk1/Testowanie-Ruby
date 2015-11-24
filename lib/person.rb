class Person

  @firstname = nil
  @lastname = nil
  @age = nil
  @height = nil

  def initialize (firstname, lastname, age, height)
    @firstname = firstname
    @lastname = lastname
    @age = age
    @height = height
  end

  def getFirstname
    return @firstname
  end

  def getLastname
    return @lastname
  end

  def getAge
    return @age
  end

  def getHeight
    return @height
  end

  def setFirstname (firstname)
    @firstname = firstname
  end

  def setLastname (lastname)
    @lastname = lastname
  end

  def setAge (age)
    @age = age
  end

  def setHeight (height)
    @height = height
  end

  def getPerson
    return @firstname, @lastname, @age, @height
  end
end