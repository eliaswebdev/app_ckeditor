# frozen_string_literal: true

class Ckeditor::Picture < Ckeditor::Asset
  # for validation, see https://github.com/igorkasyanchuk/active_storage_validations

  self.inheritance_column = nil

  def url_content
    rails_representation_url(storage_data.variant(resize: '800>').processed, only_path: true)
  rescue StandardError
    nil
  end

  def url_thumb
    rails_representation_url(storage_data.variant(resize: '118x100').processed, only_path: true)
  rescue StandardError
    nil
  end
end
