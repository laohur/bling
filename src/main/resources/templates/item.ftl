<!DOCTYPE html>
<html>
<head>
    <title>Details</title>
    <link href="/css/yjbootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!-- Custom Theme files -->
    <!--theme-style-->
    <link href="/css/yjstyle-bling.css" rel="stylesheet" type="text/css" media="all" />
    <link href="/css/yjstyle4-bling.css" rel="stylesheet" type="text/css" media="all" />
    <link href="/css/yjblingstyle-bling.css" rel="stylesheet" type="text/css" media="all" />
    <!--//theme-style-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Shopin Responsive web template, Bootstrap Web Templates, Flat Web Templates, AndroId Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <script src="/js/jquery.min.js"></script>
</head>
<body>
<!--1.banner-->
<div class="banner-top-bling">

</div>
<!--2.header-->
<div class="header">
    <!--2.1logo-->
    <div class="container">
        <div class="head">
            <div class=" logo">
                <a href="/"><img src="/images/logo.png" alt=""></a>
            </div>
        </div>
    </div>
    <!--2.1个人导航栏-->
    <div class="header-top-bling">
        <div class="container">
            <div class="col-sm-5 col-md-offset-2  header-login">
                <li><a href="/">首页</a></li>
                <a href="/user">我</a>

            </div>
            <div class="carts box_1" style="width:450px;float:right;">
                <a>
                    <h3 > <div class="total">
                        <!-- <span class="simpleCart_total"></span></div> -->
                        <!-- 点击显示隐藏切换 -->
                        <span id="mycart" style="cursor:pointer;color:#FFFFFF">我的购物车</span>
                    </div>
                    </h3>
                </a>
                <!-- 此为购物车容器,隐藏购物车时候移除carts_box子元素 -->
                <div id="carts_box" style=" position:absolute; z-index:2;width: 450px; background-color: #f9f2f4; padding: 5px;margin:10px 0 0 0;">
                    <!-- 此处为购物车列表 -->
                    <div id="carts" name=9 z-index=2 >
                        <!-- 标题 -->
                        <div class="cartHead" name=1 >
                            <label class="name cartlist2">名称</label>
                            <!-- <label class="subtitle cartlist3" >详情</label> -->
                            <label class="cartlist2">图片<img src="" height='20' /></label>
                            <label class="price cartlist2">单价</label>
                            <label class="quantity cartlist2" > 数量</label>
                            <label class="items_price cartlist2">小计</label>
                        </div>
                        <!-- 一种商品  对应order_item中一条记录  -->
                        <!-- name=item_id -->
                        <!-- <div class="cart" name=1  style="float:none;">
                            <label class="name cartlist3">name1</label>
                            <label class="subtitle cartlist3"><a href="">title1</a></label>
                            <label class="cartlist3"><img src="dimages/2.png" height='20'/></label>
                            <label class="price cartlist3">3.00</label>
                            <input class='quantity cartlist3' value=3 />件
                            <label class="items_price cartlist3">9.00</label>
                        </div> -->
                        <!-- 其它种的商品 -->
                    </div>
                    <!-- 此处购物车总结 对于order中一条订单 -->
                    <div id="summary">
                        共选择<label id="count" >2</label>件商品，总计：￥<label id="total_price" style="color:#f67777;">200.00</label>元
                        <!-- <a href="/order/add">下单</a> -->
                        <a href="order.html" target='_blank' style="float:right;margin: 0 10px 0 0;"class="button">去下单</a>
                    </div>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--3content-->
<div class="content">
    <div class="container">
        <div class="content-top-bling">
            <!--3.1左侧-->
            <div id = "blingdresser" class="col-md-6-bling" style="position: relative;">
                <!--3.1.1梳妆台商品栏-->
                <div class="mid-popular-bling ">
                    <div style="margin: 0 0 1px 0;"><p style="color: #F67777;">点击商品试试BlingBling！</p></div>
                    <!--梳妆盒单个商品-->
                    <div class="dresser_box item-grid" >
                        <p id="tishi0" class="tishi" >快去选择商品加入Bling梳妆吧</p>
                        <div id="dresser0" class="dresseri">
                            <a style="cursor: pointer;">x</a>
                            <li id="li0"  class="dresser_box_id" name=0 >
                                <img id="dimage0" name=0 src="/dimages/0.png" class="img-responsive dimage"><i></i>
                            </li>
                        </div>
                    </div>
                    <!--//梳妆盒单个商品end-->
                    <div class="dresser_box item-grid">
                        <p id="tishi1" class="tishi">快去选择商品加入Bling梳妆吧</p>
                        <div id="dresser1" class="dresseri">
                            <a style="cursor: pointer;">x</a>
                            <li id="li1"  class="dresser_box_id" name=1>
                                <img id="dimage1" name=1 src="/dimages/1.png" class="img-responsive dimage"><i></i>
                            </li>
                        </div>
                    </div>
                    <div class="dresser_box item-grid">
                        <p id="tishi2" class="tishi">快去选择商品加入Bling梳妆吧</p>
                        <div id="dresser2" class="dresseri" >
                            <a style="cursor: pointer;">x</a>
                            <li id="li2"  class="dresser_box_id" name=2 >
                                <img id="dimage2" name=2 src="/dimages/2.png" class="img-responsive dimage"><i></i>
                            </li>
                        </div>
                    </div>
                    <div class="dresser_box resizable item-grid" >
                        <p id="tishi3" class="tishi">快去选择商品加入Bling梳妆吧</p>
                        <div id="dresser3" class="dresseri">
                            <a style="cursor: pointer;">x</a>
                            <!-- li -->
                            <li id="li3" class="dresser_box_id" name=3>
                                <img id="dimage3" name=3 src="/dimages/3.png" class="img-responsive dimage"><i></i>
                            </li>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <!--3.1.2头像区域-->
                <div class="mid-popular-bling" id="dresserarea" style="position: relative;z-index:1;">
                    <div id="avatar">
                        <img id="dresserpic" src="images/pi.jpg" class="img-responsive dresserpic" alt=""/>
                    </div>
                </div>
                <!--3.1.3购物车等按钮-->
                <div class="mid-popular-bling" id="cartbutton" >
                    <a href="javascript:;" class="uploadbling" >上传照片<input type="file" id="open_file" ></a>
                    <div class="container-bling-blank">
                        <input type="submit" value="分享bling" style="float:left;width:30%;">
                        <input id="dresser2Carts"  type="submit" value="一键加入购物车" style="float:right;width:45%;">
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <!--3.2右侧-->
            <div class="col-md-6-bling2">
                <div class="single">
                    <!--3.2.1商品图-->
                    <div class="col-md-5 grid">
                        <div class="flexslider">
                            <ul class="slides">
                                <li data-thumb="images/product2.jpg">
                                    <div class="thumb-image"> <img src="images/product2.jpg" data-imagezoom="true" class="img-responsive"> </div>
                                </li>
                                <li data-thumb="images/product2.jpg">
                                    <div class="thumb-image"> <img src="images/product2.jpg" data-imagezoom="true" class="img-responsive"> </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!--3.2.2商品信息-->
                    <div class="col-md-7 single-top-in">
                        <div class="span_2_of_a1 simpleCart_shelfItem">
                            <h3 id="proname">商品名称</h3>
                            <p class="in-para" id="protags" style="color: tomato"> 标签和关键词</p>
                            <div class="price_single">
                                <span class="reducedfrom item_price">￥<span  id="proprice">140.00</span></span>
                                <div class="clearfix"></div>
                            </div>
                            <h4 class="quick">商品介绍:</h4>
                            <p class="quick_desc" id="prointroduce">介绍信息</p>
                            <span>尺寸：</span>
                            <span class="quick_desc" id="prosize">均码</span>
                            <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                            <span>颜色：</span>
                            <span class="quick_desc" id="procolor">黑色</span>
                            <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                            <span>库存：</span>
                            <span class="quick_desc" id="prostore">100</span>
                            <div class="wish-list">
                                <div class="addtobling">
                                    <ul><li style="font-size: 2em;">
                                        <a  style="cursor: pointer;" name=1>加入Bling试一试!</a>
                                    </li></ul>
                                </div>
                            </div>
                            <div class="quantity">
                                <div class="quantity-select">
                                    <div class="entry value-minus">&nbsp;</div>
                                    <div class="entry value"><span>1</span></div>
                                    <div class="entry value-plus active">&nbsp;</div>
                                </div>
                            </div>
                            <!-- 数量变化js
                            <script>
                                $('.value-plus').on('click', function(){
                                    var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)+1;
                                    divUpd.text(newVal);
                                });

                                $('.value-minus').on('click', function(){
                                    var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)-1;
                                    if(newVal>=1) divUpd.text(newVal);
                                });
                            </script> -->
                            <!-- 商品详情可以由后台生成  name=item_id -->
                            <a id="addCart" name=4  class="add-to item_add hvr-skew-backward" style="float:right;">加入购物车</a>
                            <div class="clearfix"> </div>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                    <!--3.2.3详情信息-->
                    <div class="container-bling">
                        <div class="tab-pane active text-style" id="tab1">
                            <div class="facts">
                                <h2 style="color:#F67777; " >商品详情</h2>
                                <p class="in-para"> 商品详细介绍</p>
                                <ul>
                                    <h3>商品规格：</h3>
                                    <li id="size"><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>均码</li>
                                    <li id="color"><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>黑色</li>
                                </ul>
                                <h3> 商品图片:</h3>
                                <p class="in-para">商品图仅供参考，具体信息以实物为标准。</p>
                                <img src="/images/si.jpg"  class="img-responsive">
                                <img src="/images/si.jpg"  class="img-responsive">
                                <img src="/images/si.jpg"  class="img-responsive">
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--//content-->
<!--//footer-->
<div class="footer">
    <div class="footer-middle">
        <div class="container">
            <div class="clearfix"> </div>
        </div>
    </div>
    <div class="footer-bottom">
        <div class="container">
            <p class="footer-class">Bling!Bling!Bling!联系我们：bling@bling.con.cn </p>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--//footer-->
<!--商品图仔细查看功能-->
<script src="/js/imagezoom.js"></script>
<link rel="stylesheet" href="/css/flexslider-bling.css" type="text/css" media="screen" />
<script defer src="/js/jquery.flexslider.js"></script>
<script>
    // Can also be used with $(document).ready()
    $(window).load(function() {
        $('.flexslider').flexslider({
            animation: "slide",
            controlNav: "thumbnails"
        });
    });
</script>
<!-- cookie -->
<script src="/js/js.cookie.js"></script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="/js/simpleCart.min.js"> </script>
<!-- slide -->
<script src="/js/bootstrap.min.js"></script>
<!--登录状态判断-->
<script src="/js/userstatus-bling.js"></script>

<!-- 梳妆台 -->
<link rel="stylesheet" href="/css/resize.css">
<script type="text/javascript" src='/js/dresser.lib.js'></script>
<!-- 拖拽库 -->
<!-- 拖拽库 -->
<script src="/js/jquery.ZResize.js">
    //拖拽功能初始化
    new ZResize();
    //梳妆台初始化
    //后台传入dresser，格式如下
    //公共初始化  cookies初始化
    //梳妆台初始化
    //后台传入dresser，格式如下
    if(!dressers){       var   dressers=[1,2,3,4];  }
    console.log("dresser"+dressers);

    //Cookies.set('dressers', dressers); //若cookie有问题
    if(Cookies.getJSON("dressers")){
        for(var i=0; i<4; i++){
            if(Cookies.getJSON("dressers")[i] ){
                dressers[i]=parseInt(Cookies.getJSON("dressers")[i]);
            }
        }
    }else{
        Cookies.set('dressers', dressers);
    }
    if(Cookies.getJSON("itemList"))  itemList=Cookies.getJSON("itemList");
    console.log("itemList"+itemList);
    console.log("dresser"+dressers);
    console.log("cookie"+Cookies.getJSON("dressers"));
    //$('.resizable').gresizeW();
    //购物车初始化
    carts=[];//  本应该为空,测试填入数据
    carts=[{"item_id":1,"url":"http","name":"name1","subtitle":"title1","main_image":"http","quantity":4,"price":3,"items_price":3}];
    //Cookies.set('carts', carts); //若cookie有问题

    if(Cookies.getJSON("carts")){
        carts=Cookies.getJSON("carts");
    }else{
        Cookies.set('carts', carts);
    }
</script>

<!-- 梳妆台 -->
<script type="text/javascript" src='/js/dresser.lib.js'></script>
<script src="/js/blingjs-bling.js">
    freshDresserBox();
    updateCarts();
    freshCarts();
    console.log("carts"+JSON.stringify(carts));
</script>

</body>
</html>