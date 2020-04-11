Dado("que temos os seguintes restaurantes") do |table|
    # puts table.hashes #converter a tabela em um objeto ruby que é um hashes
    # puts table.class #Cucumber::MultilineArgument::DataTable
    @restaurant_data = table.hashes
end

Quando("acesso a lista de restaurantes") do
    visit '/restaurants'
end

Entao("devo ver todos os restaurantes desta lista") do
    restaurants = all('.restaurant-item')

    @restaurant_data.each_with_index do |value, index|
      expect(restaurants[index]).to have_text value['nome'].upcase
      expect(restaurants[index]).to have_text value['categoria']
      expect(restaurants[index]).to have_text value['entrega']
      expect(restaurants[index]).to have_text value['avaliacao']
    end
end