class Iteradores
  def self.exmp_upto(desde, hasta)
    desde.upto(hasta) { |x| print "-#{x}"}
  end

  def self.exmp_step(desde, paso, hasta)
    desde.step(hasta, paso) { |x| puts Math.cos(x) } # de 0 hasta pi por pasaos de 0.1 mostrar el coseno del iterador
  end

  def self.exmp_collect
    nums = [1, 2, 3]
    squares = nums.collect { |x| x * x } # devuelve los cuadrados de nums en un array sin necesidad de crearlo con antelacion
  end

  def self.exmp_collect_capitalize
    names = %w(ana carlos juan esteban)
    capital = names.collect{|x| x.capitalize} # si pongo ! al final del body del bloque me cambia names ; collect equivalente a map en otros lenguajes
    # capital = names.collect(&:capitalize)  metodo alternativo
    return capital
  end

  def self.exmp_select
    pares = (1..10).select { |x| x % 2 == 0 } # select selecciona los elementos que cumplen la condicion y los retorna en un array
    return pares
  end

  def self.exmp_reject
    impares = (1..10).reject { |x| x % 2 == 0 } # reject selecciona los elementos que cumplen la condicion, los rechaza y retorna en un array los que no cumplen
  end

  def self.exmp_inject
    print 'exmp 1,2 or 3 ?'
    retrn = gets.chomp.to_i
    nums = [2, 5, 4, 3]
    sum = nums.inject { |sum,x| sum + x } # exmp 1
    prod = nums.inject(1){ |p,x| p*x } # exmp 2  en este caso comienza p en 1
    max = nums.inject { |m,x| m > x ? m : x } # exmp 3 busca el maximo
    case retrn
    when 1
      puts " la suma es #{sum}"
    when 2
      puts " la productoria es #{prod}"
    when 3
      puts " el maximo es #{max}"
    end
  end
end
