def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |key, value| #key = c,g,l value = {}
    value.each do |descriptor, array|
      array.each do |name|
        if pigeon_list[name] == nil 
          pigeon_list[name] = {}
        end
        if pigeon_list[name][key] == nil 
          pigeon_list[name][key] = []
        end
        pigeon_list[name][key] << descriptor.to_s 
      end
    end
  end
  pigeon_list
end