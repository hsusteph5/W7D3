json.extract! @party, :name, :location

json.set! :guests do
  json.array! @party.guests do |guest|
    json.extract! guest, :name, :age, :favorite_color

    json.set! :gifts do
      json.array! guest.gifts do |gift|
        json.extract! gift, :title, :description
      end
    end
  end
end

# json.set! :gifts do
#   json.array! @party.guests do |guest|
#     json.array! guest.gifts do |gift|
#       json.extract! gift, :title, :description
#     end
#   end
# end
