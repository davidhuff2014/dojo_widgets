module DojoWidgets
  class Accordion < PageObject::Elements::Div

    def select_panel(label)
      span_element(class: 'dijitAccordionText', text: label).click
    end

    def panel_for(label)
      panels =  div_elements(class: 'dijitAccordionInnerContainer')
      the_panel = panels.find do |panel|
        panel.span_element(class: 'dijitAccordionText', text: label)
      end
      the_panel.div_element(class: 'dijitAccordionChildWrapper')
    end
  end
end