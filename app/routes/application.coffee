`import Ember from 'ember'`

ApplicationRoute = Ember.Route.extend

  model: () ->
    new Ember.RSVP.Promise (resolve, reject) ->
      Ember.$.getJSON('/api/scores.json').then( (response) ->
        resolve response
      , (error) ->
        reject error
      )
    
  setupController: (controller, model) ->
    controller.set('score', model.score)
  
  actions:
    openModal: (modalController, properties={}) ->
      @controllerFor(modalController).setProperties(properties)
      @render modalController,
        into: 'application'
        outlet: 'modal'
        
    closeModal: ->
      @disconnectOutlet
        outlet: 'modal'
        parentView: 'application'

`export default ApplicationRoute`