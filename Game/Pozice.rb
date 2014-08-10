class Pozice
  attr_reader :x, :y
  def initialize(x,y)
    @x=x;
    @y=y;
  end

  def setUp
    @y=@y+1;
  end

  def setDown
    @y=@y-1;
  end

  def setLeft
    @x=@x-1;
  end

  def setRight
    @x=@x+1;
  end

  def getXY
    puts " x= #{@x}, y= #{@y} ";
  end

  def kamJIT(kam)
    case kam
    when (kam="Left") then setLeft
    when (kam="Right") then setRight
    when (kam="Down") then setDown
    when (kam="Up") then setUp
    end
  end
end

pozicion=Pozice.new(2,3);
puts "my pozicion"
pozicion.getXY;

my_array=["Up","Down","Left","Right","Up","Down","Left","Right","Right","Right","Right","Left","Left","Left"];
my_array.each do |value|
  puts value
  pozicion.kamJIT(value);
  pozicion.getXY;

  if ( pozicion.x==5 || pozicion.y==5) then 
    puts " STOP"
    break
  end
end
