describe "portfolio", ->
  beforeEach ->
    @container = document.createElement("DIV")
    @portfolio = new Portfolio(name: "Name", description: "Description", holdings: [{symbol: "SYM"}])
    @portfolio._id = ClientPortfolios.insert(@portfolio)
    Tracker.autorun(=>
      @view = Blaze.renderWithData(Template.portfolio, {portfolio: ClientPortfolios.findOne(@portfolio._id)}, @container)
    )
  afterEach ->
    ClientPortfolios.remove({})
  it "should show", ->
    $view = $(@container).find(".js-portfolio")
    expect($view.find('.js-name')).toHaveText("Name")
    expect($view.find('.js-description')).toHaveText("Description")
    expect($view.find('[data-holding]')).toHaveLength(1)
  describe "reactivity", ->
    beforeEach (done) ->
      ClientPortfolios.update(@portfolio._id, $set: {name: "Edited"})
      Tracker.afterFlush(done)
    it "should react", (done) ->
      expect($(@container).find('.js-name').last()).toHaveText("Edited")
