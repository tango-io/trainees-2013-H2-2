#SitemapGenerator::Sitemap.default_host = "http://trainees2013-h2-2.tangosource.com/"
SitemapGenerator::Sitemap.default_host = "localhost:3000/"
SitemapGenerator::Sitemap.sitemaps_host = ENV['SITEMAP_HOST']
SitemapGenerator::Sitemap.public_path = 'tmp/'
SitemapGenerator::Sitemap.sitemaps_path = 'sitemaps/'

SitemapGenerator::Sitemap.create do

  Project.find_each do |project|
    add project_path(project), lastmod: project.updated_at
  end 

  Page.find_each do |page|
    add page_path(page), lastmod: page.updated_at
  end 

  SitemapGenerator::Sitemap.ping_search_engines

  
end
