EntityAaaType = GraphQL::ObjectType.define do
  name 'EntityAaa'
  description '..'
  interfaces [NodeIdentification.interface]

  global_id_field :id
  field :name, !types.String
  field :entityType, !types.String, property: :entity_type
  field :aaa, types.String
end
