class UserManagement

  def initialize()
    @users = Hash.new
    menu_ppal
  end

  def menu_ppal
    puts "## Menú Principal ## "
    puts "Seleccione una opción:"
    puts "1) Usuarios"
    puts "2) Salir"
    @main_opt = gets.chomp.to_i
    if @main_opt == 1
      puts "## Menú Usuarios ##"
      puts "Seleccione una opción:"
      puts "1) Registrar Usuarios"
      puts "2) Listar Usuarios"
      puts "3) Eliminar Usuario"
      puts "4) Regresar a Menú Principal"
      @sec_opt = gets.chomp.to_i
      case @sec_opt
        when 1 then add_user
        when 2 then list_users
        when 3 then delete_user
        when 4 then menu_ppal
        else menu_ppal
      end
    else
      puts "Bye..."
      exit
    end
  end

  def add_user
    user = {}
    puts "Digite la cédula del usuario: "
    user['cedula'] = gets.chomp
    puts "Digite el nombre del usuario: "
    user['nombre'] = gets.chomp
    puts "Digite el apellido del usuario: "
    user['apellido'] = gets.chomp
    puts "Digite la edad del usuario: "
    user['edad'] = gets.chomp.to_i
    @users[user['cedula']] = user
    puts "Usuario Registrado."
    menu_ppal
    @users
  end

  def delete_user
    puts "Digite la cédula del usuario: "
    cedula = gets.chomp
    @users.delete_if { |k, v| k == cedula }
    puts "Usuario Eliminado."
    menu_ppal
    @users
  end

  def list_users
    if @users.size == 0
      puts "No hay usuarios registrados."
      menu_ppal
    end
    @users.each_with_index do |(key, user), idx|
      puts "User #{idx} :"
      puts "Cédula: #{key}"
      puts "Nombre: #{user['nombre']}"
      puts "Apellido: #{user['apellido']}"
      puts "Edad: #{user['edad']}"
      puts "\n"
    end
    menu_ppal
  end
end
