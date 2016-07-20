CollectionType = GraphQL::ObjectType.define do
  name 'Collection'
  description '..'
  interfaces [NodeIdentification.interface]

  global_id_field :id
  field :name, !types.String
  connection :items, CollectionItemType.connection_type
end
