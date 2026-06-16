class Task < ApplicationRecord
  validates :title ,presence: true, uniqueness: true

  # before_validation :set_default_name
  # after_validation :show_validation_status
  # before_save :capitalize_name
  # after_save {puts "After save successfully"}
  # before_create :set_default_description
  # after_create {puts "After create callback"}
  # before_update {puts "Before update callback"}
  # after_update {puts"After update callback"}
  # before_destroy {puts "Before destory callback"}
  # after_destroy {puts "After destroy callback"}
  # around_save :log_save
  # before_commit {puts "Before commit callback"}
  # after_commit {puts "After commit Task permanently saved"}

  # private

  # def set_default_name
  #   self.name = "Untitled" if name.blank?
  #   puts "Before validation"
  # end

  # def show_validation_status
  #   if errors.any?
  #     puts "Validation Failed:"
  #     puts errors.full_messages
  #   else
  #     puts "Validation Passed"
  #   end
  # end

  # def capitalize_name
  #   self.name = name.capitalize
  #   puts "Before save callback"
  # end

  # def set_default_description
  #   self.description = "Working on task" if description.blank?
  #   puts "Before create callback"
  # end

  # def log_save
  #   puts "Before arround save"

  #   yield

  #   puts "After arround save"
  # end
end

