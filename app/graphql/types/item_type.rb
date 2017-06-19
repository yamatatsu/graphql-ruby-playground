Types::ItemType = GraphQL::ObjectType.define do
  name "Item"

  field :name, types.String
end
