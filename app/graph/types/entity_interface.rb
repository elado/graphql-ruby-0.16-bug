EntityInterface = GraphQL::InterfaceType.define do
  name 'EntityInterface'
  description '..'

  global_id_field :id
  field :name, !types.String
  field :entityType, !types.String, property: :entity_type
end
