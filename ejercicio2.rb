module Formula
  def perimetro(a, b)
    perimetro = 2 * a + 2 * b
    perimetro
  end
  def area(a, b)
    area = a * b
    area
  end
end

class Rectangulo
  def initialize(largo, ancho)
    @largo = largo
    @ancho = ancho
  end
  def lados
    print "#{@largo} #{@ancho}"
  end
  include Formula
  def mostrar_perimetro
    perimetro(@largo, @ancho)
  end
  def mostrar_area
    area(@largo, @ancho)
  end
end

class Cuadrado
  include Formula
  def initialize(lado)
    @lado = lado
  end
  include Formula
  def mostrar_perimetro
    perimetro(@lado, @lado)
  end
  def mostrar_area
    area(@lado, @lado)
  end
  def lados
    print "#{@lado}"
  end

end
rec = Rectangulo.new(2,4)
cuad = Cuadrado.new(5)
puts "The perimeter of the rectangle is: #{rec.mostrar_perimetro}"
puts "The area of the rectangle is #{rec.mostrar_area}"
puts "The perimeter of the square is #{cuad.mostrar_perimetro}"
puts "The area of the square is: #{cuad.mostrar_area}"
