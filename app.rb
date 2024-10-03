require_relative 'estoque.rb'
require_relative 'produto.rb'

estoque= Estoque.new

loop do 
    puts "Escolha uma opção : "
    puts "1- adicionar um produto."
    puts "2- atualizar preço de um produto."
    puts "3- verificar quantidade em estoque."
    puts "4- exibir o relatório completo."
    puts "5- Sair do programa."

    opcao = gets.chomp.to_i

    case opcao
    when 1
        puts "Qual produto será adicionado?"
        name = gets.chomp
        puts "Qual valor do produto?"
        price = gets.chomp.to_f
        puts "Qual a quantidade em estoque?"
        quantity=gets.chomp.to_i

        product=Product.new(name,price,quantity)
        estoque.add_product(product)

    when 2
        puts "Qual produto que terá o preço atualizado?"
        name = gets.chomp
        puts "Digite o novo preço : "
        new_price=gets.chomp.to_f

        estoque.att_price(name,new_price)

    when 3 
        puts "Qual produto você deseja verificar a quantidade?"
        name = gets.chomp
        estoque.ver_quantity(name)
    when 4
        estoque.exibir_relatorio
    when 5
        puts "Obrigado por utilizar nosso controle de estoque.Até logo."
        break
    else
        puts "Opção inválida, tente novamente.Se isso for um erro, entre em contato com o suporte :40028922."
    end
end