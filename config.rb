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

helpers do
  def active_navigation(page)
    current_page.url.include?(page) ? "active-page" : ''
  end
end


# External Asset Pipeline
activate :external_pipeline,
  name: :webpack,
  command: build? ? "npm run build" : "npm run start",
  source: ".tmp/dist",
  latency: 1

set :markdown_engine, :redcarpet
set :css_dir, 'assets/css'
set :js_dir, 'assets/js'
set :images_dir, 'images'
activate :directory_indexes
# set :relative_links, true

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings
configure :development do
  activate :livereload, no_swf: true, livereload_css_target: 'assets/css/app.css'
end

configure :build do
  activate :minify_html
  activate :minify_css
  activate :minify_javascript,
  compressor: proc {
    ::Uglifier.new(:harmony => true)
  }
  activate :favicon_maker do |f|
    f.template_dir  = 'source/images'
    f.icons = {
      "_favicon-template.png" => [
        { icon: "apple-touch-icon-180x180-precomposed.png" },             # Same as apple-touch-icon-57x57.png, for iPhone 6 Plus with @3× display
        { icon: "apple-touch-icon-152x152-precomposed.png" },             # Same as apple-touch-icon-57x57.png, for retina iPad with iOS7.
        { icon: "apple-touch-icon-144x144-precomposed.png" },             # Same as apple-touch-icon-57x57.png, for retina iPad with iOS6 or prior.
        { icon: "apple-touch-icon-120x120-precomposed.png" },             # Same as apple-touch-icon-57x57.png, for retina iPhone with iOS7.
        { icon: "apple-touch-icon-114x114-precomposed.png" },             # Same as apple-touch-icon-57x57.png, for retina iPhone with iOS6 or prior.
        { icon: "apple-touch-icon-76x76-precomposed.png" },               # Same as apple-touch-icon-57x57.png, for non-retina iPad with iOS7.
        { icon: "apple-touch-icon-72x72-precomposed.png" },               # Same as apple-touch-icon-57x57.png, for non-retina iPad with iOS6 or prior.
        { icon: "apple-touch-icon-60x60-precomposed.png" },               # Same as apple-touch-icon-57x57.png, for non-retina iPhone with iOS7.
        { icon: "apple-touch-icon-57x57-precomposed.png" },               # iPhone and iPad users can turn web pages into icons on their home screen. Such link appears as a regular iOS native application. When this happens, the device looks for a specific picture. The 57x57 resolution is convenient for non-retina iPhone with iOS6 or prior. Learn more in Apple docs.
        { icon: "apple-touch-icon-precomposed.png", size: "57x57" },      # Same as apple-touch-icon.png, expect that is already have rounded corners (but neither drop shadow nor gloss effect).
        { icon: "apple-touch-icon.png", size: "57x57" },                  # Same as apple-touch-icon-57x57.png, for "default" requests, as some devices may look for this specific file. This picture may save some 404 errors in your HTTP logs. See Apple docs
        { icon: "favicon-196x196.png" },                                  # For Android Chrome M31+.
        { icon: "favicon-160x160.png" },                                  # For Opera Speed Dial (up to Opera 12; this icon is deprecated starting from Opera 15), although the optimal icon is not square but rather 256x160. If Opera is a major platform for you, you should create this icon yourself.
        { icon: "favicon-96x96.png" },                                    # For Google TV.
        { icon: "favicon-32x32.png" },                                    # For Safari on Mac OS.
        { icon: "favicon-16x16.png" },                                    # The classic favicon, displayed in the tabs.
        { icon: "favicon.png", size: "16x16" },                           # The classic favicon, displayed in the tabs.
        { icon: "favicon.ico", size: "64x64,32x32,24x24,16x16" },         # Used by IE, and also by some other browsers if we are not careful.
        { icon: "mstile-70x70.png", size: "70x70" },                      # For Windows 8 / IE11.
      ]
    }
  end
end

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
