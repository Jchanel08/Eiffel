# Eiffel

_Rapidly Build Static Content Websites_

Powered by [Vault Labs](https://vaultlabs.co)

***

Eiffel is an opinionated framework to power your static content websites. It uses [Middleman](https://middlemanapp.com) as a base to build the content, and also includes a pre-configured webpack configuration, and a basic template of all the core ingredients needed in any new website (think SEO header tags, CSS utility classes, Templates for headers, layouts, footers).

Middleman drives the core of tools you will use to build a new website: allowing for partials, layouts, frontmatter, livereloading (for development). All of these are pre-installed and pre-configured in Eiffel, you can also easily add blog-like functionality with [one additional extension](https://middlemanapp.com/basics/blogging/).

Webpack handles most of the assets, including Babel JS transpiling and SCSS support. This gives you support for all the current versions of JS and CSS, plus all the features that future spec's offer. For JS, thats cleaner syntax and the ability to load modules. For CSS, it's variables, autoprefixing, and color functions.

Eiffel can be combined with a static content host like [Netlify](https://www.netlify.com/), which features continuous deployment. Simply sync your code with GitHub, and Netlify will build & serve the latest version of your website. 

Eiffel is maintained by the team at [Vault Labs](https://vaultlabs.co).

***

## Getting Started

_Instructions are written for MacOS; however all technologies will work on Windows/Linux_

1. Clone this repo or download it manually, and copy/paste the folder to your preferred location.

2. You need [Ruby](https://www.ruby-lang.org/en/downloads/), [Node.js](https://nodejs.org/en/), [Yarn](https://yarnpkg.com/en/) to use Eiffel. Make sure those have been installed first.
- _Yarn is used as a preference because it's much faster than NPM. You can use NPM if you prefer_
- If using MacOs, you must also have to make sure to install Xcode Command Line Tools: `
xcode-select --install`

3. Next, youinstall the neccesary dependancies via terminal:
- Install Middleman: `gem install middleman` (core builder for website)
- Install Bundler: `gem install bundler` (package installer for project gems)
- Install ImageMagick: `brew install imagemagick` (or download [here](https://www.imagemagick.org/script/index.php))

4. Navigate to your project folder (`cd/your-project`) and:
- Install Middleman and gem dependancies: `bundle install`
- Install node modules: `yarn`


## Development vs. Production
When building your website locally: use the terminal command `yarn eiffel` from your project folder to start a live-reload server that will preview your website at `http://localhost:4567`. Middleman will run in the background and render the final build version of your website, without creating the actual files in your project folder.

When you're ready to push the site live, or need a copy of the production-ready code that _could_ be loaded onto a web server: run `yarn eiffel-build` and a compressed  optimized version of your site in the `/build` folder of your project. If there are any errors with your build, they will print to the console.


## Other helpful tips
- This should allow you to spin up new web projects in a matter of seconds, rather than spending hours building folder structure or finding configurations online. It is intended to allow for lots of hacking to achieve whatever project you're looking to tackle.
- Use a modern IDE like [VSCode](https://code.visualstudio.com/) or [Atom](https://atom.io/) which has a terminal window built into the editor. 
- When you're ready to show the world what you've made, deploy to a static-site deployment service like [Netlify](https://netlify.com) and be blown away by fast your new static content website loads in browsers.
