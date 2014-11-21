describe "portfolioCards", ->
  beforeEach ->
    @container = document.createElement("DIV")
    @portfolios = SampleData.portfolios(4)
    @view = Blaze.renderWithData(Template.portfolioCards, {portfolios: @portfolios}, @container)
  it "should show", ->
    $view = $(@container).find(".js-portfolio-cards")
    expect($view).toExist()
    expect($view.find(".js-portfolio-card")).toHaveLength(4)
