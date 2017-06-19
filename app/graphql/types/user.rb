Types::QueryType = GraphQL::ObjectType.define do
  name "User"

  field :email, types.String
end
