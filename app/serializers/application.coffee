`import { ActiveModelSerializer } from 'active-model-adapter'`


# HAX. It's kind of a weird time for ember right now.
ActiveModelSerializer.reopen({
  isNewSerializerAPI: true
});


ApplicationSerializer = ActiveModelSerializer.extend()

`export default ApplicationSerializer`
