class BakedGoods
    attr_accessor :name, :description, :price, :image
    def initialize(name, description, price, image)
        @name = name
        @description = description
        @price = price
        @image = image
    end
end