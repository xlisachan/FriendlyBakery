require 'sinatra'
require './bakedgoods.rb'
require './cakes.rb'
require './cookies.rb'
require './muffins.rb'

get '/' do
    erb :index, :layout => false
end

get '/about' do
    erb :about
end

get '/menu' do
    erb :menu
end

get '/locations'  do
    erb :locations
end

get '/cakes' do
    cake_cinderella = Cake.new('cinderella', 'Bibbity Bobbity Berry cake, charred marshmallows, strawberry frosting', 75, '/images/cakecinderella.png')
    cake_disney = Cake.new('disney (1-tier)', 'Vanilla rainbow cake, rainbow cake crumbs, sprinkles, vanilla frosting', 50, '/images/cakedisney.png')
    cake_disney2 = Cake.new('disney (2-tier)', 'Dulce de leche cake, dulce de leche caramel, milk crumbs, dulce de leche frosting', 100, '/images/cakedisney2.png')
    cake_nemo = Cake.new('finding nemo', 'Chocolate cake, malted fudge, malted milk crumbs, charred marshmallows, malted chocolate frosting', 50, '/images/cakenemo.png')
    cake_mickey  = Cake.new('mickey mouse', 'Chocolate chip cake, passion fruit curd, chocolate crumbs, coffee frosting', 150, '/images/cakemickey.png')
    cake_minnie = Cake.new('minnie mouse', 'Vanilla cake, lemon cheesecake, strawberry jam, strawberry frosting', 50, '/images/cakeminnie.png')
    cake_toystory = Cake.new('toy story', 'Brown butter cake, apple compote, brown butter cheesecake, pie crumbs, pie dough frosting', 100, '/images/caketoystory.png')
    cake_pooh = Cake.new('winnie the pooh (1-tier)', 'Salted pretzel cake, chocolate stout ganache, pretzel crumbs, burnt honey frosting', 50, '/images/cakepooh.png')
    cake_pooh2 = Cake.new('winnie the pooh (2-tier)', 'Salted pretzel cake, chocolate stout ganache, pretzel crumbs, burnt honey frosting', 100, '/images/cakepooh2.png')
    
    @title = 'cakes'
    @items = [cake_cinderella, cake_disney, cake_disney2, cake_nemo, cake_mickey, cake_minnie, cake_toystory, cake_pooh, cake_pooh2]

    erb :results
end

get '/cookies' do
    cookie_disney = Cookie.new('assorted cookies', 'Sugar Cookies - Mickey Mouse, Minnie, Mouse, Donald Duck, Daisy Duck', 20, '/images/cookiedisney.png')
    cookie_beauty = Cookie.new('beauty and the beast', 'Madeleines - Belle, Beast, Chip, Lumiere, Rose', 20, '/images/cookiebeauty.png')
    cookie_cars = Cookie.new('cars', 'Chocolate Chip Oatmeal Cookies - Lightning McQueen, Mater, Luigi', 20, '/images/cookiecars.png')
    cookie_frozen = Cookie.new('frozen', 'Powdered Sugar Cookies - Elsa, Anna, Olaf', 20, '/images/cookiefrozen.png')
    cookie_incredible = Cookie.new('the incredibles', 'Double Trouble Chocolate Cookies', 20, '/images/cookieincredible.png')
    cookie_mickey = Cookie.new('mickey and minnie', 'Chocolate Chip - Mickey and Minnie Ears', 20, '/images/cookiemickey.png')
    cookie_moana = Cookie.new('moana', 'Cinnamon Coconut Cookies - Moana, Pua, Tamatoa', 20, '/images/cookiemoana.png') 
    cookie_monsters = Cookie.new('monsters inc', 'Peanut Butter Cookies - Mike, Sully, Doors', 20, '/images/cookiemonsters.png')  
    cookie_starwars = Cookie.new('star wars', 'Black & White Cookies - CP30, Darth Vader, Leia, R2D2, Yoda', 20, '/images/cookiestarwars.png')  
    cookie_toystory = Cookie.new('toy story', 'Chocolate Chip - Buzz Lightyear, Woody', 20, '/images/cookietoystory.png')  
    
    @title = 'cookies'
    @items = [cookie_disney, cookie_beauty, cookie_cars, cookie_frozen, cookie_incredible, cookie_mickey, cookie_moana, cookie_monsters, cookie_starwars, cookie_toystory]

    erb :results
end

get '/muffins' do
    muffin_blueberry = Muffin.new('blueberry', 'Blueberry with lemon cream cheese frosting', 5, '/images/muffinblueberry.png')
    muffin_chocolate = Muffin.new('chocolate', 'Chocolate with chocolate buttercream frosting', 5, '/images/muffinchocolate.png')
    muffin_cranberry = Muffin.new('cranberry', 'Glazed cranberry orange muffin', 5, '/images/muffincranberry.png')
    muffin_crumble = Muffin.new('crumble', 'Chocolate chip crumb', 5, '/images/muffincrumble.png')
    muffin_hibiscus = Muffin.new('hibiscus', 'Strawberry hibiscus', 5, '/images/muffinhibiscus.png')
    muffin_oat = Muffin.new('oat', 'Banana oat', 5, '/images/muffinoat.png')
    muffin_passionfruit = Muffin.new('passionfruit', 'Passion fruit with passion fruit frosting', 5, '/images/muffinpassionfruit.png')
    muffin_raspberry = Muffin.new('raspberry', 'Raspberry with champagne buttercream frosting', 5, '/images/muffinraspberry.png')
    muffin_vanilla = Muffin.new('vanilla', 'Vanilla bean with cream cheese frosting', 5, '/images/muffinvanilla.png')
    
    @title = 'muffins'
    @items = [muffin_blueberry, muffin_chocolate, muffin_cranberry, muffin_crumble, muffin_hibiscus, muffin_oat, muffin_passionfruit, muffin_raspberry, muffin_vanilla]

    erb :results
end