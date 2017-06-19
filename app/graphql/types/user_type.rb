Types::UserType = GraphQL::ObjectType.define do
  name "User"

  field :email, types.String
  field :shops, types[Types::ShopType] do
    resolve ->(obj, args, ctx) { obj.shops }
  end
end
