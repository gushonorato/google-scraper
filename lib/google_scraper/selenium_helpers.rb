module SeleniumHelpers
  Capybara::Node::Element.class_eval do
    EDIT_SCREEN_HEADER_SIZE = 60 # Header size in pixels. The header is the element where the edit page title and button are (Example: Métodos de Pagamento / Salvar Métodos de Pagamento)

    def scroll_to
      synchronize do
        driver.browser.execute_script "window.scrollTo(0, #{base.native.location.y - base.native.size.height - EDIT_SCREEN_HEADER_SIZE})"
      end
    end
  end
end