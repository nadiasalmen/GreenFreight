# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"
require "open-uri"

puts "Clearing Database..."
Load.destroy_all
Freight.destroy_all
Truck.destroy_all
User.destroy_all
SpecialRequirement.destroy_all
LoadCategory.destroy_all
TruckCategory.destroy_all
StartPoint.destroy_all
EndPoint.destroy_all


puts "Creating New Users"

tran_ernesto = User.new(
  email: "transporteernesto@gmail.com",
  password: "ernesto1234",
  address: "Lorenzo López 624, Pilar Centro, Provincia de Buenos Aires",
  name: "Transporte Ernesto",
  role: "Transportista"
)
file = URI.open('https://ca.slack-edge.com/T02NE0241-U010026QV2Q-21399e9af22d-512')
tran_ernesto.avatar.attach(io: file, filename: "#{tran_ernesto.name}.png", content_type: 'image/png')
tran_ernesto.save!

cargador_ernesto = User.new(
  email: "ernestocargador@gmail.com",
  password: "ernesto1234",
  address: "Belgrano 201, Chivilcoy, Provincia de Buenos Aires",
  name: "Ernesto Cargador",
  role: "Cargador"
)
file = URI.open('https://ca.slack-edge.com/T02NE0241-U010026QV2Q-21399e9af22d-512')
cargador_ernesto.avatar.attach(io: file, filename: "#{cargador_ernesto.name}.png", content_type: 'image/png')
cargador_ernesto.save!

tran_mauricio = User.new(
  email: "transportemauricio@gmail.com",
  password: "mauricio1234",
  address: "Honduras 5207, Buenos Aires",
  name: "Transporte Mauricio",
  role: "Transportista"
)
file = URI.open('https://ca.slack-edge.com/T02NE0241-U0105LQJJ56-bd4c0813ae97-512')
tran_mauricio.avatar.attach(io: file, filename: "#{tran_mauricio.name}.png", content_type: 'image/png')
tran_mauricio.save!

cargador_mauricio = User.new(
  email: "mauriciocargador@gmail.com",
  password: "mauricio1234",
  address: "Falucho 995, Mar del Plata, Provincia de Buenos Aires",
  name: "Mauricio Cargador",
  role: "Cargador"
)
file = URI.open('https://ca.slack-edge.com/T02NE0241-U0105LQJJ56-bd4c0813ae97-512')
cargador_mauricio.avatar.attach(io: file, filename: "#{cargador_mauricio.name}.png", content_type: 'image/png')
cargador_mauricio.save!

tran_nadia = User.new(
  email: "transportenadia@gmail.com",
  password: "nadia1234",
  address: "Arévalo 2279, Buenos Aires",
  name: "Transporte Nadia",
  role: "Transportista"
)
file = URI.open('https://ca.slack-edge.com/T02NE0241-UV362N1GB-99b98618119c-512')
tran_nadia.avatar.attach(io: file, filename: "#{tran_nadia.name}.png", content_type: 'image/png')
tran_nadia.save!

cargador_nadia = User.new(
  email: "nadiacargador@gmail.com",
  password: "nadia1234",
  address: "Rueda 755, Rosario, Provincia de Santa Fe",
  name: "Nadia Cargador",
  role: "Cargador"
)
file = URI.open('https://ca.slack-edge.com/T02NE0241-UV362N1GB-99b98618119c-512')
cargador_nadia.avatar.attach(io: file, filename: "#{cargador_nadia.name}.png", content_type: 'image/png')
cargador_nadia.save!

puts "Creating Truck Categories"

TruckCategory.create(description: "Petróleo", emissions: 500)
TruckCategory.create(description: "Diésel", emissions: 400)
TruckCategory.create(description: "Híbrido", emissions: 150)
TruckCategory.create(description: "Eléctrico", emissions: 100)

puts "Creating Load Categories"

LoadCategory.create(description: "Cajas")
LoadCategory.create(description: "Contenedores")
LoadCategory.create(description: "Mudanza")
LoadCategory.create(description: "Otros")
LoadCategory.create(description: "Palletizado")

puts "Creating Special Requirements"

SpecialRequirement.create(description: "Apto alimentos")
SpecialRequirement.create(description: "Carga peligrosa")
SpecialRequirement.create(description: "Frágil")
SpecialRequirement.create(description: "Ninguno")
SpecialRequirement.create(description: "Otros")

puts "Creating Load Status"

LOAD_STATUS = ["Nueva", "Asignada", "En tránsito", "Entregada", "Cancelada"]

puts "Creating Freight Status"

FREIGHT_STATUS = ["Nuevo", "En tránsito", "Finalizado", "Cancelado"]

puts "Creating Hour Ranges"

HOUR_RANGES = ["7:00-12:00", "12:00-17:00", "17:00-22:00"]

puts "Creating Load End Points"

LOAD_END_POINTS = [
  "Francia 981, Luján, Provincia de Buenos Aires",
  "San Martín 2152, Campana, Provincia de Buenos Aires",
  "Av. San Martín 1747, Baradero, Provincia de Buenos Aires",
  "Rauch, Provincia de Buenos Aires",
  "Undiano 264, Bahía Blanca, Provincia de Buenos Aires",
  "Provincia de Chubut",
  "Luis Maspero 158, Remedios de Escalada, Provincia de Buenos Aires",
  "Pasteur 220, Mar del Plata, Provincia de Buenos Aires",
  "Rosario, Provincia de Santa Fe",
  "Moreno, Provincia de Buenos Aires"
]

LOAD_START_POINTS = [
  "Olivos, Provincia de Buenos Aires",
  "Moreno 490, Buenos Aires",
  "San Luis 542, Rosario, Provincia de Santa Fe",
  "Yrigoyen 625, Pehuajó, Provincia de Buenos Aires",
  "Comodoro Rivadavia, Chubut",
  "Tupungato 54, La Rioja",
  "Pedro Luro 6681, Mar del Plata, Provincia de Buenos Aires",
  "Urquiza 345, Santiago del Estero",
  "Puerto Madryn, Chubut",
  "Luján de Cuyo, Provincia de Mendoza"
]

puts "Creating Truck Names"

TRUCK_NAMES = ["Scania", "Daf Trucks", "Man", "Mercedes", "Iveco", "Volvo", "Renault", "Isuzu", "Nissan"]

puts "Creating Truck Capacities"

TRUCK_CAPACITIES = [20, 40, 70, 130]

puts "Creating Trucks"

[tran_ernesto, tran_mauricio, tran_nadia].each do |tran|
  5.times do
    truck = Truck.new(
      price_per_km: Faker::Number.number(digits: 3),
      capacity: TRUCK_CAPACITIES.sample,
      user: tran,
      truck_category: TruckCategory.all.sample,
      driver_name: Faker::Name.name,
      driver_license: Faker::IDNumber.spanish_citizen_number,
      truck_license: Faker::Vehicle.license_plate,
    )
    truck.truck_name = "#{TRUCK_NAMES.sample} - #{rand(99)}",
    truck.save!
  end
end

puts "Creating Loads"

[cargador_ernesto, cargador_mauricio, cargador_nadia].each do |loader|
  10.times do
    oneload = Load.new(
      user: loader,
      start_date: Date.today-rand(30),
      end_date: Date.today+rand(30),
      hour_range: HOUR_RANGES.sample,
      load_category_id: LoadCategory.pluck(:id).sample,
      special_requirement_id: SpecialRequirement.pluck(:id).sample,
      weight: Faker::Number.between(from: 10, to: 25000),
      volume: Faker::Number.between(from: 1, to: 130),
      price: Faker::Number.number(digits: 3),
      status: LOAD_STATUS.sample,
    )
    oneload.save!
    start_point = StartPoint.new(load: oneload, location: LOAD_START_POINTS.sample)
    end_point  = EndPoint.new(load: oneload, location: LOAD_END_POINTS.sample)
    start_point.save!
    end_point.save!
  end
end

puts "Creating Truck Load Categories"

Truck.all.each do |truck|
     truck_load_category = TruckLoadCategory.new(truck: truck,
     load_category: LoadCategory.all.sample)
     truck_load_category.save
end

puts "Creating Freights"

5.times do
  ruta = Freight.new
  ruta.truck = Truck.all.sample
  ruta.status = FREIGHT_STATUS.sample
  ruta.save!
  rand(2..3).times do
    Load.where(freight_id: nil).sample.update(freight_id: ruta.id)
  end
  ruta.save!
end

puts "Creating support channel"

channel = Chatroom.new(name: :soporte)
channel.save!

puts "Finished"
