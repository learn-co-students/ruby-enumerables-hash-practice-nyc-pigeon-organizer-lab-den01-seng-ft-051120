def nyc_pigeon_organizer(data)
  new_pigeons = {}
  data.each_pair do |pair|
    pair[1].each_pair do |key, value|
      value.each do |item|
        new_pigeons[item] = {:color => [], :gender => [], :lives => []}
      end
    end
  end
  data[:color].each_pair do |key, value|
    value.each do |item|
      new_pigeons[item][:color] << key.to_s
    end
  end
  data[:gender].each_pair do |key, value|
    value.each do |item|
      new_pigeons[item][:gender] << key.to_s
    end
  end
  data[:lives].each_pair do |key, value|
    value.each do |item|
      new_pigeons[item][:lives] << key.to_s
    end
  end
  p new_pigeons
end

nyc_pigeon_organizer({
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
})