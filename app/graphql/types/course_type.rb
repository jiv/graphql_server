Types::CourseType = GraphQL::ObjectType.define do
  name 'Course'

  field :id, !types.ID
  field :slug, !types.String
  field :title, !types.String

  field :instructor, Types::InstructorType do
    resolve -> (obj, args, ctx) { obj.instructor }
  end
end
