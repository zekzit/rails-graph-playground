class CreateInventory < Neo4j::Migrations::Base
  def up
    add_constraint :Inventory, :uuid
  end

  def down
    drop_constraint :Inventory, :uuid
  end
end
