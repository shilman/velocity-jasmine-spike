class @Portfolio
  constructor: (doc) ->
    _.extend(this, doc)

@Portfolios = new Mongo.Collection('portfolios',
  transform: (doc) -> new Portfolio(doc)
)

@ClientPortfolios = new Mongo.Collection(null,
  transform: (doc) -> new Portfolio(doc)
)
