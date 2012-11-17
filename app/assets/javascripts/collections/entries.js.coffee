class ToDo.Collections.Entries extends Backbone.Collection

  model: ToDo.Models.Entry
  url: '/entries'

  initialize: () ->
    @on('remove', @hideModel, this)

  hideModel: (model) ->
    model.trigger('hide')

  show: (id) ->
    modelsToRemove = @filter( (entry) ->
      return entry.id.toString() != id
    );
    @remove(modelsToRemove)
