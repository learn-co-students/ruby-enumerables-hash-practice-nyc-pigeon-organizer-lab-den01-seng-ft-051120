def nyc_pigeon_organizer(data)
  pigeon_by_name ={}
  data.each do |key, value|
    value.each do |describe, array|
      array.each do |name|
        if pigeon_by_name.has_key?(name)
          if pigeon_by_name[name].has_key?(key)
            pigeon_by_name[name][key] << describe.to_s
          else
            pigeon_by_name[name][key] = [describe.to_s]
          end
        else
          pigeon_by_name[name] = {key => [describe.to_s]}
        end
      end
    end
  end
  pigeon_by_name
end

  
  
  
