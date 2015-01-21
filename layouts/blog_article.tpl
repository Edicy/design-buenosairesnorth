<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>

{% include "SiteHeader" %}
  {{ blog.rss_link }}
</head>
<body>
<div id="wrap" class="clearfix">
	<div id="header">
  <div id="logo">
   <h1 class="clearfix">{% editable site.header %}</h1>
  </div>
  <!--//logo-->
{% include "Mainmenu" %}
      {% include "MobileMenus" %}
  <div class="clearer"></div>
	</div>
	<!--//header-->
    <div id="content_top"></div>
   <div id="content_inner">
   <div class="clearer"></div>
   <div id="content_inner2">
<div class="entry">
{% if editmode %}<h1>{% editable article.title plain="true" %}<span class="author">{{ article.author.name }}</span> <span class="date">{{ article.created_at | format_date:"short" }}</span></h1>{% else %}<h1><a href="{{ article.url }}">{{ article.title }} <span class="author">{{ article.author.name }}</span> <span class="date">{{ article.created_at | date:"%b %d" }}</span></a></h1>{% endif %}
<div class="articlebody clearfix">
  <div class="excerpt" data-search-indexing-allowed="true">{% editable article.excerpt %}</div>
<div data-search-indexing-allowed="true">{% editable article.body %}</div>

  {% if editmode %}
    <div class="cfx article-tags">
        <div class="article-tag-icon"></div>
        {% editable article.tags %}
    </div>
  {% else %}
    {% unless article.tags == empty %}
        <div class="cfx article-tags">
            <div class="article-tag-icon"></div>
            {% for tag in article.tags %}
                <a href="{{ article.page.url }}/tagged/{{ tag.path }}">{{ tag.name }}</a>{% unless forloop.last %}, {% endunless %}
            {% endfor %}
        </div>
    {% endunless %}
  {% endif %}

</div>
</div>
     <a name="comments"></a>
<h1>{{ "comments_for_count" |lc }}: <span class="edy-site-blog-comments-count">{{ article.comments_count }}</span>
</h1>
{% for comment in article.comments %}
<div class="comment{% cycle 'comments': ' light', ' dark' %} edy-site-blog-comment">
<strong>{{ comment.author }}</strong>, {{ comment.created_at | format_date:"long" }} {% removebutton %}<br />
<p>{{ comment.body_html }}</p>
</div>
{% endfor %}
<div id="commentform">
{% unless comment.valid? %}<ul>
{% for error in comment.errors %}
<li>{{ error | lc }}</li>
{% endfor %}
</ul>{% endunless %}
{% commentform %}
<h2>{{ "add_a_comment" |lc }}</h2>
<table>
<tr>
 <td><strong>{{ "name" |lc }}</strong></td><td><input class="text" type="text" name="comment[author]" value="{{ comment.author }}"/></td>
</tr>
<tr>
 <td><strong>{{ "email" |lc }}</strong></td><td><input class="text" type="text" name="comment[author_email]" value="{{ comment.author_email }}"/></td>
</tr>
<tr>
 <td><strong>{{ "comment" |lc }}</strong></td><td><textarea rows="5" cols="15" name="comment[body]">{{ comment.body }}</textarea></td>
</tr>
<tr>
<td></td><td><input class="submit" type="submit" value="{{"submit"|lc}}"/>
</tr>
</table>
{% endcommentform %}
</div>
   </div>
<div id="sidebar" class="clearfix">
  <div class="rss">
<a href="{{ bloglink }}.rss">RSS</a>
</div>
{% include "Submenu" %}
{% include "Contact" %}
</div>
   <!--//contact-->
  <div class="clearer"></div>
  </div>
  <div id="content_bottom"></div>
  <!--//footer_box-->
  <div id="edicy">
   {% loginblock %}{{ "footer_login_link" | lc }}{% endloginblock %}
  </div>
  <!--//edicy-->
{% include "Search" %}
{% include "Langmenu" %}
	<!--//footer-->
</div>
<!--//wrap-->
  {% include "JS" %}
</body>
</html>
