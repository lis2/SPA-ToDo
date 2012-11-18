class ToDo.Collections.Entries extends Backbone.Collection

  model: ToDo.Models.Entry
  url: '/entries'

  initialize: () ->
    @on('remove', @hideModel, this)

  hideModel: (model) ->
    model.trigger('hide')

  showModel: (model) ->
    model.trigger('show')

  show: (id) ->
    @each(@hideModel)

    model = @get(id)
    @showModel(model)
