`import Ember from 'ember'`
ModalDialogComponent = Ember.Component.extend
  fadeIn: ( ->
    @$("#app-modal .modal").show( =>
      @$("#app-modal .modal-backdrop, #app-modal .modal").addClass "in"
    )
  ).on 'didInsertElement'
  actions:
    close: ->
      @sendAction()
      
`export default ModalDialogComponent;`