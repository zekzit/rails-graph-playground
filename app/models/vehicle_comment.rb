class VehicleComment 
  include Neo4j::ActiveNode

  has_one :out, :vehicle, type: :comment_on , model_class: "Vehicle"
  has_one :out, :template, type: :choosen , model_class: "VehicleCommentTemplate"
  has_one :in, :owner, type: :author, model_class: "Collaborator"
end
