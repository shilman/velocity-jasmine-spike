Meteor.publish('portfolios', ->
  Portfolios.find()
)

Meteor.publish('portfolioById', (id) ->
  Portfolios.find(id)
)
