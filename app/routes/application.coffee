`import Ember from 'ember'`

ApplicationRoute = Ember.Route.extend
  
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