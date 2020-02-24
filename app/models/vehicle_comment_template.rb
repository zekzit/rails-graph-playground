class VehicleCommentTemplate 
  include Neo4j::ActiveNode
  property :score, type: Float
  property :comment, type: String
end
