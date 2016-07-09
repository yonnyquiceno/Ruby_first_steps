# V1=Vendedor.new('Roberto', 'Meneses', 1234, 111222333)
# C1=Comprador.new('Armando', 'Barrera', 1111, 2222, 500000, V1)
# P1=Producto.new('silla', 40, 40000, 60000)
class Persona
  attr_accessor :nombres, :apellidos, :cedula, :telefono, :lista_productos

  def initialize(nombres, apellidos, cedula, telefono)
    @nombres = nombres
    @apellidos = apellidos
    @cedula = cedula
    @telefono = telefono
    @lista_productos = []
  end
end

class Vendedor < Persona
  attr_accessor :ganado, :productos

  def initialize(nombres, apellidos, cedula, telefono)
    super(nombres, apellidos, cedula, telefono)
    @ganado = 0
    @productos=[]
  end
end

class Comprador < Persona
  attr_accessor :comprados, :tope_de_dinero, :gastado, :vendedor

  def initialize(nombres, apellidos, cedula, telefono, tope_de_dinero)
    super(nombres, apellidos, cedula, telefono)

    @tope_de_dinero = tope_de_dinero
    @vendedor = vendedor
    @gastado = 0


  end

  def buscar_producto(nombre_producto)
    productos = Keeper.get_productos

    for i in 0..productos.size
      if productos[i].include?(nombre_producto)
        indice_producto=i
        break
      end
    end

    productos[indice_producto] # select selecciona los elementos que cumplen la condicion y los retorna en un array

  end

  def comprar(producto, cantidad)
    producto = buscar_producto(producto)
    producto[1] = producto[1] - cantidad
    @gastado += (producto[3] * cantidad)
    print 'no tiene mas dinero' if @gastado > @tope_de_dinero
    @vendedor.ganado = @vendedor.ganado + (producto[3] * cantidad) - (producto[2]* cantidad)
    @vendedor.lista_productos << "#{cantidad} #{producto[0]}(s)"
    @lista_productos.push("#{cantidad} #{producto[0]}(s)")
  end

end

class Producto
  attr_accessor :nombre, :stock, :precio_base, :precio_venta
  def initialize(nombre, stock, precio_base, precio_venta)
    @nombre = nombre
    @stockini = stock
    @precio_base = precio_base
    @precio_venta = precio_venta
    Keeper.set_productos([@nombre, @stockini, @precio_base, @precio_venta])
  end
  def self.get_productos
    @@productos
  end

  def stock
    return Keeper.get_productos
  end

end

class Keeper
  def initialize()
    @@productos=[]
  end
  def self.set_productos(producto)
    @@productos << producto
  end
  def self.get_productos
    @@productos
  end
end

# export PS1="\w\[\033[0;36m\]: "
