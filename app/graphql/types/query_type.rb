Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  field :course, !Types::CourseType do
    argument :id, types.ID
    argument :slug, types.String

    resolve -> (obj, args, ctx) {
      id = args[:id]
      slug = args[:slug]
      if id
        Course.find(id)
      elsif slug
        Course.where("slug ilike ?", "%#{slug}%").first
      end
    }
  end

  field :allCourses, !types[Types::CourseType] do
    resolve -> (obj, args, ctx) {
      Course.all
    }
  end
end
