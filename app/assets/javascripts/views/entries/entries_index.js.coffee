class ToDo.Views.EntriesIndex extends Backbone.View

  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('add', @appendEntry, this)

  render: ->
    @collection.each(@appendEntry)

  appendEntry: (entry) ->
    view = new ToDo.Views.Entry(model: entry)
    $('#entries').append(view.render().el)

