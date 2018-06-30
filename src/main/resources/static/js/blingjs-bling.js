//商品区addDresser对应该为.addtobling 类下的 a标签，是页面上的“加入bling这个链接”
// 操作内容：#dresser0.show();#tishi0.hide();#dp0img.attr("src",newURL);

//移出梳妆盒现在是delete1-4的4个函数，对应的是.dresser_box类下面的a标签的点击事件，
//操作内容：#dresser0.hide();#tishi0.show();

//梳妆台区的商品选中，即上装卸妆操作对应的是.dresser_box 类下面的li标签的点击事件
//操作内容：为li标签更改样式类
console.log("加载blingjs-bling.js");
//     //公共初始化  cookies初始化
//     //梳妆台初始化
//     //后台传入dresser，格式如下
//     if(!dressers){       var   dressers=[1,2,3,4];  }
//     console.log("dresser"+dressers);
//
// //Cookies.set('dressers', dressers); //若cookie有问题
//     if(Cookies.getJSON("dressers")){
//         for(var i=0; i<4; i++){
//             if(Cookies.getJSON("dressers")[i] ){
//                 dressers[i]=parseInt(Cookies.getJSON("dressers")[i]);
//             }
//         }
//     }else{
//         Cookies.set('dressers', dressers);
//     }
//     if(Cookies.getJSON("itemList"))  itemList=Cookies.getJSON("itemList");
//     console.log("itemList"+itemList);
//     console.log("dresser"+dressers);
//     console.log("cookie"+Cookies.getJSON("dressers"));
//     freshDresserBox();
//     //$('.resizable').gresizeW();
//     //购物车初始化
//     carts=[];//  本应该为空,测试填入数据
//     carts=[{"item_id":1,"url":"http","name":"name1","subtitle":"title1","main_image":"http","quantity":4,"price":3,"items_price":3}];
//     //Cookies.set('carts', carts); //若cookie有问题
//
//     if(Cookies.getJSON("carts")){
//         carts=Cookies.getJSON("carts");
//     }else{
// 		Cookies.set('carts', carts);
// 	}
//     updateCarts();
//     freshCarts();
//     console.log("carts"+JSON.stringify(carts));
//


//<!--梳妆台商品选中和取消选中功能  -->
(function(){
        $(".dresser_box li").click(function(){
            select(this) ;
    console.log( "52 梳妆台商品选中和取消选中功能" );
        })
})();
//加选中的橙色框,orange_li是li标签的第二个类，样式是加了橙色的框,有orange_li的类表示被选中状态
function select(dom) {
    var index=$(dom).attr('name');
    var item_id=$(dom).children("img").attr('name');

    if($(dom).hasClass("orange_li")){//取消选中  //卸妆
        $(dom).removeClass("orange_li") ;
        //这里需要加入写数组记录上妆卸妆状态  <li id="li0"> 
        takeOff(index);
        dressers[index]=0;
        Cookies.set('dressers',dressers);
        //freshDresserBox();

    }
    else {//选中  //上妆
         $(dom).addClass("orange_li");
         //传入dom,index

         takeOn(index,item_id);
        //这里需要加入写数组记录上妆卸妆状态      
        dressers[index]=item_id;
        Cookies.set('dressers',dressers);
        //这里为什么要fresh呢？？？
        // freshDresserBox();

    }
}
//移出梳妆盒功能
(function(){
    $(".dresseri a").click(function(){

   $(this).parents(".dresseri").hide();
    //    $(this).parents(".dresser_box").children(".tishi").show();
        $(this).parents(".dresseri").children("li").removeClass("orange_li");
       var index=$(this).parents(".dresseri").children("li").attr("name");
       index=parseInt(index);
       dressers[index]=0;
       takeOff(index);
       delDresser(index);
       freshDresserBox();
    })
})();

//新商品加入梳妆盒功能
(function(){
    $(".addtobling a").click(function(){
        var item_id=$(this).attr('name');
        item_id=parseInt(item_id);
        addDresser(item_id,getOff());
        freshDresserBox();
    })
})();

//上传用户图片到梳妆台
(function(a, b) {

    var imginput = document.getElementById("open_file");
    if (typeof FileReader === 'undefined') {
        showimg.innerHTML = "抱歉，你的浏览器不支持 FileReader";
        imginput.setAttribute('disabled', 'disabled');
    } else {
        imginput.addEventListener('change', function() {
            var file = this.files[0];
            if (!/image\/\w+/.test(file.type)) {
                alert("请确保文件为图像类型");
                return false;
            }
            var reader = new FileReader();
            reader.readAsDataURL(file);
            reader.onload = function(e) {
                document.getElementById("dresserpic").src=this.result;
                // showimg.innerHTML = '<img src="' + this.result + '" alt=""/>'
            }
        }, false);
    }
})(window);
//<!-- blingdresser梳妆台滑动效果-->
var documentHeight = 0;
var topPadding = 15;
$(function() {
    var offset = $("#blingdresser").offset();
    documentHeight = $(document).height();
    $(window).scroll(function() {
        var sideBarHeight = $("#blingdresser").height();
        if ($(window).scrollTop() > offset.top) {
            var newPosition = ($(window).scrollTop() - offset.top) + topPadding;
            var maxPosition = documentHeight - (sideBarHeight + 368);
            if (newPosition > maxPosition) {
                newPosition = maxPosition;
            }
            $("#blingdresser").stop().animate({
                marginTop: newPosition
            });
        } else {
            $("#blingdresser").stop().animate({
                marginTop: 0
            });
        };
    });
});

//购物车隐藏展开业务
$("#carts_box").hide();//默认隐藏
$("#mycart").click(function(){
    console.log("clicked");
    if($("#carts_box").is(":hidden")){
        $("#carts_box").show();
    }else{
        $("#carts_box").hide();
    }
})
//更新购物车逻辑
$("#carts_box").change(function(){
    if(!$("#carts_box").is(":hidden")){
        updateCarts();
        freshCarts();
    }
})

//梳妆台商品一键加入购物车
$("#dresser2Carts").click(function(){
    dresser2Carts();
    freshCarts();
    console.log("dresser2Carts clicked"+JSON.stringify(dressers) );
    freshCarts();
})


//详情页面添加购物车
$("#addCart").click(function (){

    var item_id=$("#addCart").attr("name");
    addCart(item_id);
    console.log("点击addCart item_id"+item_id+"carts变为"+JSON.stringify(carts));
    freshCarts();
})

//监听购物清单数量输入框变化
$(".quantity").on('input propertitychange',function(){
    var quantity=parseInt($(this).val());
    //console.log("quantity changed to"+quantity);
    var item_id=$(this).attr("name");
    //console.log("item_id"+item_id+"carts"+JSON.stringify(carts));
    for(var i=0; i<carts.length; i++){
        if(item_id==carts[i]['item_id']){
            carts[i]['quantity']=quantity;
            //console.log("item_id"+item_id+"的商品数量变为"+carts[i]['quantity']);
        }
    }

    updateCarts();
    freshCarts();
} )

