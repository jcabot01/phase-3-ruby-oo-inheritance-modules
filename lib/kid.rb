# with non-namespaced modules
# require_relative './dance_module'
# require_relative './meta_dancing_module'

# class Kid
#   include Dance
#   extend MetaDancing
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end
# end

# with namespaced modules
require_relative './fancy_dance'
class Kid
  include FancyDance::InstanceMethods #include module :: Specific_InstanceMethods    :: carries over all public items over to class or module.
  extend FancyDance::ClassMethods   #extends module :: Specific_ClassMethods  
    # If you have a module whose methods you would like to be used in another class as instance methods, then you must include the module.
    # If you want a module's methods to be used in another class as class methods, you must extend the module.
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end