# jekyll-playground

[![Build status][ci-image]][ci-url]

This is a sample project to highlight some of the functionality of the [Jekyll](http://jekyllrb.com/) static web site generator. The content within is only for demonstration purposes, and in reality is just a subset of the [Valence UI](http://ui.valence.d2l.com/) documentation.

## Installation

Jekyll relies on Ruby and Node.js to generate a static HTML site from content written in Markdown (or other formats). It runs on Linux, Unix or Mac OSX, and can be fiddled with to run on Windows. Please refer to Jekyll's own [Installation Guide](http://jekyllrb.com/docs/installation/) to get everything installed and configured.

## Building

Once the installation step is complete, to build the project, clone this repo to a directory on your computer:

```shell
git clone https://github.com/dlockhart/jekyll-playground.git
```

Go into the directory and run:

```shell
jekyll build
```

This will build the project into the `_site` directory. Again, there's much more information in the [Jekyll Usage](http://jekyllrb.com/docs/usage/) documentation.

### Hosting a development version

You can also build and host a development version of the site on your local machine, which is useful for previewing your changes before pushing them.

```shell
jekyll serve
```

You can then visit http://localhost:4000/ to see the site. The `serve` command will automatically rebuild when you make changes to any of the content files. Simply wait for the rebuild to complete (a few seconds) and reload your browser.

## Continuous Integration

This project is set up to be built and tested continuously after each commit using  [Travis CI](https://travis-ci.org/). You can see the build status of the latest builds and pull requests here:

https://travis-ci.org/dlockhart/jekyll-playground

Always make sure your pull requests build successfully before merging them into `master`.

## Automatic Deployment

The project is also configured to deploy automatically by Travis CI to its production location, here:

http://design.d2l.s3-website-us-west-2.amazonaws.com/

Deployment does not happen on every commit, but only on **tagged commits**. The easiest way to do this is through GitHub's [create a release](https://help.github.com/articles/creating-releases/) workflow.

When naming releases, it's best to use a [semantic version](http://semver.org/) number that best describes the type of changes that have occurred since the previous release.

[ci-url]: https://travis-ci.org/dlockhart/jekyll-playground
[ci-image]: https://travis-ci.org/dlockhart/jekyll-playground.svg?branch=master
