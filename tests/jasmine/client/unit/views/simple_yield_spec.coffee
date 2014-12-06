stubHelper = (what) ->
  spyOn(Blaze._globalHelpers, what).and.returnValue(null)

describe "simpleYield", ->
  beforeEach ->
    stubHelper('yield')
    stubHelper('contentFor')
    data = {}
    @view = Blaze.renderWithData(Template.simpleYield, data, @$fixture.get(0))

  it "should show", ->
    $view = @$fixture.find(".js-simple-yield")
    expect($view).toBeVisible()
    expect($view).toHaveText("simpleYield")
