describe "browse", ->
  beforeEach ->
    @container = document.createElement("DIV")
    @view = Blaze.renderWithData(Template.browse, {}, @container)
  it "should show", ->
    $view = $(@container).find(".js-browse")
    expect($view).toExist()
    expect($view).toHaveText("browse")
