window.ToDo =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new ToDo.Routers.Entries
    Backbone.history.start()

$(document).ready ->
  ToDo.init()
