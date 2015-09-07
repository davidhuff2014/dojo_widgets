require 'page-object'
require "dojo_widgets/version"
require 'dojo_widgets/accordion'


module DojoWidgets
  PageObject.register_widget(:dojo_accordion, DojoWidgets::Accordion, 'div')
end
