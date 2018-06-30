<html>
<head>
    <meta charset="UTF-8">
    <title>我</title>
    <link href="/css/main.css" rel="stylesheet">
</head>
<body>
<h3>我</h3>
<#if msg??>
    <label>${msg}</label>
<#else>
    <label>未登录，请注册或者登录</label>
</#if>
<#if Session.user??>
    user=Session.user;
</#if>
<a href="/user">我</a>
<br><br>

<#if user??>
<div id="show-user" >
    <a href="/logout">登出</a>
    <table border="1">
        <tr>
            <th>姓名</th>
            <th>手机号</th>
        </tr>
            <tr>
                <td>${user.username}</td>
                <td>${user.mobile}</td>
            </tr>
    </table>
    <img src="/photo/${user.user_id}.png">

    <form action="/user/photo" method="post" enctype="multipart/form-data">
        <label >上传头像</label>    <input type="file" name="photo"  >  <br>
        <input  type="submit" value="上传图片">
    </form>
</div>
<#else>

      <div class="login-box">
          <h3>登录</h3>
          <form action="/user/login" method="post">
              <label >姓名</label>  <input type="text" name="username" placeholder="姓名"  pattern=".{2,}"  title="最少两个字符" required  autofocus><br>
              <label >密码</label>    <input type="password" name="password"  placeholder="密码"  pattern=".{4,}"  title="最少四个字符" required>  <br>
              <input  type="submit" value="登录">
          </form>
      </div> <!-- /container -->

      <div class="register-box">
          <h3>注册</h3>
          <form action="/user/register" method="post" >
              <label >姓名</label>  <input type="text" name="username" placeholder="姓名"  pattern=".{2,}"  title="最少两个字符" required  autofocus><br>
              <label >密码</label>    <input type="password" name="password"  placeholder="密码"  pattern=".{4,}"  title="最少四个字符" required>  <br>
              <label >邮箱</label>    <input type="email" name="email"  placeholder="邮箱" required>  <br>
              <label >手机</label>    <input type="tel" name="mobile" min="10000000000"  placeholder="手机" required>  <br>
              <input  type="submit" value="注册">
          </form>
      </div> <!-- /container -->

</#if>
</body>
</html>