collection1 = Collection.create(name: 'Coll1')

collection1.entities.create(entity_type: 'aaa', name: 'a1', aaa: 'foo')
collection1.entities.create(entity_type: 'aaa', name: 'a2', aaa: 'bar')
collection1.entities.create(entity_type: 'bbb', name: 'b3', bbb: 'baz')
collection1.entities.create(entity_type: 'bbb', name: 'b4', bbb: 'lol')
