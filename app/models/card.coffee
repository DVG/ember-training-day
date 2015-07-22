`import DS from 'ember-data'`

Card = DS.Model.extend
  title:       DS.attr 'string'
  description: DS.attr 'string'
  difficulty:  DS.attr 'string'
  comments:    DS.attr 'string'
  complete:    DS.attr 'boolean'
  clues:       DS.hasMany 'clue'
  points:      DS.attr 'number'

`export default Card`