class ToDo.Views.Entry extends Backbone.View

  template: JST['entries/entry']
  tagName: "tr"

  events:
    'change input': 'toggleStatus'
    'click a.delete': 'onDestroy'

  initialize: () ->
    @model.on('change', @render, this)
    @model.on('destroy hide', @remove, this)
    @model.on('show', @show, this)

  remove: () ->
    $(@el).fadeOut()

  show: () ->
    $(@el).fadeIn()

  render: ->
    $(@el).html(@template(entry: @model))
    this

  toggleStatus: () ->
    @model.toggleStatus()

  onDestroy: (event) ->
    event.preventDefault()
    @model.destroy()
