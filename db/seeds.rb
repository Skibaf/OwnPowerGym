# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


user1 = User.create! :nombre => 'Florencia', :email => 'skiba_flo@gmail.com', :password => '123456', :password_confirmation => '123456', :apellido => 'Skiba', :dni => '111111111', :direccion => 'guido', :localidad => 'Quilmes', :provincia => 'Bs As', :tipo => 'A', :admin => true
user2 = User.create! :nombre=> 'Meli', :email => 'melii@gmail.com', :password => '123456', :password_confirmation => '123456', :apellido => 'Ja', :dni => '111111112', :direccion => 'guido', :localidad => 'Berazategui', :provincia => 'Bs As', :tipo => 'A'
user3 = User.create! :nombre => 'Marti', :email => 'marti@gmail.com', :password => '123456', :password_confirmation => '123456', :apellido => 'Berraz', :dni => '111111113', :direccion => 'guido2', :localidad => 'Bernal', :provincia => 'Bs As', :tipo => 'A'