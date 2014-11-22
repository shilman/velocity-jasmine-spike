beforeEach ->
  $('body').append('<div id="fixture"/>')
  @$fixture = $("#fixture")

afterEach ->
  @$fixture.remove()
