# http://emberjs.com/guides/models/using-the-store/

App.ApplicationAdapter = DS.RESTAdapter.extend
  namespace: 'api'
  pathForType: (type) ->
    underscored = Em.String.underscore type
    Em.String.pluralize underscored

App.ApplicationSerializer = DS.ActiveModelSerializer.extend()