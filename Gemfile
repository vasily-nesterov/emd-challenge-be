source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Core
gem 'rails',    '5.1.4'
gem 'pg',       '0.20.0'
gem 'puma',     '3.11.2'

# JSON views
gem 'jbuilder', '2.7.0'

# Handle Cross-Origin Resource Sharing (CORS), making front-end app send AJAX requests to back-end
gem 'rack-cors', '1.0.2'

# PDF generation
gem 'wicked_pdf',         '1.1.0'
gem 'wkhtmltopdf-binary', '0.12.3.1'
gem 'responders',         '2.4.0'

group :development, :test do
  gem 'byebug',      '>= 10.0.0'

  gem 'rspec-rails',       '>= 3.7.2'
  gem 'factory_bot_rails', '>= 4.8.2'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'

  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :dev_tools do
  gem 'annotate',  '>= 2.7.2'
end
