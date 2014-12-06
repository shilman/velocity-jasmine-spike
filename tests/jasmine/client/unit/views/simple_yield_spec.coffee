describe "simpleYield", ->
  beforeEach ->
    data = {}
    @view = Blaze.renderWithData(Template.simpleYield, data, @$fixture.get(0))
  it "should show", ->
    $view = @$fixture.find(".js-simple-yield")
    expect($view).toBeVisible()
    expect($view).toHaveText("simpleYield")
