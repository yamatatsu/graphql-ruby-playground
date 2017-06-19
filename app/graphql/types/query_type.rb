Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :viewer, types.String do
    resolve ->(obj, args, ctx) {
      ctx[:current_user].email
    }
  end
end
