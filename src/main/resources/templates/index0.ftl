<html>
<head>
    <meta charset="UTF-8">
    <title>Bling虚拟梳妆台</title>
    <link href="/css/main.css" rel="stylesheet">
</head>
<body>
<h3>Bling虚拟梳妆台</h3>
<#if msg??>
    <label>${msg}</label>
</#if>
<#if Session.user??>
    user=Session.user;
</#if>



<nav>
    <a href="/user">我</a>
    <a id="all">所有</a>
    <a id="cat">帽子</a>
    <a id="hairpin">发夹</a>
    <a id="hairstyle"> 发型</a>
    <a id="glass">眼镜</a>
    <a id="cart">购物车</a>
    <input id="search" placeholder="搜一搜"/>
</nav>

<div id="dresser-box">

</div>

<div id="items-box" >

</div>
<script src="/js/main.js" >

</script>
</body>
</html>