<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>json</title>
    <script type="text/javascript" charset="UTF-8" src="/static/js/jquery-3.3.1.js"></script>
    <%--http://localhost:8080/api/item/1--%>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#button1").click(function () {

                $.ajax({
                    url: "http://localhost:8080/api/item/1", success: function (result) {
                        // alert(typeof result);
                        var dump = "";
                        for (var name in result) {
                            dump += name + ":" + result[name] + "; "
                        }
                        // alert(dump);
                        // $("#div1").html(result);
                        // $("#div1").innerHTML=result[name];
                        document.getElementById("div1").innerHTML = result[name];
                    }
                });
            });
        });
    </script>
</head>
<body>

<h1>${item.name}</h1>
<div id="div1"></div>
<button id="button1">button1</button>
</body>

</html>
