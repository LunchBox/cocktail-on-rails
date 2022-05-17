import { Application } from "@hotwired/stimulus"
import TextareaAutogrow from 'stimulus-textarea-autogrow'
import PlacesAutocomplete from 'stimulus-places-autocomplete'


const application = Application.start()
application.register('textarea-autogrow', TextareaAutogrow)
application.register('places', PlacesAutocomplete)


// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
