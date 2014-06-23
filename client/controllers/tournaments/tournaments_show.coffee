@TournamentsShowController = RouteController.extend
  waitOn: ->
  data: ->
    Tournament._collection.findOne
      _id: @params._id
  action: ->
    @render()
