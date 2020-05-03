def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |color_gender_lives, value|
    value.each do |value, array|
      array.each do |name|
       if new_hash[name] == nil 
          new_hash[name] = {}
          new_hash[name][color_gender_lives] = []
        else
          new_hash[name][color_gender_lives] = []
        end
      end
    end
  end
  new_hash.each do |name, value|
    value.each do |hashvalue, array|
      data.each do |color_gender_lives, value|
        value.each do |value, array|
          array.each do |element|
            if element == name && hashvalue == color_gender_lives
              new_hash[name][hashvalue] << value.to_s
            end
          end
        end
      end
    end
  end
  new_hash
end
 







# if new_hash[name] == nil 
 #         new_hash[name] = {}
  #      end
   #     if new_hash[name][color_gender_lives] == nil
    #      new_hash[name][color_gender_lives] = {}
     #   end

#new_hash[name] ||= {}
 #       new_hash[name][color_gender_lives] ||= {}
  #      new_hash[name][color_gender_lives] << gender.to_s

#{:name =>{:color =>[], :gender =>[], :lives => [],}}
 # value == "Theo" || "Peter Jr" || "Lucky" || "Ms K" || "Queenie" || "Alex" || "Andrew"
      #value >> :name