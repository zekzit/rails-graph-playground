class Vehicle 
  include Neo4j::ActiveNode
  property :license_number, type: String
  property :province, type: String
  property :brand, type: String
  property :model, type: String
  property :year, type: String
  property :vehicle_type, type: String

  has_many :in, :comments, type: :comment_on , model_class: "VehicleComment"

  def average_score
    sum_score = self.comments.reduce(0) { |sum, comment| 
      sum + comment.template.score 
    }
    sum_score / self.comments.count
  end
end
