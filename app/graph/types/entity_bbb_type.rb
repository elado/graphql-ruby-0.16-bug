EntityBbbType = GraphQL::ObjectType.define do
  name 'EntityBbb'
  description '..'
  interfaces [NodeIdentification.interface]

  global_id_field :id
  field :bbb, types.String
  field :name, !types.String
  field :entityType, !types.String, property: :entity_type
end
