# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

# Layouts
# https://middlemanapp.com/basics/layouts/


# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false


# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'


# External Asset Pipeline
activate :external_pipeline,
  name: :webpack,
  command: build? ? "npm run build" : "npm run start",
  source: ".tmp/dist",
  latency: 1

set :css_dir, 'assets/css'
set :js_dir, 'assets/js'
set :images_dir, 'images'

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings
configure :development do
  activate :livereload, no_swf: true, livereload_css_target: 'assets/css/app.css'
end
# configure :build do
#   activate :minify_css
#   activate :minify_javascript
# end


# Google Analytics configuration
activate :google_analytics do |ga|
  ga.tracking_id = 'UA-XXXXXXX-X' # Replace with your property ID.
  # Removing the last octet of the IP address (default = false)
  # ga.anonymize_ip = false

  # Tracking across a domain and its subdomains (default = nil)
  # ga.domain_name = 'example.com'

  # Tracking across multiple domains and subdomains (default = false)
  # ga.allow_linker = false

  # Enhanced Link Attribution (default = false)
  # ga.enhanced_link_attribution = false

  # Log detail messages to the console (default = false)
  # ga.debug = false

  # Trace debugging will output more verbose information to the console (default = false)
  # ga.debug_trace = false

  # Disable extension (default = false)
  # ga.disable = true

  # Testing your implementation without sending hits (default = true) in development
  # ga.test = true

  # Compress the JavaScript code (default = false)
  # ga.minify = false

  # Output style - :html includes <script> tag (default = :html)
  # ga.output = :js
end
