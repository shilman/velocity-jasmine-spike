class @Fund
  constructor: (doc) ->
    _.extend(this, doc)

@Funds = new Mongo.Collection('funds',
  transform: (doc) -> new Fund(doc)
)
