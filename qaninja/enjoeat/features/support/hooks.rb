Before do 
    page.current_window.resize_to(1440, 900) #código para redimensionar à página
end


Before("@bread_bakery") do #before para acessar o cardápio do restaurante através da tag @bread_bakery
    visit "/restaurants/bread-bakery/menu"
end