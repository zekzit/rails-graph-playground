class Answer 
  include Neo4j::ActiveNode
  property :description, type: String

  has_one :out, :question, type: :replied_on , model_class: "Question"
  has_one :in, :owner, type: :author, model_class: "Collaborator"
end
