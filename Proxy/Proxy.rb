require_relative 'System.rb'

class Proxy
  attr_reader :name, :surname, :id

  def initialize
      
  end

  def init
    begin
    askSamth
    control
    rescue
      print "Tahle chyba určitě nenastane, protože jsem vše řádně ošetřil"
    end
  end
  
  
  def askSamth
    puts "Zadejte své jméno"
    @name=gets
    puts "Zadejte své příjmení"
    @surname=gets
    isTrue=false
    while (isTrue!=true)
      puts "Zadejte svůj ID"
      id_=gets
      reg_exp = /\D/
      @id = id_.gsub(reg_exp, "")
      if (@id.size==10) then
        isTrue=true
      else
        puts "ID selhal"
      end
    end
  end

  def control
      nameFile="db.json"
      sys=System.new(nameFile)
      sys.readDB
      vstup=sys.isDb(@id)
      if (vstup==false) then    
        sys.CreateData(@name, @surname, @id)     
      else
        sys.EditData(@name, @surname, @id)
      end
      puts "Úspěch"
  end

end

