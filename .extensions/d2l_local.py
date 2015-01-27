# -*- coding: utf-8 -*-

import os
import re

from docutils import nodes

from sphinx.locale import _
from sphinx.util.compat import Directive
from sphinx.util.compat import make_admonition

from pygments.lexer import RegexLexer, include
from pygments.token import *

## D2L-specific directives
class internal(nodes.Admonition, nodes.Element):
    pass

def visit_internal_node(self, node):
    self.visit_admonition(node)

def depart_internal_node(self, node):
    self.depart_admonition(node)


class InternalDirective(Directive):
    """
    An admonition used to explicitly mark internal remarks.
    """
    has_content = True
    required_arguments = 0
    optional_arguments = 1
    final_argument_whitespace = True
    option_spec = {}

    def run(self):
        ad = make_admonition(
            internal, self.name, [_('Internal')], self.options,
            self.content, self.lineno, self.content_offset, self.block_text,
            self.state, self.state_machine)

        if self.arguments:
            argnodes, msgs = self.state.inline_text(self.arguments[0],
                                                    self.lineno)
            para = nodes.paragraph()
            para += argnodes
            para += msgs
            ad[0].insert(1, para)

        return ad

class reserved(nodes.Admonition, nodes.Element):
    pass

def visit_reserved_node(self, node):
    self.visit_admonition(node)

def depart_reserved_node(self, node):
    self.depart_admonition(node)

class ReservedDirective(Directive):
    """
    An admonition used to explicitly mark "reserved" remarks.
    """
    has_content = True
    required_arguments = 0
    optional_arguments = 1
    final_argument_whitespace = True
    option_spec = {}

    def run(self):
        ad = make_admonition(
            reserved, self.name, [_('Reserved')], self.options,
            self.content, self.lineno, self.content_offset, self.block_text,
            self.state, self.state_machine)

        if self.arguments:
            argnodes, msgs = self.state.inline_text(self.arguments[0],
                                                    self.lineno)
            para = nodes.paragraph()
            para += argnodes
            para += msgs
            ad[0].insert(1,para)

        return ad


## Local lexer for parsing JSON
class D2LJsonLexer(RegexLexer):
    """
    For D2L-specific JSON data structures.

    *This localized version of the Pygments1.5 JSON lexer adds support for in-line comments.*
    """

    name = 'D2LJson'
    aliases = ['d2ljson']
    filenames = ['*.json']
    mimetypes = [ 'application/json', ]

    # integer part of a number
    int_part = r'-?(0|[1-9]\d*)'

    # fractional part of a number
    frac_part = r'\.\d+'

    # exponential part of a number
    exp_part = r'[eE](\+|-)?\d+'


    flags = re.DOTALL
    tokens = {
        'whitespace': [
            (r'\s+', Text),
            # we add these two lines here to support commenting syntax in JSON
            # while standard JSON has no commenting syntax, this lets us comment exemplars
            # and use pygmentize to format them.
            (r'//.*?\n', Comment.Single),
            (r'/\*.*?\*/', Comment.Multiline),
        ],

        # represents a simple terminal value
        'simplevalue':[
            (r'(true|false|null)\b', Keyword.Constant),
            (('%(int_part)s(%(frac_part)s%(exp_part)s|'
              '%(exp_part)s|%(frac_part)s)') % vars(),
              Number.Float),
            (int_part, Number.Integer),
            (r'"(\\\\|\\"|[^"])*"', String.Double),
        ],

        'placeholdervalue': [
            include('whitespace'),
            (r'(true|false|null)\b', Keyword.Constant),
            (r'\|', Punctuation),
            (r'\s*<(\w)+([:\.]\w+\.?\w*)*\s*>', Name.Variable),
        ],

        # the right hand side of an object, after the attribute name
        'objectattribute': [
            include('value'),
            (r':', Punctuation),
            # comma terminates the attribute but expects more
            (r',( \.\.\.)?', Punctuation, '#pop'),
            # a closing bracket terminates the entire object, so pop twice
            (r'}', Punctuation, ('#pop', '#pop')),
        ],

        # a json object - { attr, attr, ... }
        'objectvalue': [
            include('whitespace'),
            include('placeholdervalue'),
            (r'"(\\\\|\\"|[^"])*"', Name.Tag, 'objectattribute'),
            (r'}', Punctuation, '#pop'),
        ],

        # json array - [ value, value, ... }
        'arrayvalue': [
            include('whitespace'),
            include('value'),
            (r',( \.\.\.)?', Punctuation),
            (r']', Punctuation, '#pop'),
        ],

        # placeholder: we add this token to stand for a 'placeholder'
        # construction, a value that can stand for another standard JSON value,
        # in order to describe what that value -would- be in real JSON.

        # a json value - either a simple value or a complex value (object or array)
        'value': [
            include('whitespace'),
            include('simplevalue'),
            include('placeholdervalue'),
            (r'{', Punctuation, 'objectvalue'),
            (r'\[', Punctuation, 'arrayvalue'),
        ],

        # the root of a json document whould be a value
        'root': [
            include('value'),
        ],

    }


def setup(app):

    # Add local nodes/directives
    app.add_node(internal,
                 html=(visit_internal_node, depart_internal_node),
                 latex=(visit_internal_node, depart_internal_node),
                 text=(visit_internal_node, depart_internal_node))

    app.add_directive('internal', InternalDirective)

    app.add_node(reserved,
                 html=(visit_reserved_node, depart_reserved_node),
                 latex=(visit_reserved_node, depart_reserved_node),
                 text=(visit_reserved_node, depart_reserved_node))

    app.add_directive('reserved', ReservedDirective)

    # Note that add_lexer needs an instance, not a class, for some reason -- silly?
    my_D2LJsonLexer = D2LJsonLexer()
    app.add_lexer('d2ljson', my_D2LJsonLexer)
