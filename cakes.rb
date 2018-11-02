require './bakedgoods.rb'

class Cake < BakedGoods
    attr_accessor :name, :description, :price, :image
    def initialize(name, description, price, image)
        super
    end
end