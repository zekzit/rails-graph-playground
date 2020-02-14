class CreateVehicleCommentTemplate < Neo4j::Migrations::Base
  def up
    add_constraint :VehicleCommentTemplate, :uuid
  end

  def down
    drop_constraint :VehicleCommentTemplate, :uuid
  end
end
