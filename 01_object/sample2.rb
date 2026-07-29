class Animal
  def speak
    "..."
  end
end

class Dog < Animal
  def speak
    "ワンワン！"
  end
end

dog = Dog.new
puts dog.speak  # => ワンワン！