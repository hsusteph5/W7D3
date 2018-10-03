# indexed id :  { name, age, favorite color }
# json.extract! @guest, :name, :id, :age, :favorite_color

json.partial! 'guest', guest: @guest


json.set! :gifts do
  json.array! @guest.gifts do |gift|
    json.extract! gift, :title, :description
  end
end
