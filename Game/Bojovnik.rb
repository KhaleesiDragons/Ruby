class Bojovnik
  attr_reader :name, :brana,:live
  def initialize(name, brana, live)
    @brana=brana;
    @name=name;
    @live=live;
  end

  def getBojovnik
    puts "name=#{@name} brana= #{@brana} live= #{@live}";
  end

  def vyhra
    @brana=@brana+1
  end

  def getName
    return @name;
  end

  def getBrana
    return @brana;
  end

  def setDie
    @live=false
  end

  def getDie
    return @live
  end
end

b1=Bojovnik.new("B1",0,true);
b2=Bojovnik.new("B2",0,true);
b3=Bojovnik.new("B3",0,true);
b4=Bojovnik.new("B4",0,true);

class Boj
  attr_reader :jsem,:b
  def initialize()
    @jsem = Bojovnik.new("Jsem",0,true);
  end

  def boj(bojovnik)
    die=@jsem.getDie()
    if (die==false)
      then puts "jsem mrtvy"
      return nil
    end
    @b= bojovnik;
    numJsem= getNumber;
    numBojovnik= getNumber;
    puts "#{numJsem} #{numBojovnik} ";

    if (numJsem > numBojovnik ) then
      @jsem.vyhra
      @b.setDie
    end

    if (numJsem < numBojovnik ) then
      @jsem.setDie
      @b.vyhra
    end
    if (numJsem == numBojovnik ) then
      boj(@b)
    end
  end

  def getNumber
    num=rand(1..6);
    return num;
  end

  def vypis
    # puts "Score: #{@jsem.getName()}=#{@jsem.getBrana}(#{@jsem.getDie}) a #{@b.getName}=#{@b.getBrana}(#{@b.getDie}) ";
    @jsem.getBojovnik
    @b.getBojovnik
    puts "_____________________________ "
  end
end

my_array=[b1,b2,b3,b4];
bojA=Boj.new;
my_array.each do |value|   
  bojA.boj(value)
  bojA.vypis
end

