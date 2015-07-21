`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @route "index", { path: "/" }
  @route "cards", { path: "/cards" }
  
`export default Router`
