class RegistroIngresos
  @users = []
  @numero_de_usuarios = 0
  @declarantes = []
  @j = 0
  def self.add_user
    user = {}
    puts 'Nombre del usuario: '
    user['nombre'] = gets.chomp
    puts 'Apellido del usuario: '
    user['apellido'] = gets.chomp

    user['ingresos'] = []
    for i in 0..11
      print "Entre ingresos del mes #{i + 1} "
      user['ingresos'][i] = gets.chomp.to_f
    end

    total_ingresos = user['ingresos'].inject { |sum, x| sum + x }

    if total_ingresos > 127_256
      user['declara_renta'] = true
      @declarantes[@j] = user
      @j= @j+1
    else
      user['declara_renta'] = false
    end

    @users[@numero_de_usuarios] = user
    @numero_de_usuarios = @numero_de_usuarios + 1
    puts 'Usuario Registrado.'
    puts @users

    porcentaje = (@j * 100) / @numero_de_usuarios
    puts "Total Usuarios: #{@numero_de_usuarios}"
    puts "Total Usuarios que declaran renta: #{@j} (#{porcentaje}%)"
  end
end
