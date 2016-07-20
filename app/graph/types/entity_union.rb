ENTITY_TYPES = {
  aaa: EntityAaaType,
  bbb: EntityBbbType,
}

EntityUnion = GraphQL::UnionType.define do
  name 'EntityUnion'
  description '..'
  possible_types ENTITY_TYPES.values

  resolve_type ->(object, ctx) {
    ENTITY_TYPES[object.entity_type.to_sym] || ENTITY_TYPES[:default]
  }
end
