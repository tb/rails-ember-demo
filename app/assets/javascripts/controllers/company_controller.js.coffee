App.CompanyController = Em.ObjectController.extend
  actions:
    delete: ->
      @get('model').deleteRecord()
      @get('model').save()

    addPassport: ->
      @store.createRecord 'passport', company: @get('model')

  transitionToIndex: ->
    @transitionToRoute 'companies'

App.CompanyEditController = App.CompanyController.extend
  actions:
    save: ->
      company = @get('model')
      company.save()
      company.get('passports').forEach (passport) ->
        passport.save()

      @transitionToIndex()

App.CompaniesNewController = App.CompanyEditController.extend
  actions:
    save: ->
      company = @store.createRecord 'company', @get('model')
      company.save()
      @transitionToIndex()

