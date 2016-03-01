---
title: Forms
description: Styles to display forms.
components:
- title: Inputs
  package: vui-input
- title: Fields
  package: vui-field
order: 14
---

<div style="display:inline-block;">
	<label class="vui-field-label" for="userName">Name</label>
	<input id="userName" type="text" class="vui-input-text" placeholder="Enter a name..." />
	<br />
	<label class="vui-radio-label">
		<input type="radio" class="vui-input-radio" checked />hot dog
	</label>
	<br />
	<label class="vui-radio-label">
		<input type="radio" class="vui-input-radio" name="food" />hamburger
	</label>
	<br />
	<label class="vui-checkbox-label">
		<input type="checkbox" class="vui-input-checkbox" />Add Fries
	</label>
	<br />
	<select class="vui-input-select">
		<option>Pick Up</option>
		<option>Delivery</option>
	</select>
	<br />
	<textarea class="vui-input-textarea" placeholder="Special Instructions"></textarea>
</div>
