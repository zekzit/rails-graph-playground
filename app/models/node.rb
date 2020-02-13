class Node 
  include Neo4j::ActiveNode
  property :name, type: String

  has_many :in, :children, type: :relate, model_class: "Node"
  has_one :out, :parent, type: :relate , model_class: "Node"

end
