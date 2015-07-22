`import Ember from 'ember'`

Application = Ember.Controller.extend
  updateScore: () ->
    @set('cards', @store.all('card'))

`export default Application`