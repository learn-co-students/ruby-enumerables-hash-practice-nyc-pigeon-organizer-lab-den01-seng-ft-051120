require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  #binding.pry
  
  
  test1 = data[:gender][:male]
  test2 = data[:gender][:female]
  test3 = test2 + test1
  
  

  
  
  new_hash = Hash[test3.map {|x| [x, Hash.new ]}]
  
  new_hash.each_key do |pigeon|
    new_hash[pigeon] = Hash[data.keys.map {|x| [x, Array.new ]}]

  end
  
  new_hash.each do |pigeon, attributes|
    attributes.each do |attribute, values|
      data[attribute].each do |value, pigeons|
        if pigeons.index(pigeon)
          values << String(value)
          #binding.pry
        end
      end      
    end
  end  
    

  
  binding.pry
  
  #new_hash.update(new_hash) { |key, value| value }

  new_hash
  
end
