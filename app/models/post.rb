class Post < ActiveRecord::Base
    include ActiveModel::Validations
    validates_with TitleValidator
    validates :title, presence: true
    validates :content, length: {minimum: 10 }
    validates :summary, length: {maximum: 100}
    validates_inclusion_of :category, :in => %w(Fiction Non-Fiction)
end
