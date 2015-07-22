`import Ember from 'ember'`

StoryCard = Ember.Component.extend
  tagName: ''

  shouldDisplay: Ember.computed.equal('card.complete', false)

  actions:
    complete: () ->
      @sendAction('action', @get('card'))

`export default StoryCard`