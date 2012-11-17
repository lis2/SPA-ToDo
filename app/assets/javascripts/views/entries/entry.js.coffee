class ToDo.Views.Entry extends Backbone.View

  template: JST['entries/entry']
  tagName: "tr"

  events:
    'change input': 'toggleStatus'
    'click a.delete': 'onDestroy'

  initialize: () ->
    @model.on('change', @render, this)
    @model.on('destroy hide', @remove, this)

  remove: () ->
    $(@el).fadeOut()

  render: ->
    $(@el).html(@template(entry: @model))
    this

  toggleStatus: () ->
    @model.toggleStatus()

  onDestroy: (event) ->
    event.preventDefault()
    @model.destroy()
