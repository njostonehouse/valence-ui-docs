---
title: Components
permalink: /components/
---
<div class="component-groups">
	<div class="components-description">Valence UI provides components styled with Sass mixins and CSS to create a consistent and attractive look and feel to a site's user interface. Below you will find a list of these components, along with a link to the source code and a developer guide for how they can be consumed in your own site.</div>
	{% assign sorted_groups = (site.componentgroups | sort: 'order') %}
	{% for group in sorted_groups %}
	<div class="component-group">
		<h3 id="{{ group.title }}">{{ group.title }}</h3>
		<div class="component-group-description">{{ group.description }}</div>
		<div class="component-group-items">
			{% for component in group.components %}
				{% assign item = (site.components | where: 'title', component.title | first) %}
				<h4 class="component-group-item-title" id="{{ item.title }}">{{ item.title }}</h4>
				<div class="component-group-item-description">{{ item.description }}</div>
				<div class="component-group-wrapper">
					<div class="component-group-item">{{ item.content }}</div>
					<div class="component-group-link">
						<a class="vui-image-action github-image-action" href="http://github.com/Brightspace/{{ item.project }}#{{ item.package }}">
							<img src="{{ site.baseurl }}/images/GitHub-Mark-32px.png"/><span>{{ item.project }}</span>
						</a>
					</div>
				</div>
			{% endfor %}
		</div>
	</div>
	{% endfor %}
</div>
<div class="stationary-menu-wrapper">
	<div class="stationary-menu">
		{% for group in sorted_groups %}
			<a class="nav-group-title" href="#{{ group.title }}">{{ group.title }}</a>
			<ul class="nav-group-items">
			{% for component in group.components %}
				<li><a class="vui-small-text" href="#{{ component.title }}">{{ component.title }}</a></li>
			{% endfor %}
			</ul>
		{% endfor %}
	</div>
</div>
