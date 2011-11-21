module Mongoid
  module Finders

   def method_missing(method_id, *arguments, &block)
      conditions = {}
      case method_id.to_s
        when /^find_(all|last||first)_?by_([_a-zA-Z]\w*)$/
          finder_type = !$1.blank? ? $1.to_sym : :all
          $2.split(/_and_/).each_with_index do |attr, i|
            conditions[attr] = arguments[i]
          end
          find(finder_type, :conditions => conditions)
        else
          super
      end
    end 
  end
end