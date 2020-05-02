#def nyc_pigeon_organizer(data)
  # write your code here!
#end

require 'pry'

def nyc_pigeon_organizer(data)
  organized_pigeons = {}
  
  data.each do | color_gen_loc, data_hash |
    data_hash.each do | attribute, arr |
      arr.each do | name |
        if !organized_pigeons.has_key?(name) 
          organized_pigeons[name] = {}
        end
        if !organized_pigeons[name].has_key?(color_gen_loc)
          organized_pigeons[name][color_gen_loc] = []
        end
        if !organized_pigeons[name][color_gen_loc].include?(attribute)
          organized_pigeons[name][color_gen_loc] << attribute.to_s
        end
      end
    end
  end
  organized_pigeons
end 