class Nezlobse
  
  def getNumber
      num=rand(1..5)
      return num
  end
  def start
    @count=false;
    @user1=0;
    @user2=0;
    @user3=0;
    @user4=0;
    while  @count!=true 
      @user1=@user1+getNumber
      puts "user 1 #{@user1}"
      if @user1>=50
        puts "vyhra 1"
        @count=true
        break
      end
      
       @user2=@user2+getNumber
      puts "user 2 #{@user2}"
      if @user2>=50
         puts "vyhra 2"
        @count=true
        break
      end
      @user3+=getNumber
      puts "user 3 #{@user3}"
      if @user3>=50
         puts "vyhra 3"
        @count=true
        break
      end
      @user4=@user4+getNumber
      puts "user 4 #{@user4}"
      if @user4>=50
          puts "vyhra 4"
        @count=true
        break
      end
      
    end
    
  end
end

nezlob=Nezlobse.new;
nezlob.start;
puts nezlob.methods
