def nyc_pigeon_organizer(data)
  list = {}
  data.each do |key, value|
    value.each do |descriptor, array|
      array.each do |name|
        if list[name] == nil 
          list[name] = {}
        end
        if list[name][key] == nil 
          list[name][key] = []
        end
        list[name][key] << descriptor.to_s 
      end
    end
  end
  list
end
