# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

require 'rexml/document'
include REXML

xmlfile = File.new("Document.xml")
xmldoc = Document.new(xmlfile)



# DOM //////////////////////////////////////////////////////
hlavicka="root/movie"
# Now get the root element
root = xmldoc.root
puts "Root element : " + root.attributes["shelf"]

# This will output all the movie titles.
xmldoc.elements.each(hlavicka){ 
   |e| puts "Movie Title : " + e.attributes["title"]
  
}

# This will output all the movie types.
xmldoc.elements.each("#{hlavicka}/type") {
   |e| puts "Movie Type : " + e.text 
}

# This will output all the movie description.
xmldoc.elements.each("#{hlavicka}/description") {
   |e| puts "Movie Description : " + e.text 
}

# This will output all the movie types.
xmldoc.elements.each("#{hlavicka}/format") {
   |e| puts "Movie Format : " + e.text 
}

