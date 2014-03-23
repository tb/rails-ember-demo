# http://stackoverflow.com/questions/19909267/ember-js-value-binding-with-html5-file-upload
App.UploadFile = Ember.TextField.extend
  tagName: "input"
  attributeBindings: ["name"]
  type: "file"
  file: null

  change: (e) ->
    reader = new FileReader()
    that = this
    reader.onload = (e) ->
      fileToUpload = e.target.result
      Ember.run ->
        that.set "file", fileToUpload
    reader.readAsDataURL e.target.files[0]
