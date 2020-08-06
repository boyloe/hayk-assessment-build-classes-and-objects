require 'pry'
class Building
    attr_reader :address
    attr_accessor :number_tenants
    @@all = []
    @@total_tenants = 0



    def initialize name, address, number_floors, number_tenants
        @name = name
        @address = address
        @number_floors = number_floors
        @number_tenants = number_tenants
        @@all << self
    end

    def self.all
        @@all
    end

    def self.total_tenants
        all.reduce(0) do |total,building|
            total + building.number_tenants
        end
    end

    def self.average_tenants_in_a_building 
        self.total_tenants / all.count        
    end


    def placard
        @name
        @address
    end

    def average_tenants_per_floor
        number_tenants / @number_floors
    end
end


b1 = Building.new 'Unit 1', '11678 Pecos St Westminster, CO 80234',3,40
b2 = Building.new 'Unit 2', '11694 Pecos St Westminster, CO 80234',3,34
b3 = Building.new 'Unit 3', '11690 Pecos St Westminster, CO 80234',3,30

binding.pry
