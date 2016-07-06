class Animal
  def run
    puts "the #{self.class} is running."
  end

  def eat
    puts "the animal is eating."
  end

  def sleep
    puts "the #{self.class is sleeping}."
  end

  def reproduce
    puts "the animal is reproducing."
  end
end

class Lion < Animal
  def roar
    puts "Arrrg..!!"
  end

  def eat(animal)
    puts "the #{self.class} is eating a(n) #{animal.class}."
  end

  def sleep
    puts "the #{self.class is sleeping}."
  end

  def reproduce(female_lion)
    if female_lion.is_a?(Lion)
      puts "Having fun and repopulating earth with lions !"
    else
      puts "I'm i drunk ? #{female_lion.class}"
    end
  end
end

class Rabbit < Animal
  def roar
    puts "Squeak..!!"
  end

  def eat
    puts "the #{self.class} is eating a vegetable."
  end

  def sleep
    puts "the #{self.class is sleeping}." #esta clase sobra porque la clase animal ya la tiene y esta definida igual, podria borrarla simplemente
  end

  def reproduce(female_rabbit)
    if female_rabbit.is_a?(Rabbit)
      puts "Having fun and overpopulating earth with rabbits !"
    else
      puts "I'm i drunk ? #{female_rabbit.class}"
    end
  end
end
