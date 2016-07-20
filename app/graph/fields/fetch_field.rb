class FetchField < GraphQL::Field
  def initialize(model:, type:)
    self.type = type
    @model = model
    self.description = "Find a #{model.name} by ID"
    self.arguments = {
      "id" => GraphQL::Argument.define do
        name "id"
        type !GraphQL::STRING_TYPE
        description "Id for record"
      end
    }
  end

  def resolve(object, args, ctx)
    type_name, id = NodeIdentification.from_global_id(args[:id])
    @model.find(id)
  end
end
