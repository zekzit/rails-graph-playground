class CreateCollaborator < Neo4j::Migrations::Base
  def up
    add_constraint :Collaborator, :uuid
  end

  def down
    drop_constraint :Collaborator, :uuid
  end
end
