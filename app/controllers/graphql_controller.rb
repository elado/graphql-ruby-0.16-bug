class GraphqlController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def query
    result_hash = Schema.execute(
      params[:query],
      variables: ensure_hash(params[:variables]),
      context: {
        remote_ip: request.remote_ip
      }
    )

    render json: result_hash
  end

  def schema
    render json: Schema.execute(GraphQL::Introspection::INTROSPECTION_QUERY)
  end

  private def ensure_hash(query_variables)
    if query_variables.blank? || query_variables == 'null'
      {}
    elsif query_variables.is_a?(String)
      JSON.parse(query_variables)
    else
      query_variables
    end
  end
end
