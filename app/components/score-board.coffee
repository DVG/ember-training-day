`import Ember from 'ember'`

ScoreBoard = Ember.Component.extend
  tagName: ''
  shouldDisplay: Ember.computed.gt('score', 0)


`export default ScoreBoard`