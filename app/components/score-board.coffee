`import Ember from 'ember'`

ScoreBoard = Ember.Component.extend
  tagName: 'span'
  classNames: ['label', 'label-success']
  shouldDisplay: Ember.computed.gt('score', 0)


`export default ScoreBoard`