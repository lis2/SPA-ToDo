class ToDo.Views.Form extends Backbone.View

  template: JST['entries/form']

  tagName: 'div'

  events:
    'submit #new_entry': 'createEntry'

  render: ->
    $(@el).html(@template())
    this

  createEntry: (event) ->
    event.preventDefault()
    attributes = name: $('#new_entry_name').val()

    @collection.create attributes,
      wait: true
      success: ->
        $('#new_entry_name').val("")
        $('#new_entry_name').removeClass("error")
      error: (entry, response) ->
        alert("Connection with server is broken, please try again later") if response.status == 0
        $('#new_entry_name').addClass("error")
