`import Ember from 'ember'`

Cards = Ember.Controller.extend
  needs: ['application']
  score: Ember.computed.alias('controllers.application.score')
  actions:
    complete: (model) ->
      model.set('complete', true)
      model.save().then( (card) =>
        @set('score', (@get('score') + card.get('points')))
      )


`export default Cards`