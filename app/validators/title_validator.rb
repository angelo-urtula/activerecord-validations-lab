class TitleValidator < ActiveModel::Validator
    def validate(record)
        unless record.title.match?(/Won't Believe/)
            record.errors[:title] << "Post is not clickbait"
        end
    end
end