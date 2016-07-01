class Condicionales
  def self.salario_integral
    print 'Ingrese su salario: '
    salario = gets.chomp.to_f
    es = if salario > 8_962_915
           'integral'
         else
           'no integral'
         end
    print "su salario de #{salario} es #{es} "
  end
end

class Ciclos
  def self.ciclo_while
    money = 100
    has_money = true
    while has_money
      puts 'Keep buying !'
      money -= 10
      has_money = false if money == 0
    end
  end

  def self.ciclo_for
    x = [1, 2, 3, 4, 5]
    for i in x do
      puts i
    end
    puts 'Done!'
  end
end

class Ejercicio
  def self.pares
    conteo = Array.new(101) { |i| i + 1 }
    i = 0
    pares = 0
    while conteo[i] < 101
      pares += 1 if conteo[i].even?
      i += 1
  end
    pares
  end

  def self.primos
    conteo = Array.new(100) { |i| i + 1 }
    primos = 0
    for i in 2..100
      j = 0
      divisible = 0
      while conteo[j] < i
        if i % conteo[j] == 0
          divisible += 1
          break if divisible > 1
        end
        j += 1
      end
      if divisible == 1
        puts "el numero #{i} es primo"
        primos += 1
      end
    end
    primos
  end
end
