class CreateInventoryType < Neo4j::Migrations::Base
  def up
    add_constraint :InventoryType, :uuid
  end

  def down
    drop_constraint :InventoryType, :uuid
  end
end
