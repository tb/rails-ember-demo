App.PassportController = Em.ObjectController.extend
  actions:
    delete: ->
      isNew = @get('model.isNew')
      @get('model').deleteRecord()
      @get('model').save() unless isNew
