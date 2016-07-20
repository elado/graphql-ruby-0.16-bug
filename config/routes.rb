Rails.application.routes.draw do
  root to: "home#index"

  post '/graphql', to: 'graphql#query'
  get '/graphql/schema', to: 'graphql#schema'

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
end
