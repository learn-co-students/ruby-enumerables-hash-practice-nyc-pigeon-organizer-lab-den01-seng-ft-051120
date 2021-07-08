require 'pry'
#ATTRIBUTES
## 1. :color  (purple, grey, white, brown)
## 2. :gender  (male, female)
## 3. :lives   (Subway, Library, Central Park, City Hall)

#ATTRIBUTES
## 1. :Theo
## 2. :Peter Jr.
## 3. :Lucky
## 4. :Ms. K
## 5. :Queenie
## 6. :Andrew
## 7. :Alex

def nyc_pigeon_organizer(data)
#creates hash with no values, or the shell  
  hash = {}
  data.each do |cgl, values|
    values.each do |value, array|
      array.each do |name|
        if hash[name] == nil
          hash[name] = {}
            hash[name][cgl] = []
        else
          hash[name][cgl] = []
          #hash contains Theo, Peter Jr. and Lucky with first key of color
        end
        #hash contains Theo and :color only
      end
      #hash contains (first iteration of purple... Theo, Peter Jr, and Lucky with color)
    end
    #here hash has all 7 names and color
  end
  #here hash has all 7 names and color, gender. lives 
  #
  #below block populates the values of the keys in hash
  hash.each do |name, values|
    values.each do |hvalue, array|
      data.each do |cgl, values|
        values.each do |value, array|
          array.each do |element|
            if element == name && hvalue == cgl
              hash[name][hvalue] << value.to_s
            end
            #populated Theo color of purple
          end
        end
          #populated Theo color of purple, grey 
      end
    end
    #populated all of Theo
  end 
#  binding.pry
  hash
end





#nyc_pigeon_organizer({
#  :color => {
#    :purple => ["Theo", "Peter Jr.", "Lucky"],
#    :grey => ["Theo", "Peter Jr.", "Ms. K"],
#    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#    :brown => ["Queenie", "Alex"]
#  },
#  :gender => {
#    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#    :female => ["Queenie", "Ms. K"]
#  },
#  :lives => {
#    "Subway" => ["Theo", "Queenie"],
#    "Central Park" => ["Alex", "Ms. K", "Lucky"],
#    "Library" => ["Peter Jr."],
#    "City Hall" => ["Andrew"]
#  }
#})
  
