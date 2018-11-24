# Eiffel

_A Simple Way to Develop Static Content Websites_

Powered by [Vault Labs](https://vaultlabs.co)

***

This is a pre-configured middleman project that is the skeleton for any static-content website you want to build. Middleman is the base, allowing for partials, layouts, frontmatter, livereloading (for development) and extensions like blogging systems that can be installed for even more functionality. The project comes pre-configured with Post-css and Babel using Webpack. This gives you all future versions of JS and CSS, plus all the features that future spec's offer. For JS, thats cleaner syntax and the ability to load modules. For CSS, it's variables, autoprefixing, and color functions.

The benefit of using a static site generator is that it gives you a clean enviroment to write your content and a flexible system for your HTML, CSS, and JS. Run `yarn run-dev` in a development enviroment to see a local (and live-reloading) version of your project. Work on it to your hearts content, then simply run the build command `yarn run-build` for a compressed and optimized version of your website, ready for upload via FTP, or you can use GitHub to host your site, or use a service like Netlify to allow for instant builds of your site every time you push to Github.

Eiffel includes basic HTML setup that includes all the neccesdary meta tags for SEO.

***

## Getting Started

_Eiffel isntructions are written for MacOS, but can work on Windows if you use your commandline._

1. Clone this repo or download it manually, and copy/paste the folder to your preferred locaiton.

2. You need [Ruby](https://www.ruby-lang.org/en/downloads/), [Node.js](https://nodejs.org/en/), [Yarn](https://yarnpkg.com/en/) to use Eiffel.
- _Yarn is used as a preference because it's much faster than NPM. You can use NPM instead if you prefer_
- If using MacOs, you must also have to make sure to install Xcode Command Line Tools: `
xcode-select --install`

3. Once you have all of those, you can start installing the neccesary dependancies to Eiffel. Open terminal and type:
- Install Middleman: `gem install middleman` (core builder for website)
- Install Bundler: `gem install bundler` (package installer for project gems)
- Install ImageMagick: `brew install imagemagick` (or download [here](https://www.imagemagick.org/script/index.php))

4. Navigate to your project folder (`cd/your-project`):
- Install Middleman and gem dependancies: `bundle install`
- Install node modules: `yarn`


## Development vs. Production
You will likely use Eiffel in 2 ways. The first is to build your website, in which case you need a local development enviroment. Running `yarn run-dev` from your project folder will start a live-reload server which you can see at `http://localhost:4567`.

When you're ready to push the site live, or just send someone a completed version of the HTML that _could_ be loaded onto a server, run `yarn run-build` and you will get a compressed and optimized version of your site in the `/build` folder of your project. If there are any errors with your build, they will be printed in the console.


## Other helpful tips
This is a pre-configured project folder that should allow you to get up and going on new web projects in a matter of seconds, rather than spending hours building folder structure or finding configurations online. Use a modern IDE like VSCode or Atom which has a terminal window built into the editor (click and "pull" from the bottom of the window when you're open to your project folder). When you're ready to show the world what you've made, deploy to a static-site deployment service like Netlify and be blown away by how powerful continuid deployment makes you feel.
