Router.configure
  layoutTemplate: 'MasterLayout'
  loadingTemplate: 'Loading'
  notFoundTemplate: 'NotFound'
  templateNameConverter: 'upperCamelCase'
  routeControllerNameConverter: 'upperCamelCase'

Router.map ->
  @route 'home',
    path: '/'
    action: ->
      Router.go('/squads/marlow-wolves-youth')

  @route 'tournaments.show',
    path: '/tournaments/:_id'

  @route 'squads.show',
    path: '/squads/:slug'

  @route 'games.show',
    path: '/games/:_id'
