class Condicionales

  def self.salario_integral

    print 'Ingrese su salario: '
    salario=gets.chomp.to_f

    if salario > 8962915
      es = "integral"
      print "su salario de #{salario} es #{es} "
    else
      es="no integral"
      print "su salario de #{salario} es #{es} "
    end

  end

end

class Ciclos

    def self.ciclo_while
          money = 100
            has_money = true
        while has_money do
            puts "Keep buying !"
            money = money - 10
            has_money = false if money == 0
        end
    end


    def self.ciclo_for
        x = [1, 2, 3, 4, 5]
        for i in x do
          puts i
        end
        puts "Done!"
    end

end

class Ejercicio

    def self.pares
        conteo = Array.new(101) {|i| i+1}
        i=0
        pares=0
        while conteo[i] < 101
            if conteo[i]%2 == 0
                pares=pares+1
            end
            i=i+1
      end
        return pares
    end

    def self.primos
        conteo = Array.new(100) {|i| i+1}
        primos=0
        for i in 2..100
            j=0
            divisible=0
            while conteo[j] < i
                if i%conteo[j] == 0
                    divisible=divisible+1
                    break if divisible>1
                end
                j=j+1
            end
            if divisible ==1
                puts "el numero #{i} es primo"
                primos=primos+1
            end
        end
        return primos
    end
end
