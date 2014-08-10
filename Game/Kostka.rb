class Kostka
  attr_reader :hran
  def initialize(num)
    @hran=num
  end
  def getNumber
    num=rand(1..@hran)
    return num
  end
  def getHran
    puts @hran
  end
end


kostka1=Kostka.new(6);
numer=kostka1.getNumber;
puts numer
#puts  kostka1.getHran