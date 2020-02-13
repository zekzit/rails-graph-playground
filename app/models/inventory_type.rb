class InventoryType 
  include Neo4j::ActiveNode
  property :name, type: String

  has_many :in, :inventories, type: :type, model_class: "Inventory"

end
