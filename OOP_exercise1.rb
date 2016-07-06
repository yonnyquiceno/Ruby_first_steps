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
  attr_accessor :ganado

  def initialize(nombres, apellidos, cedula, telefono)
    super(nombres, apellidos, cedula, telefono)
    @ganado = 0
  end
end

class Comprador < Persona
  attr_accessor :comprados, :tope_de_dinero, :gastado

  def initialize(nombres, apellidos, cedula, telefono, tope_de_dinero, vendedor)
    super(nombres, apellidos, cedula, telefono)

    @tope_de_dinero = tope_de_dinero
    @vendedor = vendedor
    @gastado = 0
  end

  def comprar(producto, cantidad)
    producto.stock = producto.stock - cantidad
    @gastado += (producto.precio_venta * cantidad)
    @tope_de_dinero -= (producto.precio_venta * cantidad)
    @vendedor.ganado = @vendedor.ganado + (producto.precio_venta * cantidad) - (producto.precio_base * cantidad)
    @vendedor.lista_productos << "#{cantidad} #{producto.nombre}(s)"
    @lista_productos.push("#{cantidad} #{producto.nombre}(s)")
  end
end

class Producto
  attr_accessor :nombre, :stock, :precio_base, :precio_venta
  def initialize(nombre, stock, precio_base, precio_venta)
    @nombre = nombre
    @stock = stock
    @precio_base = precio_base
    @precio_venta = precio_venta
  end
end
# export PS1="\w\[\033[0;36m\]: "
