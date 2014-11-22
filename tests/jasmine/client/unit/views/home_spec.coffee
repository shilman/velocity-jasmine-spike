describe "home", ->
  beforeEach ->
    @view = Blaze.renderWithData(Template.home, {}, @$fixture.get(0))
  it "should show", ->
    $view = @$fixture.find(".js-home")
    expect($view).toBeVisible()
    expect($view).toHaveText("home")
