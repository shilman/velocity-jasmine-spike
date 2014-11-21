describe "home", ->
  beforeEach ->
    @container = document.createElement("DIV")
    @view = Blaze.renderWithData(Template.home, {}, @container)
  it "should show", ->
    $view = $(@container).find(".js-home")
    expect($view).toExist()
    expect($view).toHaveText("home")
