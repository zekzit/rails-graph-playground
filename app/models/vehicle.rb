class Vehicle 
  include Neo4j::ActiveNode
  property :license_number, type: String
  property :province, type: String
  property :brand, type: String
  property :model, type: String
  property :year, type: String
  property :vehicle_type, type: String



end
