require '../modules/comprable.rb'
class Producto
  include Comprable
  attr_accessor :nombre, :valor_venta, :valor_compra, :stock
  def initialize(nombre, valor_venta, valor_compra, stock)
    @nombre = nombre
    @valor_venta = valor_venta
    @valor_compra = valor_compra
    @stock = stock
  end
end
