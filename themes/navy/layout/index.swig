<div id="content-wrap">
  <div class="wrapper">
    <div class="inner">
      <header id="plugin-list-header">
        <h1 id="plugin-list-title">Applications</h1>
      </header>
      <ul id="plugin-list" class="pnlist">
        {% for plugin in site.data['applications'] %}
          {{ partial('partial/app', {plugin: plugin}) }}
        {% endfor %}
      </ul>
      <div id="intro-get-started-wrap">
        <a href="applications/" id="intro-get-started-link">See more</a>
      </div>
    </div>
    <div class="inner">
      <header id="plugin-list-header">
        <h1 id="plugin-list-title">Scripts</h1>
      </header>
      <ul id="plugin-list" class="pnlist">
        {% for plugin in site.data['scripts'] %}
          {{ partial('partial/index', {plugin: plugin}) }}
        {% endfor %}
      </ul>
      <div id="intro-get-started-wrap">
        <a href="scripts/" id="intro-get-started-link">See more</a>
      </div>
    </div>
    <div class="inner">
      <header id="plugin-list-header">
        <h1 id="plugin-list-title">Libraries</h1>
      </header>
      <ul id="plugin-list" class="pnlist">
        {% for plugin in site.data['libraries'] %}
          {{ partial('partial/index', {plugin: plugin}) }}
        {% endfor %}
      </ul>
      <div id="intro-get-started-wrap">
        <a href="libraries/" id="intro-get-started-link">See more</a>
      </div>
    </div>
    <div class="inner">
      <header id="plugin-list-header">
        <h1 id="plugin-list-title"></h1>
      </header>
    </div>
  </div>
</div>
<script>
window.APP_SEARCH_INDEX = {{ lunr_index(site.data['applications']) }}
window.SCRIPT_SEARCH_INDEX = {{ lunr_index(site.data['scripts']) }}
window.LIB_SEARCH_INDEX = {{ lunr_index(site.data['libraries']) }}
</script>