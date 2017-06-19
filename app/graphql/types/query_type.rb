Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :viewer, Types::UserType do
    resolve ->(obj, args, ctx) { ctx[:current_user] }
  end
end
