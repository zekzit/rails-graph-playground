class Question 
  include Neo4j::ActiveNode
  property :title, type: String
  property :description, type: String

  has_many :in, :answers, type: :replied_on, model_class: "Answer"
  has_one :in, :initiator, type: :ask , model_class: "Collaborator"

end
