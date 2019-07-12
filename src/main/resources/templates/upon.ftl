<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="/css2/index2.css" type="text/css"></link>
    <script type="text/javascript" src="/js/jquery-1.8.2.min.js"></script>
</head>
<body>
    <form>
       <input type="hidden" name="id" value="${per.id}"/>
        <table>
            <tr>
                <th colspan="11">商品详情</th>
            </tr>
            <tr>
                <td>姓名</td>
                <td><input type="text" name="name" value="${per.name}"></td>
            </tr>
            <tr>
                <td>性别</td>
                <td><input type="text" name="sex" value="${per.sex}"></td>
            </tr>
            <tr>
                <td colspan="11">
                    <input type="button" value="修改">
                    <input type="button" value="返回" onclick="history.go(-1)">
                </td>
            </tr>


        </table>


    </form>
</body>
</html>