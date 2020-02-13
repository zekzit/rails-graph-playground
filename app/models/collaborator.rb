class Collaborator 
  include Neo4j::ActiveNode
  property :name, type: String
  property :title, type: String

  has_many :out, :questions, type: :ask, model_class: "Question"
  has_many :out, :replies, type: :author, model_class: "Answer"

  def to_s
    "#{self.name} / #{self.title}"
  end

end
