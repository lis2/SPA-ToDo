class ToDo.Collections.Entries extends Backbone.Collection

  model: ToDo.Models.Entry
  url: '/entries'

  initialize: () ->
    @on('remove', this.hideModel, this)

  hideModel: (model) ->
    model.trigger('hide')

  show: (id) ->
    modelsToRemove = this.filter( (entry) ->
      return entry.id.toString() != id
    );
    this.remove(modelsToRemove)
