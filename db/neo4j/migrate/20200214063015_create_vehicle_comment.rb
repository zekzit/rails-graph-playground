class CreateVehicleComment < Neo4j::Migrations::Base
  def up
    add_constraint :VehicleComment, :uuid
  end

  def down
    drop_constraint :VehicleComment, :uuid
  end
end
