# Eiffel

### Static Site Generator Template for Designers

[![middleman](https://badge.fury.io/js/middleman.svg)](https://badge.fury.io/js/middleman)

Powered by [Vault Labs](https://vaultlabs.co).

***

This is a pre-configured middleman project that is the skeleton for any static-content website you want to build. Middleman is the base, allowing for partials, layouts, frontmatter, livereloading (for development) and extensions like blogging systems that can be installed for even more functionality. The project comes pre-configured with Post-css and Babel using Webpack. This gives you all future versions of JS and CSS, plus all the features that future spec's offer. For JS, thats cleaner syntax and the ability to load modules. For CSS, it's variables, autoprefixing, and color functions.

The benefit of using a static site generator is that it gives you a clean enviroment to write your content and a flexible system for your HTML, CSS, and JS. Run `Middleman` in a development enviroment to see a local (and live-reloading) version of your project. Work on it to your hearts content, then simply run the build command `middleman build` for a compressed and optimized version of your website, ready for upload via FTP, or you can use GitHub to host your site, or use a service like Netlify to allow for instant builds of your site every time you push to Github.

Eiffel includes basic HTML setup that includes all the neccesdary meta tags for SEO.

***

## Local Development

_Eiffel is only configured to run on OS X, however all of the underlying technology works on Windows, you will just need to find seperate instructions to install._

Clone this repo or download it manually, and copy/paste to your preferred locaiton.

You need [Ruby](https://www.ruby-lang.org/en/downloads/), [Node.js](https://nodejs.org/en/), and [NPM](https://www.npmjs.com/)/[Yarn](https://yarnpkg.com/en/) to use Eiffel.

Once you have all of those, you can start installing the neccesary dependancies to Eiffel. Open terminal and type:
Install Middleman: `gem install middleman`
Install Bundler: `gem install bundler`

Navigate to your project folder (`cd/your-project`):
Install Middleman and gem dependancies: `bundle install`
Install node modules: `npm install` or `yarn`

## Development vs. Production
You will likely use Eiffel in 2 ways. The first is to build your website, in which case you need a local development enviroment. Running `yarn dev` from your project folder will start a live-reload server which you can see at `http://localhost:4567`.

When you're ready to push the site live, or just send someone a completed version of the HTML that _could_ be loaded onto a server, run `yarn build` and you will get a compressed and optimized version of your site in the `/build` folder of your project.


## Other helpful tips
This is a pre-configured project folder that should allow you to get up and going on new web projects in a matter of seconds, rather than spending hours building folder structure or finding configurations online. Use a modern IDE like Code or Atom which has a terminal window built into the editor (click and "pull" from the bottom of the window when you're open to your project folder). When you're ready to show the world what you've made, deploy to a static-site deployment service like Netlify and be blown away by how powerful continuid deployment makes you feel.
