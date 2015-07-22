`import Ember from 'ember'`

Cards = Ember.Controller.extend
  needs: ['application']
  actions:
    complete: (model) ->
      model.set('complete', true)
      model.save().then( =>
        @get('controllers.application').updateScore()
      )


`export default Cards`