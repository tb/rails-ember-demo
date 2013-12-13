App.CompanyEditController = Em.ObjectController.extend
  actions:
    save: ->
      @get('model').save()
      @transitionToRoute 'companies'
