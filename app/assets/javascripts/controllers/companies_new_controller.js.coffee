App.CompaniesNewController = Em.ObjectController.extend
  actions:
    save: ->
      #debugger
      #@get('model').save()
      #@get('model').set('creationDate', new Date())
      company = @store.createRecord 'company', @get('model')
      company.save()
      #@transitionToRoute 'user', company
      @transitionToRoute 'companies'
