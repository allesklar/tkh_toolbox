require "tkh_toolbox/version"
require 'tkh_toolbox/tkh_toolbox_helper'

module TkhToolbox
  class Engine < ::Rails::Engine
    # to extend the application helper in the host app
    initializer 'tkh_toolbox.helper' do |app|
      ActionView::Base.send :include, TkhToolboxHelper
    end
  end
end
