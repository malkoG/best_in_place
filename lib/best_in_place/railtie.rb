require 'rails/railtie'
require 'action_view/base'
require 'action_view/lookup_context'

module BestInPlace
  class Railtie < ::Rails::Railtie #:nodoc:
    config.after_initialize do
      lookup_context = ActionView::LookupContext.new([])
      BestInPlace::ViewHelpers = ActionView::Base.new lookup_context, {}, nil
    end
  end
end
