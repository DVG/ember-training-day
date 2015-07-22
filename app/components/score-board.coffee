`import Ember from 'ember'`

ScoreBoard = Ember.Component.extend
  tagName: 'span'
  classNames: ['label', 'label-success']
  scores: Ember.computed.map 'cards', (card, index) ->
    card.get('points')
  totalScore: Ember.computed.sum('scores')
  shouldDisplay: Ember.computed.gt('totalScore', 0)


`export default ScoreBoard`