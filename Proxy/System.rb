require 'json'
class System
  attr_reader :file,:pole

  def initialize(file)
    @file=file
    begin
      puts "Nalezen vstupni soubor #{@file}"
    rescue
      puts "Vstupní soubor db.json nebyl nalezen."
    ensure
      puts "!"
    end
  end

  def isDb(id)
    file = open("#{@file}")
    json = file.read
    parsed = JSON.parse(json)
    parsed["rows"].each do |shop|
      if (shop[2]=="#{id}") then return true
      end  
    end
    return false
  end
    

  def readDB
    file = open("#{@file}")
    json=file.read
    parsed = JSON.parse(json)
    count=0
    @pole=[]
   
    parsed["rows"].each do |shop|
      #p "#{count+1} #{shop[0]}, #{shop[1]}, #{shop[2]}"  
      @pole[count]=[shop[0],shop[1],shop[2]]      
      count=count+1
    end
  end

  def CreateData(name,surname,id)  
    tempHash = ["#{name.capitalize.chomp}","#{surname.capitalize.chomp}","#{id}"]
    delka=pole.size
    pole[delka]=tempHash  
    js={"Labels" => ["Name","Surname","ID"], "rows" =>@pole}.to_json  
    file = File.open(@file,"w")
    file.write(js)
    file.close
  end
 
  def EditData(name,surname,id)  
    tempHash = ["#{name.capitalize.chomp}","#{surname.capitalize.chomp}","#{id}"]
     
    @pole.each {|x|
      if (x[2]=="#{id}") then 
        x[0]=name.chomp
        x[1]=surname.chomp
      end
    }
    js={"Labels" => ["Name","Surname","ID"], "rows" =>@pole}.to_json  
    file = File.open(@file,"w")
    file.write(js)
    file.close
  end
  
end

