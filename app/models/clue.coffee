`import DS from 'ember-data'`

Clue = DS.Model.extend
  content: DS.attr 'string'
  card:    DS.belongsTo 'card'

`export default Clue`