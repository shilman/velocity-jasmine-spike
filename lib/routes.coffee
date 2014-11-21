Router.configure(
  layoutTemplate: 'layout'
)

Router.map(->
  @route('home',
    path: '/',
    data: {var: new ReactiveVar(27)}
    template: 'home'
  )
  @route('portfolio'
    path: '/portfolio'
    data: ->
      portfolio: ClientPortfolios.findOne()
    template: "portfolio"
  )
  @route("browse"
    path: "/browse"
    template: "browse"
    data: ->
      portfolios: SampleData.portfolios(3)
  )
  @route("search"
    path: "/search"
    template: "search"
    data: -> {}
  )
)
