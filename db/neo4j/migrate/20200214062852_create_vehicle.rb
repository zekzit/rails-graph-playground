class CreateVehicle < Neo4j::Migrations::Base
  def up
    add_constraint :Vehicle, :uuid
  end

  def down
    drop_constraint :Vehicle, :uuid
  end
end
