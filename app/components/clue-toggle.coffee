`import Ember from 'ember'`

ClueToggle = Ember.Component.extend
  toggled: false
  content: null
  classNames: ['well']


  actions:
    toggle: () ->
      @toggleProperty('toggled')

`export default ClueToggle`