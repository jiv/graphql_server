Types::InstructorType = GraphQL::ObjectType.define do
  name 'Instructor'

  field :id, !types.ID
  field :name, !types.String
end
