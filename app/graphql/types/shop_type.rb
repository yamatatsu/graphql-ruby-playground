Types::ShopType = GraphQL::ObjectType.define do
  name "Shop"

  field :name, types.String
  field :site, Types::ShopSiteType do
    resolve ->(obj, args, ctx) { obj.shop_site }
  end
  field :items, types[Types::ItemType] do
    resolve ->(obj, args, ctx) { obj.items }
  end
end
