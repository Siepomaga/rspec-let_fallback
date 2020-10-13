module RSpec
  module LetFallback
    module Methods
      def let?(name, fallback)
        our_module = RSpec::Core::MemoizedHelpers.module_for(self.class)

        return fallback unless our_module.instance_methods(false).include?(name)

        our_module.instance_method(name).bind(self).call
      end
    end
  end
end
