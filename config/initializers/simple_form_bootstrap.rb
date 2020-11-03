# frozen_string_literal: true

# Please do not make direct changes to this file!
# This generator is maintained by the community around simple_form-bootstrap:
# https://github.com/rafaelfranca/simple_form-bootstrap
# All future development, tests, and organization should happen there.
# Background history: https://github.com/plataformatec/simple_form/issues/1561

# Uncomment this and change the path if necessary to include your own
# components.
# See https://github.com/plataformatec/simple_form#custom-components
# to know more about custom components.
# Dir[Rails.root.join('lib/components/**/*.rb')].each { |f| require f }

# Use this setup block to configure all options available in SimpleForm.
SimpleForm.setup do |config|
  # Default class for buttons
  config.button_class = 'btn'

  # Define the default class of the input wrapper of the boolean input.
  config.boolean_label_class = 'form-check-label'

  # How the label text should be generated altogether with the required text.
  config.label_text = lambda { |label, required, explicit_label| "#{label} #{required}" }

  # Define the way to render check boxes / radio buttons with labels.
  config.boolean_style = :i