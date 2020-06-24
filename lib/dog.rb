# Add your code here
class Dog

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        self.save
    end

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end

    def self.clear_all 
        self.all.clear
    end

    def self.print_all
        self.all.each {|element| puts element.name}
    end

end