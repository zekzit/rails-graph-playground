class Inventory 
  include Neo4j::ActiveNode
  include Neo4j::Timestamps

  before_update :concat_name

  property :name, type: String
  property :brand, type: String
  property :model, type: String
  property :bought_date, type: Date
  property :price, type: String
  property :warranty_void_date, type: Date

  has_one :out, :type, type: :inventory_type, model_class: 'InventoryType'

  def concat_name
    self.name = self.brand + " " + self.model
  end
end
