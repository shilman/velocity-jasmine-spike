Meteor.publish('discussions', ->
  Discussions.find()
)

Meteor.publish('discussionById', (id) ->
  Discussions.find(id)
)
