Template.portfolio.helpers
  portfolio: ->
    ClientPortfolios.findOne(@id)
