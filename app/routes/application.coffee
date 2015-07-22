`import Ember from 'ember'`

ApplicationRoute = Ember.Route.extend

  model: () ->
    @store.findAll('card')
    
  setupController: (controller, model) ->
    controller.set('cards', model)
  
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