@SquadsShowController = RouteController.extend
  waitOn: ->
  data: ->
    Squad.first
      slug: _.strip(@params.slug)
  action: ->
    @render()
