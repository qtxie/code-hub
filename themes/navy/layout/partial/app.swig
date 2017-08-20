<li class="plugin">
  <div class="plugin-screenshot">
    <noscript>
      <img src="{{ url_for('applications/screenshots/' + plugin.name + '.png') }}" class="plugin-screenshot-img" alt="{{ plugin.name }}">
    </noscript>
    <img data-src="{{ url_for('applications/screenshots/' + plugin.name + '.png') }}" data-sizes="auto" class="plugin-screenshot-img lazyload" alt="{{ plugin.name }}">
    <a href="{{ plugin.link }}" class="plugin-preview-link" target="_blank"><i class="fa fa-eye"></i></a>
  </div>
  <a href="{{ plugin.link }}" class="plugin-name" target="_blank">{{ plugin.name }}</a>
  <p class="plugin-desc">{{ plugin.description }}</p>
  <div class="plugin-tag-list">
    {% for tag in plugin.tags %}
      <a href="#{{ tag }}" class="plugin-tag">{{ tag }}</a>
    {% endfor %}
  </div>
</li>