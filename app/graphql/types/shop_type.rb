Types::ShopType = GraphQL::ObjectType.define do
  name "Shop"

  field :name, types.String
  field :site, Types::ShopSiteType do
    resolve ->(obj, args, ctx) do
      AssociationLoader.preload(obj, :shop_site)
    end
  end
  field :items, types[Types::ItemType] do
    resolve ->(obj, args, ctx) do
      AssociationLoader.preload(obj, :items)
    end
  end
end
