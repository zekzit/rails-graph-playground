class CreateQuestion < Neo4j::Migrations::Base
  def up
    add_constraint :Question, :uuid
  end

  def down
    drop_constraint :Question, :uuid
  end
end
