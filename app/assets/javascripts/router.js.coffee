# For more information see: http://emberjs.com/guides/routing/

App.Router.map ->
  @resource 'companies', ->
    @route 'new'
    @resource 'company', path: '/:company_id', ->
      @route 'edit'
      @resource 'passport'

App.IndexRoute = Em.Route.extend
  redirect: -> @transitionTo 'companies'

App.CompaniesRoute = Em.Route.extend
  model: -> @store.find 'company'
  renderTemplate: -> @render 'application', into: 'application'

App.CompanyEditRoute = Em.Route.extend
  model: -> @modelFor 'company'
  renderTemplate: -> @render 'companies/edit', into: 'application'

App.CompaniesIndexRoute = Em.Route.extend
  model: -> @store.find 'company'
  renderTemplate: -> @render 'companies/index', into: 'application'

App.CompaniesNewRoute = Em.Route.extend
  model: -> Em.Object.create({})
  renderTemplate: -> @render 'companies/edit', into: 'application'