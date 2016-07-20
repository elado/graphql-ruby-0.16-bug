QueryType = GraphQL::ObjectType.define do
  name 'Query'
  description '..'

  field :node, field: NodeIdentification.field

  field :viewer do
    type ViewerType
    resolve -> (root, args, ctx) { Viewer.guest }
  end
end
