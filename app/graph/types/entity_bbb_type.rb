EntityBbbType = GraphQL::ObjectType.define do
  name 'EntityBbb'
  description '..'
  interfaces [NodeIdentification.interface, EntityInterface]

  field :bbb, types.String
end
