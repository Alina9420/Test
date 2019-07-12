<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="/css2/index2.css" type="text/css"></link>
    <script type="text/javascript" src="/js/jquery-1.8.2.min.js"></script>
    <script type="text/javascript">
        function qf(){
            var arr1=$(".sid");
            //实现全选反选
            for(var i=0;i<arr1.length;i++){
                arr1[i].checked=!arr1[i].checked;
            }
        }
        function look(id) {
            location.href="tolook?id="+id;
        }
    </script>
</head>
<body>
    <form action="/per/getList" method="post">
        姓名的查询：<input type="text" name="name" value="${name?default("")}"/>
        <input type="submit" value="[查询]"/><#--&nbsp;&nbsp;&nbsp;<input type="button" value="批量删除" onclick="ps()"/>-->
        <table>
            <tr>
                <th colspan="11">列表</th>
            </tr>
            <tr>
                <td><input type="checkbox" onclick="qf()"/>全选/反选</td>
                        <td>id</td>
                        <td>姓名</td>
                        <td>性别</td>
                        <td>操作&nbsp;&nbsp;&nbsp;&nbsp;<a href="/per/toAdd">新增</a></td>
                </td>
            </tr>
            <#list list as per>
            <tr>
                <td><input type="checkbox" onclick="qf()"/></td>
                <td>${per.id}</td>
                <td>${per.name}</td>
                <td>${per.sex}</td>
                <td><input type="button" value="详情" onclick="look(${per.id})"></td>
            </tr>
           </#list>
        </table>
        <tr>
            <td colspan="10">
                ${first}
                ${prev}
                当前页为：${page}
                总页数为：${pageCount}
                ${next}
                ${last}
            </td>

        </tr>
    </form>
</body>
</html>