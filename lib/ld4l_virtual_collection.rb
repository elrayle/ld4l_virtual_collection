require "ld4l_virtual_collection/engine"

module Ld4lVirtualCollection
  class Engine < ::Rails::Engine

    engine_name 'ld4l_virtual_collection'

    # -----------------------------------------
    #  Default configurations
    # -----------------------------------------
    # triplestore configuration
    config.triplestore = ActiveSupport::OrderedOptions.new
    config.triplestore.default_repository = 'sqlite3:db/vc_triplestore.sqlite'

    # URI generation configuration
    config.urigenerator = ActiveSupport::OrderedOptions.new
    config.urigenerator.base_uri               = 'http://localhost/triples-dev/'
    config.urigenerator.bibliographic_base_uri = 'http://localhost/bibref/'
    config.urigenerator.person_base_uri        = 'http://localhost/individual/'
  end

end
