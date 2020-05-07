def nyc_pigeon_organizer(data)
  new_data = {}
  data.each do |top_key, top_value|
    top_value.each do |inner_key, inner_value|
      inner_value.each do |name|
        if new_data[name].nil?
          new_data[name] = {}
        end
        if new_data[name][top_key].nil?
          new_data[name][top_key] = []
        end
        new_data[name][top_key].push(inner_key.to_s)
      end
    end 
  end
  return new_data
end