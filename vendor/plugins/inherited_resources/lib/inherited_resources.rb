# respond_to is the only file that should be loaded before hand. All others
# are loaded on demand.
#
require File.join(File.dirname(__FILE__), 'inherited_resources', 'respond_to')

module InheritedResources; end

class ActionController::Base
  # If you cannot inherit from InheritedResources::Base you can call
  # inherit_resource in your controller to have all the required modules and
  # funcionality included.
  #
  def self.inherit_resources
    InheritedResources::Base.inherit_resources(self)
    initialize_resources_class_accessors!
    create_resources_url_helpers!
  end
end
