def nyc_pigeon_organizer(data)
  # write your code here!
  res = {}
  data.each do | gcl, values |
    values.each do | colors, names|
      names.each do |name|
        if res[name] == nil
          res[name] = {}
        end
        if res[name][gcl] == nil
          res[name][gcl] = []
        end
        res[name][gcl].push(colors.to_s)
      end
    end
  end
  res

end



# def nyc_pigeon_organizer(data)
#   res = {}
#   names = extract_names(data)
#   # create a hash with just the names
#   names.each { |name| res[name]=nil}
#   res
# end


# def extract_names(data)
#   genders_array = []
#   data.values_at(:gender).each do |gender| 
#     genders_array.push(gender[:male])
#     genders_array.push(gender[:female])
#   end
#   #genders_array = [{:male=>["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"], :female=>["Queenie", "Ms. K"]}]
#   names = []
#   names.push(genders_array[0])
#   names.push(genders_array[1])
#   # make into a 1 dimensional array
#   names = names.flatten
#   names
# end