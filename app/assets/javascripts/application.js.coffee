#= require jquery
#= require jquery_ujs
#= require jquery-fileupload
#= require handlebars
#= require ember
#= require ember-data
#= require ember-console-utils
#= require_self
#= require app

# for more details see: http://emberjs.com/guides/application/
window.App = Ember.Application.create
  rootElement: '#ember-app'

#= require_tree .