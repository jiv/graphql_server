class GraphqlServerSchema < GraphQL::Schema
  query(Types::QueryType)
end
