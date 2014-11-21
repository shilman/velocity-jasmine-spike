describe "discussionCards", ->
  beforeEach ->
    @container = document.createElement("DIV")
    @discussions = SampleData.discussions(5)
    @view = Blaze.renderWithData(Template.discussionCards, {discussions: @discussions}, @container)
  it "should show", ->
    $view = $(@container).find(".js-discussion-cards")
    expect($view).toExist()
    expect($view.find(".js-discussion-card")).toHaveLength(5)
