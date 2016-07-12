require './persona'
require './vendedor'
require './producto'
require '../modules/comprable'
class Comprador < Persona
  attr_accessor :productos, :dinero, :vendedor
  def initialize(nombre,
                 email,
                 productos,
                 dinero,
                 vendedor)
    super(nombre, email)
    @productos = []
    @dinero = dinero
    @vendedor = vendedor
  end

  def comprar(nombre_producto, cantidad)
    producto = search_product(nombre_producto)[0]
    if producto.stock_disponible?(cantidad) == false
      puts "producto no disponible"
    else
    pay_product(producto, cantidad)
    add_product(producto)
    producto.reducir_stock(cantidad)
    end
  end

  def search_product(product_name)
    @vendedor.productos.select { |x| x.nombre == product_name}
  end
  private :search_product

  def pay_product(producto, cantidad)
    @dinero -= (producto.valor_venta * cantidad)
    @vendedor.dinero_ganado += (producto.valor_venta - producto.valor_compra)*cantidad
  end
  private :pay_product

  def add_product(producto)
    @productos << producto
  end
  private :add_product
end
