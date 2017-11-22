# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cadastrando as Categorias..."
categories = [ "Animais e acessorios",
               "Esportes",
               "Para a sua casa",
               "Eletrônicos e celulares",
               "Música e hobbies",
               "Bebês e crianças",
               "Moda e beleza",
               "Veículos e barcos",
               "Imóveis",
               "Empregos e negócios" ]

categories.each do |category|
    Category.find_or_create_by(description: category)
end

puts "Cadastrando as Categorias [OK]"

puts "Cadastrando o Administrador Padrão..."

Admin.create!(name:"Administrador geral",
                email:"admin@admin.com", 
                password:"123456", 
                password_confirmation:"123456",
                role: 0
            )

puts "Administrador cadastrado. [OK]"