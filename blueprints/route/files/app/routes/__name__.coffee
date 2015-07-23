`import Ember from 'ember'`

<%= classifiedModuleName %>Route = Ember.Route.extend

  # beforeModel is called before the model hook. It's approprate to override if you need to:
  # 1. Determine if you need to abort the transition into this route, or redirect to another route
  # 2. Perform some asyncronous action prior to calling the model hook.
  # 
  # if you return a promise from this hook, the transition will pause until it is resovled.
  #
  # See http://emberjs.com/api/classes/Ember.Route.html#method_beforeModel for more information
  #
  # beforeModel: (transition) ->

  # The model hook provides a place to load data from the backend.
  # To load all records for a model, use `@store.findAll('model')
  #
  # To load a specific model, use `@store.find('model', params.model_id)`
  # See http://guides.emberjs.com/v1.10.0/routing/defining-your-routes/ for information on defining
  # parameters with dynamic segments
  #
  # model: (params, transition) ->

  # afterModel is called after the model hook has resolved, and more or less works like beforeModel, 
  # and is appropriate for any operation that needs to be done after the model has resolved but before
  # the controller is set up, such as transitioning to another route based on the model
  #
  # afterModel: (resolvedModel, transition) ->

  # setupController is a hook to set controller properties from the current route.
  # The default implementation sets a property called 'model' with the model resolved from the model hook.
  # If you have other default properties you want to set on a controller, you can override this hook, but you should remember
  # to set the model property.
  # 
  # setupController: (controller, model) ->
  #   @_super(controller, model) # Set model property on controller


  # actions:

    # The willTransition action is fired when you are about to exit a route by navigating somewhere else
    # or forcibly transitioning through some other means. This hook provides an opportunity to display a 
    # "navigate away" message, or things of that nature.
    #
    # willTransition: (transition) -> 

`export default <%= classifiedModuleName %>Route`