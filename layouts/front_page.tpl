<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{{ page.language_code }}" lang="{{ page.language_code }}">
<head>
{% include "SiteHeader" %}
</head>
<body>
<div id="wrap" class="clearfix">
	<div id="header">
  <div id="logo">
   <h1 class="clearfix">{% editable site.header %}</h1>
  </div>
  <!--//logo-->
{% include "Mainmenu" %}
  <div class="clearer"></div>
	</div>
	<!--//header-->
	<div id="content_front" class="clearfix content-hyphenate">

    {% content name="slogan" %}

	</div>
	<!--//content-->
	<div id="footer">
  <div id="footer_box">
    <div id="content_top"></div>
   <div id="content_inner">
     <div id="footer_pic"{% for article in site.latest_articles limit:1 %}class="with_articles"{% endfor %} class="clearfix">
     <div class="content-hyphenate" data-search-indexing-allowed="true">{% content %}</div>
   </div>
     {% for article in site.latest_articles limit:1 %}
   <div id="footer_news">
    <h2>{{ "latest_news" |lc }}</h2>
    {% for article in site.latest_3_articles %}
    <a href="{{ article.url }}">{{ article.title }} </a>({{ article.created_at | format_date:"%B %d" }})<br />
    {% endfor %}
    <a href="{{ bloglink }}">({{ "older_news" |lc }})</a>
   </div>
   <!--//footer_news-->
     {% endfor %}
{% include "Contact" %}
  <div class="clearer"></div>
      </div>
  <div id="content_bottom"></div>
  </div>
  <!--//footer_box-->
  <div id="edicy">
   {% loginblock %}{{ "footer_login_link" | lc }}{% endloginblock %}
  </div>
  <!--//edicy-->
{% include "Search" %}
     {% include "Langmenu" %}
	</div>
	<!--//footer-->
</div>
     {% include "JS" %}
<!--//wrap-->
</body>
</html>
