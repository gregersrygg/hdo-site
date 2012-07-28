class Proposition < ActiveRecord::Base
  belongs_to :vote
  belongs_to :representative

  alias_method :delivered_by, :representative

  validates_presence_of :body, :description

  def plain_body
    Nokogiri::HTML.parse(body).inner_text.strip
  end

  def short_body
    str = plain_body
    str.size <= 100 ? str : "#{str[0,97]}..."
  end
end
