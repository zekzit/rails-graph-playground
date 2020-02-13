class Collaborator 
  include Neo4j::ActiveNode
  property :name, type: String
  property :title, type: String

  def to_s
    "#{self.name} / #{self.title}"
  end

end
