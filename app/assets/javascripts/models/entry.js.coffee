class ToDo.Models.Entry extends Backbone.Model
  toggleStatus: () ->
    if this.get('status') == 'incomplete'
      this.set({'status': 'complete'})
    else
      this.set({'status': 'incomplete'})
    this.save()

