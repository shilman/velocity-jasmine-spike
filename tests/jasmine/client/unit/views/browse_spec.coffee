describe "browse", ->
  beforeEach ->
    @view = Blaze.renderWithData(Template.browse, {}, @$fixture.get(0))
  it "should show", ->
    $view = @$fixture.find(".js-browse")
    expect($view).toBeVisible()
    expect($view).toHaveText("browse")
