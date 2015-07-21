`import Ember from 'ember'`

<%= classifiedModuleName %>Controller = Ember.Controller.extend
  # The purpose of a controller is to decorate the loaded model with non-persistant application state, and handle interaction with the user
  # This may take the form of simple properties, like:
  # foo: "bar"
  # 
  # When you create inputs in your templates, you'll bind it's value to a controller property like above.
  #
  # methods like:
  # baz: () ->
  #   @get('foo')
  #
  # or computed properties, which are awesome ways to automatically calculate values:
  # shouldShowThing: Ember.computed.notEmpty('foo') 
  # Which will evaluate to true as long as foo has a value.

  # The actions hash is for responding to user events. For instance, if you have a button that will send a form to the backend, you may do:
  # actions:
  #   submitTheForm: () ->
  #     @get('model').set('someAttr', true).save()
  
  actions:


`export default <%= classifiedModuleName %>Controller`