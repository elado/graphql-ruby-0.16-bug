ENTITY_TYPES = {
  aaa: EntityAaaType,
  bbb: EntityBbbType,
}

EntityInterface = GraphQL::InterfaceType.define do
  name 'EntityInterface'
  description '..'

  global_id_field :id
  field :name, !types.String
  field :entityType, !types.String, property: :entity_type

  resolve_type ->(object, ctx) {
    ENTITY_TYPES[object.entity_type.to_sym]
  }
end
