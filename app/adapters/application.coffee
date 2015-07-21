`import ActiveModelAdapter from 'active-model-adapter'`

ApplicationAdapter = ActiveModelAdapter.extend
  namespace: 'api'

  # MOAR HAX
  shouldReloadAll: () ->
    false

`export default ApplicationAdapter`
