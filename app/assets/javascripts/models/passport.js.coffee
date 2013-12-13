attr = DS.attr
belongsTo = DS.belongsTo
hasMany   = DS.hasMany

App.Passport = DS.Model.extend
  title: attr 'string'
  company: belongsTo 'company'