student = Hash.new

def menu
	puts "Ingrese 1 para ingresar un nuevo alumno"
	puts "Ingrese 2 para editar los datos de un alumno"
	puts "Ingrese 3 para eliminar a un alumno(Haremos que parezca un accidente)"
	puts "Ingrese 4 para conocer el total de alumnos registrados"
	puts "Ingrese 5 para conocer las comunas en las que viven los estudiantes"
	puts "Ingrese 6 para conocer el total de estudiantes entre los 20 y 25 años"
	puts "Ingrese 7 para conocer la suma de todas las edades"
	puts "ingrese 8 para conocer la media de las edades de los alumnos"
	puts "ingrese 9 para separar a los alumnos por genere"
	puts "ingrese 10 para salir"
end

def add_student(hash)
	puts "Ingrese el nombre del estudiante"
	names = gets.chomp
	puts "Ingrese la edad del estudainte"
	age = gets.chomp.to_i
	puts "Ingrese la comuna del estudiante"
	comune = gets.chomp.capitalize!
	puts "Ingrese el genero del estudiante, Ejemplo 'M', 'F'"
	gender = gets.chomp.capitalize!
	array = Array.new
	array.push(age.to_s)
	array.push(comune.to_s)
	array.push(gender.to_s)
	hash[names.capitalize!.to_sym] = array
	hash
end	

def edit_student(hash)
	puts "ingrese el nombre del alumno para actualizar sus datos"
	hash.each_key {|key| print "#{key} "}
	puts ''
	names = gets.chomp.capitalize!

	if hash.has_key?(names.to_sym)
		puts "Ingrese una nueva edad para el estudiante: #{names}"
		age = gets.chomp.to_i
		puts "Ingrese una nueva comuna para el estudiante: #{names}"
		comune = gets.chomp.capitalize!
		puts "Ingrese un nuevo genero(EJ:'M','F') para el estudiante: #{names}"
		gender = gets.chomp.capitalize!
		array = Array.new
		array.push(age.to_s)
		array.push(comune.to_s)
		array.push(gender.to_s)
		hash[names.to_sym] = array
		puts "Los nuevos datos son #{hash}"
		hash
	else
		puts 'el nombre ingresado no esta en el registro'
	end
end

def delete_student(hash)
	puts "ingrese el nombre del estudiante que desea eliminar( parecera un accidente)"
	hash.each_key {|key| print "#{key} "}
	puts ''
	names = gets.chomp.capitalize!
	if hash.has_key(names.to_sym)
		hash.delete(names.to_sym)
	else
		puts "El nombre ingresado no esta en nuestros registros"
	end	
	hash
end

def count_student(hash)
	puts "El total de alumnos registrados es: #{hash.length}"
end

def province_student(hash)
	array = Array.new
	puts "Las comunas donde habitan los estudiantes son:"
	hash.each do |key, value|
		valor = hash[key]
		array.push(valor[1])
	end
	array2 = array.uniq
	array2.each {|valor| puts valor}
	hash
end

def ages_student_20_25(hash)
	array = Array.new 
	hash.each do |key, value|
		valor = hash[key]
		if (valor[0].to_i > 19 && valor[0].to_i < 26)
			array.push(hash.key(value))
		end
	end	
	puts "Los alumnos entre 20 y 25 años son:"
	puts array
end

loop do |option|
	menu
	option = gets.chomp
	case option.to_i
	when 1
		add_student(student)
	when 2
		edit_student(student)
	when 3
		delete_student(student)
	when 4 
		count_student(student)
	when 5
		province_student(student)
	when 6
		ages_student_20_25(student)
	when 7
		sum_ages_student(student)
	when 8
		average_student(student)
	when 9
		gendere_student(student)
	when 10
		puts "Gracias por usar nuestro sistema"
		break
	else
		"La opcion ingresada no es valida favor reintentar"
	end
	break if option==10
end
