Template.home.created = ->
  @_var = @data.var

Template.home.helpers(
  count: ->
    Template.instance()._var.get()
  items: ->
    _.map(_.range(Template.instance()._var.get()), (idx) ->
      {name: "item #{idx}"}
    )
)

Template.home.events(
  'click button': (event, template) ->
    template._var.set(Math.floor(Math.random() * 11))
)
