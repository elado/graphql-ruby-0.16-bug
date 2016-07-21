EntityAaaType = GraphQL::ObjectType.define do
  name 'EntityAaa'
  description '..'
  interfaces [NodeIdentification.interface, EntityInterface]

  field :aaa, types.String
end
