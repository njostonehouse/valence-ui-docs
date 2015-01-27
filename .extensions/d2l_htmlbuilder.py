# -*- coding: utf-8 -*-

# Grab sphinx's version
from sphinx import __version__ as sphinx_version

# Grab the locale
from sphinx.locale import _

#from sphinx.builders import Builder
from sphinx.builders.html import StandaloneHTMLBuilder

## Local builder for overriding the canned HTML builder
class D2LHtmlBuilder(StandaloneHTMLBuilder):

    name = 'html'

    # override StandaloneHTMLBuilder.get_doc_context(self,docname,body,metatags)
    def get_doc_context(self, docname, body, metatags):
        """Collect items for the template context of a page."""

        # find out relations
        prev = next = None
        parents = []
        rellinks = self.globalcontext['rellinks'][:]
        related = self.relations.get(docname)
        # Populate titles with the list of longtitles from the env instead of titles
        # titles = self.env.titles
        titles = self.env.longtitles
        if related and related[2]:
            try:
                next = {
                    'link': self.get_relative_uri(docname, related[2]),
                    'title': self.render_partial(titles[related[2]])['title']
                }
                rellinks.append((related[2], next['title'], 'N', _('next')))
            except KeyError:
                next = None
        if related and related[1]:
            try:
                prev = {
                    'link': self.get_relative_uri(docname, related[1]),
                    'title': self.render_partial(titles[related[1]])['title']
                }
                rellinks.append((related[1], prev['title'], 'P', _('previous')))
            except KeyError:
                # the relation is (somehow) not in the TOC tree, handle
                # that gracefully
                prev = None
        while related and related[0]:
            try:
                parents.append(
                    {'link': self.get_relative_uri(docname, related[0]),
                     'title': self.render_partial(titles[related[0]])['title']})
            except KeyError:
                pass
            related = self.relations.get(related[0])
        if parents:
            parents.pop() # remove link to the master file; we have a generic
                          # "back to index" link already
        parents.reverse()

        # title rendered as HTML
        title = self.env.longtitles.get(docname)
        title = title and self.render_partial(title)['title'] or ''
        # the name for the copied source
        sourcename = self.config.html_copy_source and docname + '.txt' or ''

        # metadata for the document
        meta = self.env.metadata.get(docname)

        # local TOC and global TOC tree
        self_toc = self.env.get_toc_for(docname, self)
        toc = self.render_partial(self_toc)['fragment']

        return dict(
            parents = parents,
            prev = prev,
            next = next,
            title = title,
            meta = meta,
            body = body,
            metatags = metatags,
            rellinks = rellinks,
            sourcename = sourcename,
            toc = toc,
            # only display a TOC if there's more than one item to show
            display_toc = (self.env.toc_num_entries[docname] > 1),
        )


def setup(app):

    # have to hack into the builderclasses table directly because this overlays
    # a built-in builder
    app.builderclasses[D2LHtmlBuilder.name] = D2LHtmlBuilder

    return {'version': sphinx_version, 'parallel_read_safe': True}
