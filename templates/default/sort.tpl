<{include file="header.tpl"}>
<div id="article">
	<{foreach from=$article item=value}>
		<div class="article-list">
			<h1><a href="/Article/show/id/<{$value.aid}>" title="<{$value.title}>"><{$value.title}></a></h1>
			<span><a href="/Sort/show/id/<{$value.sortid}>" title="查看所有 <{$value.sortname}> 分类下文章"><{$value.sortname}></a> | <a><{$value.date}></a> | <a href="/Article/show/id/<{$value.aid}>#comment" title="查看所有 <{$value.title}> 的评论">评论<{$value.comnum}>次</a><!-- | <a>阅读<{$value.views}>次</a>--></span>
			<p><{$value.content|htmlspecialchars_decode|truncate:500:"..."}></p>
			<span style="margin:10px 0 0 0;"><a href="/Article/show/id/<{$value.aid}>">[阅读全文-></a></span>
		</div>
	<{foreachelse}>
		<div class="article-list">暂无数据！</div>
	<{/foreach}>
</div>
<{include file="sidebar.tpl"}>
<div class="clean"></div>
<{include file="footer.tpl"}>