ViewerType = GraphQL::ObjectType.define do
  name 'Viewer'
  description '..'

  field :id, !types.ID

  connection :collections, -> { CollectionType.connection_type }
end
