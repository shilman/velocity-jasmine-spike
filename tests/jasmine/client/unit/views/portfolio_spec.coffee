describe "portfolio", ->
  beforeEach ->
    @portfolio = new Portfolio(name: "Name", description: "Description", holdings: [{symbol: "SYM"}])
    @portfolio._id = ClientPortfolios.insert(@portfolio)
    self = this
    @view = Blaze.renderWithData(Template.portfolio, {portfolio: -> ClientPortfolios.findOne(self.portfolio._id)}, @$fixture.get(0))
  afterEach ->
    ClientPortfolios.remove({})
  it "should show", ->
    $view = @$fixture.find(".js-portfolio")
    expect($view).toBeVisible()
    expect($view.find('.js-name')).toHaveText("Name")
    expect($view.find('.js-description')).toHaveText("Description")
    expect($view.find('[data-holding]')).toHaveLength(1)
  it "should react", (done) ->
    ClientPortfolios.update(@portfolio._id, $set: {name: "Edited"})
    Tracker.afterFlush(=>
      expect(@$fixture.find('.js-name')).toHaveText("Edited")
      done()
    )
  # it "should fail", ->
  #   expect(true).toBe(false)
