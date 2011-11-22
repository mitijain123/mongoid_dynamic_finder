module Mongoid
  module Finders

    def method_missing(method_id, *args, &block)
      conditions = {}
      bang = false

      case method_id.to_s
      when /^find_(all|last||first)_?by_([_a-zA-Z]\w*)(!?)$/
        finder_type = $1.blank? ? :first : $1.to_sym
        bang = true if $3 == '!'

        $2.split(/_and_/).each_with_index do |attr, i|
          conditions[attr] = args[i]
        end

        result = find(finder_type, :conditions => conditions)

        if result.nil? and bang
          raise Mongoid::Errors::DocumentNotFound.new(self.class, args)
        else
          return result
        end
      else
        super
      end
    end

  end
end
