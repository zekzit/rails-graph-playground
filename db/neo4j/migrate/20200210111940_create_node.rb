class CreateNode < Neo4j::Migrations::Base
  def up
    add_constraint :Node, :uuid
  end

  def down
    drop_constraint :Node, :uuid
  end
end
