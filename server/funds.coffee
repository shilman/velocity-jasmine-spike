Meteor.publish('funds', ->
  Funds.find()
)

Meteor.publish('fundById', (id) ->
  Funds.find(id)
)
