attr = DS.attr
belongsTo = DS.belongsTo
hasMany   = DS.hasMany

App.Company = DS.Model.extend
  name: attr 'string'
  address: attr 'string'
  city: attr 'string'
  country: attr 'string'
  email: attr 'string'
  phone: attr 'string'
  passports: hasMany 'passport'
  passportsCount: Em.computed.alias 'passports.length'