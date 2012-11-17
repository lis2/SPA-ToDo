class ToDo.Routers.Entries extends Backbone.Router
  routes:
    '': 'index'
    'entries/:id': 'show'

  index: ->
    $("#entries").html("")
    @collection = new ToDo.Collections.Entries()
    @collection.fetch()

    index_view = new ToDo.Views.EntriesIndex(collection: @collection)
    form_view = new ToDo.Views.Form(collection: @collection)
    $('#form').html(form_view.render().el)

  show: (id) ->
    @collection.show(id)

