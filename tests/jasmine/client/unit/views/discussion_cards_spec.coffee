describe "discussionCards", ->
  beforeEach ->
    @discussions = SampleData.discussions(5)
    @view = Blaze.renderWithData(Template.discussionCards, {discussions: @discussions}, @$fixture.get(0))
  it "should show", ->
    $view = @$fixture.find(".js-discussion-cards")
    expect($view).toBeVisible()
    expect($view.find(".js-discussion-card")).toHaveLength(5)
