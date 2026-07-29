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

class Cat < Animal
  def speak
    "ニャー！"
  end
end

animals = [Dog.new, Cat.new]

animals.each do |a|
  puts a.speak
end
# => ワンワン！
# => ニャー！