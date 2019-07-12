<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="/css2/index2.css" type="text/css"></link>
    <script type="text/javascript" src="/js/jquery-1.8.2.min.js"></script>
<#--    <script type="text/javascript">
       $(function () {
           $.ajax({
               url:"/per/getList",
               data:{},
               dateType:"post",
               success:function(result){
                   for (var i=0;i<result.length;i++){
                       $("#id").append("<option value="+result[i].id+"></option>")
                   }
               }
           })
       })
    </script>-->
</head>
<body>
  <form action="/per/save" method="post">
      <table>
          <tr>
              <td colspan="11">添加页面</td>
          </tr>
          <tr>
              <td>姓名</td>
              <td><input type="text" name="name" placeholder="请输入姓名："></td>
          </tr>
          <tr>
              <td>性别</td>
              <td><input type="text" name="sex" placeholder="请输入性别："></td>
          </tr>
          <tr>
              <td colspan="5">
                  <input type="submit" value="提交" id="tj">
                  <input type="button" value="返回" onclick="history.go(-1)">
              </td>
          </tr>

      </table>


  </form>
</body>
</html>