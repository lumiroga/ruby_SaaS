class BookInStock 
   
    def initialize(isbn,price)
      raise ArgumentError, 'Price should be numeric and greater than 0' unless (price.is_a? Float or price.is_a? Integer) and price.to_f >0
      raise ArgumentError, 'Argument is empty' unless isbn.length > 0
      @isbn = isbn
      @price = price
    end
    
    public 
    def price_as_string
        precio_entero = @price.to_i
        centavos =( (@price - precio_entero).abs * 100).to_i
        "$"+precio_entero.to_s+"."+((centavos <10 ) ? "0"+centavos.to_s : centavos.to_s )
    end
    
    attr_accessor :price
    attr_accessor :isbn
    
end


book = BookInStock.new("fdfdf",33.95)





