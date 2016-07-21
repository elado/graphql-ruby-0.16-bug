CollectionItemType = GraphQL::ObjectType.define do
  name 'CollectionItem'
  description '..'
  interfaces [NodeIdentification.interface]

  global_id_field :id

  field :entity do
    type EntityInterface
    resolve -> (obj, args, ctx) { obj.entity }
  end
end
