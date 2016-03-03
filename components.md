---
title: Components
permalink: /components/
---
<div class="component-groups">
	Valence UI provides components styled with Sass mixins and CSS to create a consistent and attractive look and feel to a site's user interface. Below you will find a list of these components, along with a link to the source code and a developer guide for how they can be consumed in your own site.
	{% assign sorted_groups = (site.componentgroups | sort: 'order') %}
	</div>
	{% for group in sorted_groups %}
	<div class="component-group">
		<h3 id="{{ group.title }}">{{ group.title }}</h3>
		<div>{{ group.description }}</div>
		<div class="component-group-items">
			{% for component in group.components %}
				{% assign item = (site.components | where: 'title', component.title | first) %}
				<h4 class="component-group-item-title" id="{{ item.title }}">{{ item.title }}</h4>
				<div class="vui-small-text component-group-item-description">{{ item.description }}</div>
				<div class="component-group-item">{{ item.content }}</div>
				<div class="component-group-link">
					<a class="vui-image-action github-image-action" href="http://github.com/Brightspace/{{ item.project }}#{{ item.package }}">
						<img src="{{ site.baseurl }}/images/GitHub-Mark-32px.png"/><span>{{ item.project }}</span>
					</a>
				</div>
			{% endfor %}
		</div>
	</div>
	{% endfor %}
</div>
