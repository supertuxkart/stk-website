---
title: STK Tools
toc: true
---


<div class="addon-grid">
  {% for addon in site.data.addons %}
  <div class="addon-card">
    <div class="addon-thumbnail" style="background: {% if addon.thumbnail %}url('{{ addon.thumbnail }}') center / auto no-repeat, {{ addon.color }}{% else %}{{ addon.color }}{% endif %}">
      {% unless addon.thumbnail %}
      <span class="addon-initials">{{ addon.name | truncate: 2, "" }}</span>
      {% endunless %}
      <span class="addon-badge">Add‑on</span>
    </div>
    <div class="addon-card-content">
      <h3 class="addon-name">{{ addon.name }}</h3>
      <p class="addon-tagline">{{ addon.tagline }}</p>
      <div class="addon-tags">
        {% for tag in addon.tags %}
        <span class="addon-tag">{{ tag }}</span>
        {% endfor %}
      </div>
      <div class="addon-meta">
        maintainer <span class="addon-author">{{ addon.maintainer }}</span>
      </div>
      <div class="addon-footer">
        <span class="addon-version">v{{ addon.version }}</span>
        <a href="{{ addon.archive }}?blender_version_min=4.2.0" class="addon-download">Download</a>
      </div>
    </div>
  </div>
  {% endfor %}
</div>


[Return](/Installing_Tools#installing-supertuxkart-blender-scripts)

