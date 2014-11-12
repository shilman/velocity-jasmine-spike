Router.configure(
  layoutTemplate: 'layout'
)

Router.map(->
  @route('home',
    path: '/',
    data: {var: new ReactiveVar(27)}
    template: 'home'
  )
)
