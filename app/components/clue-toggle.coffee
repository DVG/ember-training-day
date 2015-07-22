`import Ember from 'ember'`

ClueToggle = Ember.Component.extend
  toggled: false
  content: null
  classNames: ['well']

  click: ->
    @toggleProperty('toggled')

`export default ClueToggle`