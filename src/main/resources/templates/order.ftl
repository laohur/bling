<!DOCTYPE html>
<html>
<head>
    <title>Order</title>
    <link href="css/yjbootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!-- Custom Theme files -->
    <!--theme-style-->
    <link href="css/yjstyle-bling.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/yjstyle4-bling.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/yjblingstyle-bling.css" rel="stylesheet" type="text/css" media="all" />
    <!--//theme-style-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Shopin Responsive web template, Bootstrap Web Templates, Flat Web Templates, AndroId Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

    <script src="js/jquery.min.js"></script>
    <!-- cookie -->
    <script src="js/js.cookie.js"></script>
    <!-- 梳妆台 -->
    <script type="text/javascript" src='js/dresser.lib.js'></script>

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
                <a href="blingindex.html"><img src="images/logo.png" alt=""></a>
            </div>
        </div>
    </div>
    <!--2.1个人导航栏-->
    <div class="header-top-bling">
        <div class="container">
            <!--<div id="userlogin" class="col-sm-5 col-md-offset-2  header-login"></div>-->
            <div class="col-sm-5 col-md-offset-2  header-login">
                <ul id="logout">
                    <li><a href="/">首页</a></li>
                    <li><a href="/user">用户中心</a></li>
                </ul>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--移出购物车动画效果+删除操作-->

<!--3 购物车页面-->
<div class="container">
    <!--收货地址选择-->
    <div class="container-bling-blank" style="height: 200px;">
        <div class="container-bling-blank" style="padding: 0 0 10px 0;">
            <h3 style="color:#f67777;">收货地址选择:</h3>
        </div>
        <div class="container-bling-blank">
            <form action='/order/submit' method='post'>
                <label >姓名</label>  <input type="text" name="username" placeholder="姓名"  pattern=".{2,}"  title="最少两个字符" required  autofocus><br>
                <label >收件人</label>  <input  name='receiver' type='text'    />
                <label >收货地址</label> <input  name='address' type='text' value='destination'  />
                <label >收件电话</label> <input  name='phone' type='tel' v/>
                <input id="list" name='basket' type='hidden' />
                <p>&nbsp;</p>
                <button type="submit" value="submit" class="hvr-skew-backward">提交订单</button>
            </form>
        </div>
    </div>
    <!--商品清单-->
    <div id="carts_box">
        <div class="container-bling-blank" style="margin:15px 0 5px 0;">
            <h4 style="color:#f67777;">商品清单</h4>
        </div>
        <!--购物车商品列表-->
        <div id="carts" name=9 z-index=2 >
            <div class="cartHead" name=1 style="width:100%;margin: 0em 0 2em;">
                <label class="name cartlist2">名称</label>

                <label class="cartlist2">图片<img src="" height='20' /></label>
                <label class="price cartlist2">单价</label>

                <label class="quantity cartlist2" > 数量</label>

                <label class="items_price cartlist2">小计</label>
            </div>
            <!-- <div class="cart" name=2  style="width:100%;margin: 0em 0 2em; height:20px;">
                <label class="name cartlist1">name1</label>
                <label class="subtitle cartlist1"><a href="">title1</a></label>
                <label class="cartlist1" ><img src="dimages/2.png" height='20'/></label>
                <label class="price cartlist2">3</label>
                <input class='quantity cartlist2' value=3 />
                <label class="items_price cartlist2">9</label>
            </div>
            <div class="cart" name=2  style="width:100%;margin: 0em 0 2em; height:20px;">
                <label class="name cartlist1">name1</label>
                <label class="subtitle cartlist1"><a href="">title1</a></label>
                <label class="cartlist1" ><img src="dimages/2.png" height='20'/></label>
                <label class="price cartlist2">3.00</label>
                <input class='quantity cartlist2' value=2 />
                <label class="items_price cartlist2">9.00</label>
            </div> -->


        </div>
        <div id="summary" >
            共选择<label id="count" >2</label>件商品，总计：￥<label id="total_price" style="color:#f67777;">200.00</label>元
            <!-- <a href="/order/add">下单</a> -->
        </div>
    </div>
</div>
<div style="height:100px;">

</div>
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
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

<script src="js/simpleCart.min.js"> </script>
<!-- slide -->
<script src="js/bootstrap.min.js"></script>
<!-- cookie -->
<script src="js/js.cookie.js"></script>
<!-- 梳妆台 -->
<link rel="stylesheet" href="css/resize.css">
<script type="text/javascript" src='js/dresser.lib.js'></script>
<!-- 拖拽库 -->
<script src="js/jquery.ZResize.js"></script>
<script src="js/blingjs-bling.js"></script>



<script>
    //任务  跟后台协商确定够购物车商品的显示数据，完成购物车模板
    //提交下单表单  [{"item_id":1,"quantity":3}]


    //cart变量
    //
    //carts=[{"item_id":1,"url":'',"name":'name1',"subtitle":'title1',"main_image":"http","quantity":4,'price':3,'quantity':4,"items_price":3},{}];
    //提交订单 orders=[{"order_id":1,"create_time":2018,},{}];
    //更新购物车

    //提交订单表单字段
    // reciver; //收件人姓名  <input  name='reciver' type='text' />
    // phone;//收件人电话  <input  name='phone' type='number' />
    // address;//收货地址  <input  name='address' type='radio' value='address1' checked="checked"   />  address1
    // list; //购物清单 <input  name='list' type='hidden' />

    //监听购物清单数量输入框变化
    $(".quantity").on('input propertitychange',function(){
        //alert("此处更改无效,请返回");
        var quantity=parseInt($(this).val());
        //console.log("quantity changed to"+quantity);
        var item_id=$(this).attr("name");
        //console.log("item_id"+item_id+"carts"+JSON.stringify(carts));
        for(var i=0; i<carts.length; i++){
            if(item_id==carts[i]['item_id']){
                carts[i]['quantity']=quantity;
                console.log("item_id"+item_id+"的商品数量变为"+carts[i]['quantity']);
            }
        }
        updateCarts();
        Cookies.set("carts",carts);

        freshCarts();
        // $("#list").attr("value",getList());
        $("#list").attr("value",getList());

    } )

    $("#list").attr("value",getList());
    //提交订单 list提交字符串格式  item_id,quanity;item_id,quanity 举例: 666,3;667,2
    function getList(){
        var list=carts[0]['item_id']+','+carts[0]['quantity'];
        for(var i=1; i<carts.length; i++){
            list+=';'+carts[i]['item_id']+','+carts[i]['quantity'];
        }
        console.log("getList()"+list);
        return list;
    }


</script>
</body>
</html>