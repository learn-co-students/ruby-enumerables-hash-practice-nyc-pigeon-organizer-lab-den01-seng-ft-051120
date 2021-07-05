def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |key1, value|
    value.each do |key2, every_name|
      every_name.each do |name|
        if new_hash[name] == nil
           new_hash[name] = {}
        end
        if new_hash[name][key1] == nil
           new_hash[name][key1] = []
        end
        new_hash[name][key1] << key2.to_s
      end
    end 
  end
  new_hash
end