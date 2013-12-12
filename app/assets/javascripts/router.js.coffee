# For more information see: http://emberjs.com/guides/routing/

App.Router.map ->
  @resource 'companies', path: '/'

App.CompaniesRoute = Ember.Route.extend
  model: ->
    @store.find 'company'