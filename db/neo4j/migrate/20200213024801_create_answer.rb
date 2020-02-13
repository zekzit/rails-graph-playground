class CreateAnswer < Neo4j::Migrations::Base
  def up
    add_constraint :Answer, :uuid
  end

  def down
    drop_constraint :Answer, :uuid
  end
end
