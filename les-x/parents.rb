class Truck
    def self.default_make
      "mac"
    end
  
    def make1
      self.class.default_make
    end
  
    def make2
      Truck.default_make
    end
  end
  
  
  class BigTruck < Truck
    def self.default_make
      "bigmac"
    end
  end

  
b = BigTruck.new

p b.make1
p b.make2

