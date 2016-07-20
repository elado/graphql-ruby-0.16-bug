# graphql-ruby-0.16-bug

Clone and run:

```
git clone https://github.com/elado/graphql-ruby-0.16-bug.git
rake db:migrate
rake db:seed
rails s -p3001
```

Go to [http://localhost:3001/graphiql](http://localhost:3001/graphiql)

## Bug:


```
query first {
  viewer {
    collections {
      edges {
        node {
          id
          name
          items(first: 100) {
            edges {
              node {
                id
                entity {
                  __typename
                  ...F1
                  ...F2
                }
              }
            }
          }
        }
      }
    }
  }
}

fragment F1 on EntityAaa {
  id
  name
  aaa
  entityType
  __typename
}

fragment F2 on EntityBbb {
  id
  name
  bbb
  entityType
  __typename
}
```

## No bug:

```
query {
  viewer {
    collections {
      edges {
        node {
          id
          name
          items(first: 100) {
            edges {
              node {
                id
                entity {
                  __typename
                  ... on EntityAaa {
                    id
                    name
                    aaa
                    entityType
                    __typename
                  }
                  ... on EntityBbb {
                    id
                    name
                    bbb
                    entityType
                    __typename
                  }
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
