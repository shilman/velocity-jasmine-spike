describe "portfolioCards", ->
  beforeEach ->
    @portfolios = SampleData.portfolios(4)
    @view = Blaze.renderWithData(Template.portfolioCards, {portfolios: @portfolios}, @$fixture.get(0))
  it "should show", ->
    $view = @$fixture.find(".js-portfolio-cards")
    expect($view).toBeVisible()
    expect($view.find(".js-portfolio-card")).toHaveLength(4)
