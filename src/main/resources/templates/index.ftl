<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
    <link href="css/bootstrap-bling.css" rel="stylesheet" type="text/css" media="all" />
    <!-- Custom Theme files -->
    <link href="css/style-bling.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style4-bling.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/blingstyle-bling.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/yjblingstyle-bling.css" rel="stylesheet" type="text/css" media="all" />
    <!--//theme-style-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Shopin Responsive web template, Bootstrap Web Templates, Flat Web Templates, AndroId Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!--//theme-style-->
    <script src="js/jquery.min.js"></script>

    <script type="text/javascript" src="js/jquery.js"></script>
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
                <a href="/"><img src="images/logo.png" alt=""></a>
            </div>
        </div>
    </div>
    <!--2.1个人导航栏-->
    <div class="header-top-bling">
        <div class="container">
            <div class="col-sm-5 col-md-offset-2  header-login" style="width:20%">
                <a href="/user">我</a>
            </div>
            <div class="cart box_1" style="width: 450px;float:right;">
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
                        <!-- name=item_id -->
                        <div class="cartHead" name=1 >
                            <label class="name cartlist2">名称</label>
                            <!-- <label class="subtitle cartlist3" >详情</label> -->
                            <label class="cartlist2">图片<img src="" height='20' /></label>
                            <label class="price cartlist2">单价</label>
                            <label class="quantity cartlist2" > 数量</label>
                            <label class="items_price cartlist2">小计</label>
                        </div>
                        <!-- 第二种商品  对应order_item中一条记录  -->
                        <!-- <div class="cart_id" name=2  style="float:none;">
                            <label class="name cartlist">name1</label>
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
                        <a href="/order" target='_blank' style="float:right;margin: 0 10px 0 0;"class="button">去下单</a>
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
            <!--3.1主要栏目-->
            <!--3.1.1左侧-->
            <div id = "blingdresser" class="col-md-6-bling">
                <!--梳妆台商品栏-->
                <div class="mid-popular-bling ">
                    <div  style="margin: 0 0 1px 0;"> <p style="color: #F67777;">点击商品试试BlingBling！</p></div>
                    <!--梳妆盒单个商品-->

                    <div class="dresser_box  item-grid" >
                        <p id="tishi0" class="tishi" >快去选择商品加入Bling梳妆吧</p>
                        <div id="dresser0" class="dresseri">
                            <a style="cursor: pointer;" >x</a>
                            <li id="li0"  class="dresser_box_id" name=0 >
                                <img id="dimage0" name=0 src="./dimages/0.png" class="img-responsive dimage"><i></i></li>
                        </div>
                    </div>

                    <div class="dresser_box item-grid">
                        <p id="tishi1" class="tishi">快去选择商品加入Bling梳妆吧</p>
                        <div id="dresser1" class="dresseri">
                            <a style="cursor: pointer;" >x</a>
                            <li id="li1"  class="dresser_box_id" name=1>
                                <img id="dimage1" name=1 src="./dimages/1.png" class="img-responsive dimage"><i></i></li>
                        </div>
                    </div>

                    <div class="dresser_box item-grid">
                        <p id="tishi2" class="tishi">快去选择商品加入Bling梳妆吧</p>
                        <div id="dresser2" class="dresseri" >
                            <a style="cursor: pointer;">x</a>
                            <li id="li2"  class="dresser_box_id" name=2 >
                                <img id="dimage2" name=2 src="./dimages/2.png" class="img-responsive dimage"><i></i></li>
                        </div>
                    </div>

                    <div class="dresser_box item-grid resizable" >
                        <p id="tishi3" class="tishi">快去选择商品加入Bling梳妆吧</p>
                        <div id="dresser3" class="dresseri">
                            <a style="cursor: pointer;" >x</a>
                            <!-- li -->
                            <li id="li3" class="dresser_box_id" name=3>
                                <img id="dimage3" name=3 src="./dimages/3.png" class="img-responsive dimage"><i></i></li>
                        </div>
                    </div>

                    <div class="clearfix"></div>
                </div>

                <!--头像区域-->
                <div class="mid-popular-bling" id="dresserarea" style="position: relative;z-index:1;">
                    <div id="avatar" >
                        <img id="dresserpic" src="images/pi.jpg" class="img-responsive dresserpic" alt="" tyle="position: relative;z-index: 1;"  />
                    </div>
                    <!-- <div class="clearfix"></div> -->
                    <!--<div class='resize-item'  style='position: absolute;left: 20px; top: 10px;z-index: 10;' name=1 >
                        <img width='100%'   name=1 src='dimages/1.png' />
                    </div>-->

                </div>

                <!--购物车按钮-->
                <div class="mid-popular-bling" id="cartbutton" >
                    <a href="javascript:;" class="uploadbling" >上传照片<input type="file" id="open_file" ></a>
                    <div class="container-bling-blank">

                        <input type="submit" value="分享bling" style="float:left;width:30%;">
                        <input id="dresser2Carts"  type="submit" value="一键加入购物车" style="float:right;width:45%;">
                    </div>
                    <div class="clearfix"></div>
                </div>

            </div>
            <!--3.1.2右侧-->
            <div class="col-md-6-bling2">

                <!--3.1.2.1菜单导航-->
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
                    <ul class="nav navbar-nav nav_1">
                        <li>
                            <a class="color1" href="#" class="dropdown-toggle" data-toggle="dropdown">眼镜</a>
                            <div class="dropdown-menu ">
                                <div class="menu-top-bling">
                                    <ul class="nav navbar-nav nav_1">
                                        <li><a href="#">太阳镜</a></li>
                                        <li><a href="#">框镜</a></li>
                                        <li><a href="#">美瞳</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li >
                            <a class="color1"  class="dropdown-toggle" data-toggle="dropdown">帽子</a>
                        </li>
                        <li >
                            <a class="color1" class="dropdown-toggle" data-toggle="dropdown">假发</a>
                        </li>
                        <li >
                            <a class="color1" class="dropdown-toggle" data-toggle="dropdown">发卡</a>
                        </li>
                    </ul>

                    <div class="container-bling-blank">
                        <p><input type="submit" style="width:5em;float:right" value="搜索"/></p>
                        <p>  <input type="text"  placeholder="请输入关键字搜索" /></p>

                    </div>
                </div>

                <!--3.1.2.2商品-->
                <div class="container-bling-blank">
                    <!--行1-->
                    <div class="mid-popular">
                        <!--单个商品-->
                        <div class="col-md-3-bling item-grid simpleCart_shelfItem">
                            <div class=" mid-pop">
                                <!-- 商品图片-->
                                <div class="pro-img">
                                    <a href="/item/1"><img src="./images/1.png" class="img-responsive" alt=""></a>
                                </div>
                                <!--商品属性-->
                                <div class="mid-1-bling">
                                    <div class="women-top">
                                        <h5><a  href="/item/2">湖绿色休闲商务复古多色正面纹理舒适李易峰同款商品</a></h5>
                                    </div>
                                    <div class="mid-2">
                                        <p>￥70.00</p>
                                        <div class="addtobling" >
                                            <!-- class="item-id"携带的name=1为item_id -->
                                            <a style="cursor: pointer;" name=1 class="item-id" >加入Bling</a>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--单个商品-->
                        <div class="col-md-3-bling item-grid simpleCart_shelfItem">
                            <div class=" mid-pop">
                                <!-- 商品图片-->
                                <div class="pro-img">
                                    <a href="/item/2"><img src="./images/2.png" class="img-responsive" alt=""></a>
                                </div>
                                <!--商品属性-->
                                <div class="mid-1-bling">
                                    <div class="women-top">
                                        <h5><a  href="/item/1">湖绿色休闲商务复古多色正面纹理舒适李易峰同款商品</a></h5>
                                    </div>
                                    <div class="mid-2">
                                        <p>￥70.00</p>
                                        <div class="addtobling" >
                                            <!-- class="item-id"携带的name=1为item_id -->
                                            <a style="cursor: pointer;" name=2 class="item-id" >加入Bling</a>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!--单个商品-->
                        <div class="col-md-3-bling item-grid simpleCart_shelfItem">
                            <div class=" mid-pop">
                                <!-- 商品图片-->
                                <div class="pro-img">
                                    <a href="/item/6"><img src="./images/6.png" class="img-responsive" alt=""></a>
                                </div>
                                <!--商品属性-->
                                <div class="mid-1-bling">
                                    <div class="women-top">
                                        <h5><a  href="/item/6">湖绿色休闲商务复古多色正面纹理舒适李易峰同款商品</a></h5>
                                    </div>
                                    <div class="mid-2">
                                        <p>￥70.00</p>
                                        <div class="addtobling" >
                                            <!-- class="item-id"携带的name=1为item_id -->
                                            <a style="cursor: pointer;" name=3 class="item-id" >加入Bling</a>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--单个商品-->
                        <div class="col-md-3-bling item-grid simpleCart_shelfItem">
                            <div class=" mid-pop">
                                <!-- 商品图片-->
                                <div class="pro-img">
                                    <a href="/item/4"><img src="./images/4.png" class="img-responsive" alt=""></a>
                                </div>
                                <!--商品属性-->
                                <div class="mid-1-bling">
                                    <div class="women-top">
                                        <h5><a  href="/item/4">湖绿色休闲商务复古多色正面纹理舒适李易峰同款商品</a></h5>
                                    </div>
                                    <div class="mid-2">
                                        <p>￥70.00</p>
                                        <div class="addtobling" >
                                            <!-- class="item-id"携带的name=1为item_id -->
                                            <a style="cursor: pointer;" name=4 class="item-id" >加入Bling</a>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--单个商品-->
                        <div class="col-md-3-bling item-grid simpleCart_shelfItem">
                            <div class=" mid-pop">
                                <!-- 商品图片-->
                                <div class="pro-img">
                                    <a href="/item/0"><img src="./images/0.png" class="img-responsive" alt=""></a>
                                </div>
                                <!--商品属性-->
                                <div class="mid-1-bling">
                                    <div class="women-top">
                                        <h5><a  href="/item/0">湖绿色休闲商务复古多色正面纹理舒适李易峰同款商品</a></h5>
                                    </div>
                                    <div class="mid-2">
                                        <p>￥70.00</p>
                                        <div class="addtobling" >
                                            <!-- class="item-id"携带的name=1为item_id -->
                                            <a style="cursor: pointer;" name=0 class="item-id" >加入Bling</a>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
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
        <div class="container-bling">

            <div class="clearfix"> </div>
        </div>
    </div>
    <div class="footer-bottom">
        <div class="container-bling">
            <p class="footer-class">Bling!Bling!Bling!联系我们：bling@bling.com </p>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--//footer-->
<!-- cookie -->
<script src="js/js.cookie.js"></script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/simpleCart.min.js"> </script>
<!-- slide -->
<script src="js/bootstrap.min.js"></script>

<script src="js/jquery.min.js"></script>

<link rel="stylesheet" href="css/resize.css">


<!-- 拖拽库 -->
<script src="js/jquery.ZResize.js">
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
<script type="text/javascript" src='js/dresser.lib.js'></script>
<script src="js/blingjs-bling.js">
    freshDresserBox();
    updateCarts();
    freshCarts();
    console.log("carts"+JSON.stringify(carts));
</script>


<!-- <style>
    /*#avatar { position:absolute; left:5%;top:20%; width: 1080px; height: 600px; padding: 1em;   z-index: -5;  }*/
    .resize-item {
        left: 30px; top: 80px;;z-index: 10 }
</style> -->

</body>
</html>