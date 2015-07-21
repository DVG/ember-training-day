`import Ember from 'ember'`

Cards = Ember.Controller.extend
  actions:
    complete: (model) ->
      model.set('complete', true)
      model.save()


`export default Cards`