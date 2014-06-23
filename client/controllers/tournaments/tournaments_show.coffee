@TournamentsShowController = RouteController.extend
  waitOn: ->
  data: ->
    Tournament.first
      _id: @params._id
  action: ->
    @render()
