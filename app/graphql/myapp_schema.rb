MyappSchema = GraphQL::Schema.define do
  query(Types::QueryType)
  use GraphQL::Batch
end
