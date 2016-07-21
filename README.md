# graphql-ruby-issues

Clone and run:

```
git clone https://github.com/elado/graphql-ruby-0.16-bug.git
rake db:migrate
rake db:seed
rails s -p3001
```

Go to [http://localhost:3001/graphiql](http://localhost:3001/graphiql)

## Query:

```graphql
query {
  viewer {
    collections {
      edges {
        node {
          id
          name
          items {
            edges {
              node {
                id
                entity {
                  id # this field is supposed to be on the interface
                }
              }
            }
          }
        }
      }
    }
  }
}
```

## Error:

```
GraphQL::ObjectType::UnresolvedTypeError (The value returned for field entity on CollectionItem could not be resolved to one of the possible types for EntityInterface.):
```
