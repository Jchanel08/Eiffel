# Eiffel

_Rapid Static Content Websites_

Powered by [Vault Labs](https://vaultlabs.co)

***

This is a pre-configured project template that can power nearly any static website configuration you can throw at it. The Middleman static site generator serves as the base; allowing for partials, layouts, frontmatter, livereloading (for development) and extensions like blogging systems that can be installed for even more functionality. 

The project comes pre-configured with Babel JS transpiling and SCSS support using Webpack v4. This gives you support for all the current versions of JS and CSS, plus all the features that future spec's offer. For JS, thats cleaner syntax and the ability to load modules. For CSS, it's variables, autoprefixing, and color functions.

The benefits of using a static site generator are endless, but our favorites are that it gives you a clean enviroment to write your content, and a flexible system for your managing your code, and it makes development and building production-ready websites a breeze. Combine it with a static content host like [GitHub Pages](https://pages.github.com/) or [Netlify](https://www.netlify.com/) and feel like a superhero every time you "push" your site updates and see them online within minutes.

Eiffel is maintained by the team at [Vault Labs](https://vaultlabs.co).

***

## Getting Started

_Eiffel instructions are written for MacOS, but can work on Windows if you use command line._

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
You will likely use Eiffel in 2 ways. The first is to build your website, in which case you need a local development enviroment. Running `yarn eiffel` from your project folder will start a live-reload server which you can see at `http://localhost:4567`.

When you're ready to push the site live, or just send someone a completed version of the HTML that _could_ be loaded onto a server, run `yarn eiffel-build` and you will get a compressed and optimized version of your site in the `/build` folder of your project. If there are any errors with your build, they will print to the console.


## Other helpful tips
This should allow you to spin up new web projects in a matter of seconds, rather than spending hours building folder structure or finding configurations online. Use a modern IDE like [VSCode](https://code.visualstudio.com/) or [Atom](https://atom.io/) which has a terminal window built into the editor (click and "pull" from the bottom of the window when you're open to your project folder). When you're ready to show the world what you've made, deploy to a static-site deployment service like [Netlify](https://netlify.com) and be blown away by how powerful continued deployment makes you feel.
