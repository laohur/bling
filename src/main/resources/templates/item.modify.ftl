
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>添加产品</title>
</head>
<body>

    <h1>虚拟梳妆台</h1>
    <h3>添加产品</h3>
    <p><a href="/" target="_blank" >前台</a></p>
    <p><a id="home" href="/user" target="_blank" >用户中心</a></p>
    <p><a id="admin" href="/" target="_blank" >产品列表</a></p>

    <form method="POST" action="/item/add">

        <table border="1">
            <tr >
                <td><label>款式名称：</label></td>
                <td><input type="text"   name="name" pattern=".{4,}" required title="最少四个字符" /></td>
            </tr>

            <tr >
                <td><label>标题：</label></td>
                <td><input type="text"   name="title" pattern=".{4,}" required title="最少四个字符" /></td>
            </tr>

            <tr >
                <td><label>品牌：</label></td>
                <td><input type="text"   name="brand" pattern=".{4,}" required title="最少四个字符" /></td>
            </tr>

            <tr>
                <td><label>商品号：</label></td>
                <td><input type="number" name="product_id" min="1" max="5"  /></td>
            </tr>

            <tr>
                <td><label>品类号：</label></td>
                <td><input type="number" name="category_id" min="1" max="5"  /></td>
            </tr>

            <tr>
                <td><label>价格（分）：</label></td>
                <td><input type="number" name="price" min="1" max="99999999"  /></td>
            </tr>


            <tr>
                <td><label>存货：</label></td>
                <td><input type="number" name="inventory" min="0" max="6"/></td>
            </tr>

            <tr>
                <td><label>状态号：</label></td>
                <td><input type="number" name="status" /></td>
            </tr>


            <tr>
                <td><label>产品描述：</label></td>
                <td><textarea name="description">可以拖动调大小</textarea></td>
            </tr>

        </table>
        <p>    <button type="submit" type="submit" > 提交产品资料 </button>    </p>
    </form>
    <form action="/item/photo" method="post" enctype="multipart/form-data">
        <label >上传图片</label>    <input type="file" name="photo"  >  <br>
        <input  type="submit" value="上传图片">
    </form>
</body>
</html>
