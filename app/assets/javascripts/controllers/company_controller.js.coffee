App.CompanyController = Em.ObjectController.extend
  actions:
    delete: ->
      @get('model').deleteRecord()
      @get('model').save()
