attr = DS.attr

App.Company = DS.Model.extend
  name: attr 'string'
  address: attr 'string'
  city: attr 'string'
  country: attr 'string'
  email: attr 'string'
  phone: attr 'string'
