require './bakedgoods.rb'

class Muffin < BakedGoods
    attr_accessor :name, :description, :price, :image
    def initialize(name, description, price, image)
        super
    end
end