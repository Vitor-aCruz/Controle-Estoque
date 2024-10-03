require_relative 'produto.rb'
class Estoque
    def initialize 
        @product =[]
    end 

    def add_product(product)
        if @product.any? {|p| p.name.downcase == product.name.downcase}
            puts "Produto #{product.name} ja existe no estoque."
        else 
        @product << product
        puts "#{product.name} adicionado com sucesso."
        end
    end

    def att_price (product_name,new_price)
        product = @product.find {|p| p.name.downcase == product_name.downcase}

        if product
            if product.price=new_price
            puts "preço do produto #{product.name} atualizado para R$#{'%.2f' % product.price}"
            else 
            puts "Preço inválido, deve ser maior que zero."
            end
        else 
            puts "Produto #{product_name} não encontrado no estoque."
        end
    end
    
    def ver_quantity(product_name)
        product=@product.find {|p| p.name.downcase == product_name.downcase}

        if product
            puts "#{product.quantity} unidade(s) no estoque de #{product.name}"
        else 
            puts "Produto #{product_name} não encontrado no estoque"
        end 
    end 

    def exibir_relatorio
        puts "\n Relatório de estoque: "
        @product.each do |product|
            puts "\n Produto: #{product.name}"
            puts "preço : R$#{'%.2f' % product.price}"
            puts "quantidade : #{product.quantity}"
            puts ""
        end
    end
end
