require 'globalize3'
require 'friendly_id'

module ActsAsPage
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def acts_as_page
      extend FriendlyId
      validates :title, presence: true, uniqueness: true

      attr_accessible :title, :body, :home, :meta_keywords, :meta_description
      translates :title, :body, :slug, :meta_keywords, :meta_description

      friendly_id :title, use: [:slugged, :globalize]
    end

    def set_home_page(model)
      model.class.update_all(home: false)
      model.update_attribute(:home, true)
    end
  end
end

ActiveRecord::Base.send(:include, ActsAsPage)

Globalize::ActiveRecord::Translation.class_eval do
  attr_accessible :locale
end
