module KnowledgeBase::Sectionables
  class Text < Sectionable
    mount_uploader :image, KnowledgeBase.config.text_image_uploader

    has_many :sections, as: :sectionable, dependent: :destroy

    def to_s
      "#{super} ##{id}: #{heading}"
    end
  end
end
