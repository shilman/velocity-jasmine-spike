class @Discussion
  constructor: (doc) ->
    _.extend(this, doc)

@Discussions = new Mongo.Collection('discussions',
  transform: (doc) -> new Discussion(doc)
)
