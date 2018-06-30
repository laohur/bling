console.log("加载dresser.lib.js");
//根据item_id提取梳妆台照片链接
function getDimage(item_id){
    var imgSrc="dimages/"+item_id+".png";
    // $.ajax({
    //     async:false,
    //     type:'GET',
    //     url:'/user/item/cart_item.do?id='+item_id,
    //     success:function(item){
    //         var item= JSON.parse(item);
    //         imgSrc=item['dresserImages'];
    //         console.log("10getDimage() imgSrc"+imgSrc);
    //         //$("#dresserarea img").child("name"=index).attr("src",imgSrc);
    //     }
    // });
    console.log("14getDimage() imgSrc"+imgSrc);
    return imgSrc;
}

//更新梳妆盒
function freshDresserBox(){
    for(var i=0; i<4; i++){
        var old=$(".dimage")[i];
        //var parent=$(old).parent();
        //console.log("par"+$(parent).prop("outerHTML"));
        $(old).attr('name',dressers[i]);
        //var imgSrc="dimages/"+item_id+".png";
        $(old).attr("src",getDimage(dressers[i]));
    }
}

//获取一个空盒子 不记录上妆状态
function getOff(){
    var index=-1;
    for(var i=0; i<4; i++){// 优先找空盒子
        if(0==dressers[i]){
            index=i;
            break;
        }
    }

    return index;
}

//item添加到梳妆盒
var index=getOff();
function addDresser(item_id,index){
    index = getOff();
    if(-1==index){
        alert("梳妆台已满，请先删除梳妆台的部分商品");
    }
    else {
        //var index=getOff();
        dressers[index] = item_id;
        Cookies.set('dressers', dressers);
        if(item_id != 0) {
            $("#" + "dresser" + index).show();
            $("#" + "tishi" + index).hide();
        }
        //更新dressers
        //freshDresserBox();
    }
}

//item移出梳妆盒
// $(dresser_dom).click(function(){
//     delDresser(item_dom)
// })
function delDresser(index){
    addDresser(0,index);
    // var dom="#dimage"+index;
    // // $(dom).remove();
    // $(fresh).attr('name',0);
    // $(dom).attr("src",getDimage(0));
    // dressers[i]=0;
    // var img=$(dom).child("img");
    //更改dresser
    //takeOff(take_dom);
    //更新dressers
    dressers[index]=[0];
    Cookies.set('dressers',dressers);
    $("#"+"tishi"+index).show();
}

//根据image_id生成梳妆盒商品的imgsrc
// /picture/dresser/{category_id}/{item_id}  只有数据库有url
// function getDimage(item_id){
//     return "dimages/"+item_id+".png";
// }
//上妆卸妆
function takeOn(index,item_id){  //上妆
    //更新dressers
    // var imgSrc="dimages/"+item_id+".png";
    var imgSrc=getDimage(item_id);
    //var img="<img   name="+index+" src='"+getDimage(item_id)+"' />";
    var img='<img name=';
    img=img+index;
    img=img+' width="100%"  src="';
    img=img+imgSrc;
    img=img+'" />';

    var dressing="<div class='resize-item' style='position: absolute;' id='dressing"+index+"'  name="+index+" >"+img+"</div>" ;  //dresing1
    $("#dresserarea").append(dressing);
    //


    // freshDresserBox();
    new ZResize();
}
function takeOff(index){  //卸妆
    var dom="#dressing"+index;
    $(dom).remove();
    dressers[i]=0;
    
    //更新dressers
    // dressers[off_id][1]=0;
    // Cookies.set('dressers',dressers);
}

//avatarSize=getSize($("#avatar"));
//取元素大小，左右 上下边界 返回对象
function getSize(dom){
    var size={};
    size['width']=$(dom).width();
    size['height']=$(dom).height();
    console.log("dom"+dom.toString());
    size['left']=$(dom).offset().left;
    size['right']=size['left']+size['width'];
    size['top']=$(dom).offset().top;
    size['bottom']=size['top']+size['height'];
    return size;
}  

//限定.item-resize在#dresserarea
$(".item-resize").click(function(){
        if(!inBox($(this),$("#dresserarea"))){
            var leffOff=getSize($(this))['left']-getSize($("#dresserarea"))['left'];
            var topOff=getSize($(this))['top']-getSize($("#dresserarea"))['top'];
            $(this).animate({left:-leffOff});
            $(this).animate({top:-topOff});
            console.log("leffOff:"+leffOff+" topOff:"+topOff);
        }
   });

//判断dom1在dombox里？
function inBox(dom1,dombox){
    var size1=getSize(dom1);
    var sizebox=getSize(dombox);
    if( size1['left']>=sizebox['left'] && size1['right']<=sizebox['right'] && size1['top']>sizebox['top'] && size1['bottom']<sizebox['bottom'] ){
        return true;
    }else{
        return false;
    }
}

//置顶
$(".resize-item ").click(function(){
    moveUp(this);
})
function moveUp(dom){
    $(dom).css("z-index",topZ()+1);
}
//获取顶层数
function topZ(){
    for(var i=0, max=0; i<$(".dressing").length; i++){
        max = Math.max( max, $(".dressing[name="+i+"]").css("z-index")|| 0 );
    }
    return max;
}


//梳妆台商品加入购物车
function dresser2Carts(){
    for(var i=0; i<4; i++){
        addCart(dressers[i]);
    }
}


//增加一件商品到购物车
function addCart(item_id){
    var exist=0;
    for(var j=0; j<carts.length; j++){
        if(item_id==carts[j]['item_id']){
           // console.log(i+"item_id"+item_id+"已在购物车, 原始数量"+carts[j]['quantity']);
            carts[j]['quantity']++;
            updateCarts();
            exist=1;
        }
    }
    if(0==exist){
        var cart={};
        cart['item_id']=item_id;  //只增加item_id 其余信息等待updateCart补充
        cart['quantity']=1;
        carts.push(cart);
        //console.log(i+"item_id"+item_id+"已在购物车, 新增数量"+carts[j]['quantity']);

    }
    console.log("添加了item_id"+item_id+"carts为"+JSON.stringify(carts));
    updateCarts();
    Cookies.set("carts",carts);
}

//购物车
//carts=[{"item_id":1,"url":'',"name":'name1',"subtitle":'title1',"main_image":"http","quantity":4,'price':3,"items_price":3},{}];

//ajax返回item信息  //  api/item/item_id
function getItem(item_id){
    $.ajax({
        type:'GET',
        url:'/user/item/cart_item.do?id='+item_id,
        success:function(item){
            var item= JSON.parse(item);
            updateCart(item);
        }
    });
}


function updateCart(item){
    for(var i=0; i<carts.length; i++){
        if(carts[i]["item_id"]==item['item_id']){
            carts[i]['url']=item['url'];
            carts[i]['name']=item['name'];
            carts[i]['subtitle']=item['subtitle'];
            carts[i]['main_image']=item['main_image'];
            var price=parseFloat(item['price']);
            carts[i]['price']=price?price:9999;
            break;
        }
    }
}
//根据api更新carts
function updateCarts(){
    for(var i=0; i<carts.length; i++){
        if( !carts[i]['item_id']   ){
            console.log("updateCarts() carts"+JSON.stringify(carts));
            console.log("index"+i+" carts[i]['item_id']不存在被移除");
            carts.splice(i,1);  //删除此元素
           // updateCarts();  //继续删除
        }else{
            if( !carts[i]['quantity']  ){
                console.log("updateCarts() carts"+JSON.stringify(carts));
                console.log("item_id"+carts[i]['item_id']+"数量为0被移除");
                carts.splice(i,1);  //删除此元素
               // updateCarts();  //继续删除
            }
        }

    }


    for(var i=0; i<carts.length; i++){
        getItem(carts[i]['item_id']);
        carts[i]['price']=carts[i]['price']?carts[i]['price']:9999;
        var items_price=parseFloat(carts[i]['price'])*parseInt( carts[i]['quantity']);
        carts[i]['items_price']=items_price?items_price:9999999;
    }
    Cookies.set("carts",carts);

    //console.log("updateCarts() carts变为"+JSON.stringify(carts));
}

//刷新购物车界面
function freshCarts(){
    //根据carts刷新$("#carts")
    //$("#carts").children().remove();
    updateCarts();
    $("#carts_box .cart_id").remove(); 
    var count=0;
    var total_price=0;
    for(var i=0; i<carts.length; i++){
        var cartDom=createCart(carts[i]);
        $("#carts").append(cartDom);
        count+=carts[i]['quantity'];
        total_price+=parseFloat(carts[i]['items_price']);
    }

    $("#count").text(count);
    $("#total_price").text(total_price);
    console.log("freshCarts() carts变为"+JSON.stringify(carts));
    console.log("count"+ $("#count").text()+ "total_price"+ $("#total_price").text() );
}

//生成Dom createCart
function createCart( cart ){
    var dom="<div class='cart_id' name="+cart["item_id"]+">";
    // dom+="><label class='cartlist3 name'>"+ cart["name"]+"'</label>";
    // dom+="<label class='subtitle cartlist3'><a href="+cart['url']+">"+cart["subtitle"]+"</a></label>";
    dom+="<label class='name cartlist2'><a href="+cart['url']+">"+cart["name"]+"</a></label>";
    dom+="<label class='cartlist2'><img src="+cart["main_image"]+"height='20' /> </label>";
    // dom+="<label class='price cartlist3'>"+cart["price"].toFixed(2)+"</label>";
    dom+="<label class='price cartlist2'>"+cart["price"]+"</label>";
    dom+="<input name="+cart["item_id"]+" class='quantity cartlist2' value=" +cart['quantity']+">";
    dom+="<laebl class='items_price cartlist2'> "+cart['items_price']+"</label></div>";
    //console.log("createCart()"+dom);
    return dom;
}

