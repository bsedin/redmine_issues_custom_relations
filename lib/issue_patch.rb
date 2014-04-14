require_dependency 'issue'

module IssuePatch
  def self.included(base) # :nodoc:
    base.extend(ClassMethods)

    base.send(:include, InstanceMethods)

    base.class_eval do
      unloadable

      has_many :custom_relations_values, :dependent => :delete_all
    end

  end
  
  module ClassMethods
    
  end
  
  module InstanceMethods
    #Wraps the association to get the Deliverable subject.  Needed for the 
    #Query and filtering
    #def deliverable_subject
      #unless self.deliverable.nil?
        #return self.deliverable.subject
      #end
    #end
  end    
end

# Add module to Issue
Issue.send(:include, IssuePatch)
