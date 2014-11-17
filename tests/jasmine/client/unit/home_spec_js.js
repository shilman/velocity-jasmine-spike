describe("home view unit js test", function() {
  beforeEach(function() {
    this.container = document.createElement("DIV");
    this.var = new ReactiveVar(22);
    view = Blaze.renderWithData(Template.home, {var: this.var}, this.container);
  });
  describe("basic variable", function() {
    it("should show variable", function() {
      expect($(this.container).find("h3").text().trim()).toEqual('22');
      expect($(this.container).find("li").length).toEqual(22);
    });
  });
});
