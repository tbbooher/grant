# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://www.grantthill.info/"

#SitemapGenerator::Sitemap.public_path = 'tmp/'

SitemapGenerator::Sitemap.create do

  add '/index'
  add '/home/about'
  add '/home/services'
  add '/comments'
  add '/home/questions'
  add '/registrations/new'
  add '/prayer_requests'

end

SitemapGenerator::Sitemap.ping_search_engines
