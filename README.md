# geekyll [![Gem Version](https://badge.fury.io/rb/geekyll.svg)](https://badge.fury.io/rb/geekyll)

![geekyll sample implemetation](screenshot.png)

This theme has been created with one thing in mind: Displaying a summary of all site content in the landing page. Have you ever seen those landing pages (WordPress, usually) where "all" page layouts are displayed in the home page and accessible via scrolling? That's the idea.

## What's included

* __Google fonts__.
* __Font awesome__. Bootstrap no longer support icons.
* __Bootstrap 4 alpha4__. And since the whole folder of bootstrap4 is included, you can even have access to bootstrap variables and mixins! 
* __jQuery 3.0.0__.

## Before you go

* Live implementation: [katodia.gitlab.io](//katodia.gitlab.io). 
* [Repo](//github.com/katodia/katodia.com)

## Installation

Add this line to your Jekyll site's Gemfile:

```ruby
gem "geekyll"
```

Plus, add this another one to your _config.yml or to the `:jekyll_plugins` variable within your Gemfile. It is for processing *Liquid* tags manually.

```ruby
gem "liquefy", "~> 0.1.2"
```

And add this line to your Jekyll site:

```yaml
theme: geekyll
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install geekyll

## Usage

### Front-page system

There are only two steps to follow in order to set up the front-page system:

- Make your default/landing page extend the *index* layout, like:
```yaml
---
layout: index
---
<!-- No content needed here -->
```
- Make your pages have the following attributes:
  -  **indexable**: *Boolean*. set it to "true".
  -  **priority**: *Integer*. The higher its value, the higher the position of the page in both the body and navigation bar.
  -  **class**: *String*. HTML class attribute for customizing the page style via CSS.
  -  **icon:**: *String*. Fontawesome class for setting the icon for the navigation display, e.g : `fa-rocket`.
  
### Other layouts:
 
 * `root`: Sets the base structure for every sub-layout.
 * `index`: The one you have to extend to use the front-page system.
 * `post`: **Uncomplete**. This theme is not intended to cohabitate with blogs (yet)
 * `page`:  this layout should be extended for single pages. When applies the front-page system attriubtes listed above, will be included in the landing page. Take in account that pages are still accessible via URI, e.g `example.org/portfolio`. This is useful for letting search engines know that your site is still divided into sections (by feed.xml)
 
### Includes
 
 * `analytics`: code required for tracking user activit through GA.
 * `navigation`: will automatically search your pages for them to be listed.
 * `image`: images can sometimes be large pieces of code. Include it every time you need to embeed images by passing the following params:
   * //TODO: Add params
 * `javascripts`: Contains js files to be included at the bottom of the document.
 * `social`: Creates a list of social links in base to a map passed as an argument, .e.g:
```yaml
twitter: johndoe
email: johndoe@foobar.com
```
* `opengrpah`: Meta tags for good looking media sharing.
* `footer`: Three colums footer for copyright announcement,social links and featuring technologies.

 
 ### _config.yml
 
 This theme can be customized through:
 
 * `google_analytics`: UA-XXXXX-X
 * `social_links`: A list containing the available social platforms. E.g:
 
```yaml
social_links:
  - platform: twitter
    url: //twitter.com/
    icon: fa fa-twitter
    title: Check my Twitter profile
  - platform: github
    url: //github.com/
    icon: fa fa-github
    title: Check my Github repos
  - platform: gitlab
    url: //gitlab.com/
    icon: fa fa-gitlab
    title: Check my gitlab repos
```

 * `footer`: Footer data can be set like:
 
```yaml
footer:
  copyright: Copyright &copy; 2014-2016 ...
  featuring: Site made with A. Hosting by B.
  socials:
    github: katodia
    twitter: katodians
    email: info@katodia.com
    googleplus: +Katodia-Desarrollo-Aplicaciones
```

 * `extra_js`: If you need to add more js or other misc files, do it like so:

```yaml
 extra_js:
  - assets/js/contact-form.js
  - assets/js/anchor-animation.js 
```

* `meta`: In case you need to specify more standard meta tags:

```yaml
meta: 
  keywords: web, development, game, design
  foo: bar
```

Output:

```html
<meta name"keywords" content="web, development, game, design" />
<meta name"foo" content="bar" />
```


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sonirico/geekyll/issues. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Development

To set up your environment to develop this theme, run `bundle install`.

You theme is setup just like a normal Jelyll site! To test your theme, run `bundle exec jekyll serve` and open your browser at `http://localhost:4000`. This starts a Jekyll server using your theme. Add pages, documents, data, etc. like normal to test your theme's contents. As you make modifications to your theme and to your content, your site will regenerate and you should see the changes in the browser after a refresh, just like normal.

When your theme is released, only the files in `_layouts`, `_includes`, and `_sass` tracked with Git will be released.

## License

The theme is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

