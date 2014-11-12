describe "home view test", ->
  beforeEach ->
    @container = document.createElement("DIV")
    @var = new ReactiveVar(22)
    view = Blaze.renderWithData(Template.home, {var: @var}, @container)
  describe "basic variable", ->
    it "should show variable", ->
      expect($(@container).find("h3").text().trim()).toEqual('22')
      expect($(@container).find("li").length).toEqual(22)
    it "should update variable programmatically", ->
      @var.set(13)
      Tracker.flush()
      expect($(@container).find("h3").text().trim()).toEqual('13')
      expect($(@container).find("li").length).toEqual(13)
    it "should update variable from UI", ->
      spyOn(Math, 'random').and.returnValue(1)
      $(@container).find("button").click()
      Tracker.flush()
      expect($(@container).find("h3").text().trim()).toEqual('11')
      expect($(@container).find("li").length).toEqual(11)
