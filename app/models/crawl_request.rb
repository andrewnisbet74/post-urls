class CrawlRequest < ActiveRecord::Base
  has_many :urls
  attr_accessible :source 
  accepts_nested_attributes_for :urls

  after_create :save_urls

  def save_urls
    Rails.logger.info "saving urls"

   # urls.each do |url|
    #  url.save(true)
   # end
  end

end
