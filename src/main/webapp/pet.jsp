<%--
  Created by IntelliJ IDEA.
  User: zhujiang
  Date: 2019/1/24
  Time: 17:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>我是 ${sessionScope.petname.pet_name} 宝贝！</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <link rel="stylesheet" type="text/css" href="css/styles.css">
    <script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
    <script>
        $(document).ready(function () {
            $.ajax({
                "url": "LoginShowServlet",                      // 要提交的URL路径
                "type": "post",                     // 发送请求的方式
                "data": "action=loginShowAction",                      // 要发送到服务器的数据
                "dataType": "json",                   // 指定传输的数据格式
                "success": function (result) {// 请求成功后要执行的代码
                    var v = "";
                    var vv = "";


                    if (result.pet_type == "0") {
                        v = "是一只伟大的小千禧猪";
                        vv = "pig.jpg";
                    }
                    if (result.pet_type == "1") {
                        v = "是一只伟大的猫咪";
                        vv = "cat.jpg";
                    }
                    if (result.pet_type == "2") {
                        v = "是一只伟大的火龙";
                        vv = "dragon.jpg";
                    }

                    $("#doingImg").append("<img id=\"doingImg1\" src=\"images/pet/" + vv + "\"/>");
                    $("#showbb").append("宠物ID：<b>" + result.pet_id + "</b><br/>\n" +
                        "                                ----------------------------------------- <br/>\n" +
                        "                                我叫 " + result.pet_name + " ，\n" +
                        "                               " + v + "。<br/>\n" +
                        "                                我的主人是<a href=\"mailto:liu@.net\">" + result.pet_owner_name + "</a>。<br/>\n" +
                        "                                ----------------------------------------- <br/>\n" +
                        "                                力量：" + result.pet_strength + "<br/>\n" +
                        "                                能力：" + result.pet_cute + "<br/>\n" +
                        "                                爱心：" + result.pet_love + "<br/>\n" +
                        "                                ----------------------------------------- <br/>");

                }
            })
        });


        function doTraining(tType) {
            document.forms[0].elements["operate"].value = "doTraining";
            document.forms[0].elements["trainingType"].value = tType;
            document.forms[0].submit();
        }

        var request = new XMLHttpRequest();

        function feed() {
            $.ajax({
                "url": "ShowServlet",                      // 要提交的URL路径
                "type": "post",                     // 发送请求的方式
                "data": "action=updateAction&op=lil&petname=" +${sessionScope.petname.pet_name},                      // 要发送到服务器的数据
                "dataType": "json",                   // 指定传输的数据格式
                "success": function (result) {// 请求成功后要执行的代码
                    var v = "";
                    var vv = "";
                    $("#showbb").children().remove();

                    if (result.pet_type == "0") {
                        v = "是一只伟大的小千禧猪";
                        vv = "pig.jpg";
                    }
                    if (result.pet_type == "1") {
                        v = "是一只伟大的猫咪";
                        vv = "cat.jpg";
                    }
                    if (result.pet_type == "2") {
                        v = "是一只伟大的火龙";
                        vv = "dragon.jpg";
                    }

                    $("#doingImg").append("<img id=\"doingImg1\" src=\"images/pet/" + vv + "\"/>");
                    $("#showbb").append("宠物ID：<b>" + result.pet_id + "</b><br/>\n" +
                        "                                ----------------------------------------- <br/>\n" +
                        "                                我叫 " + result.pet_name + " ，\n" +
                        "                               " + v + "。<br/>\n" +
                        "                                我的主人是<a href=\"mailto:liu@.net\">" + result.pet_owner_name + "</a>。<br/>\n" +
                        "                                ----------------------------------------- <br/>\n" +
                        "                                力量：" + result.pet_strength + "<br/>\n" +
                        "                                能力：" + result.pet_cute + "<br/>\n" +
                        "                                爱心：" + result.pet_love + "<br/>\n" +
                        "                                ----------------------------------------- <br/>");

                }
            });
            setImg("feed");
            var oDoingDiv = document.getElementById("doingDiv");
            oDoingDiv.innerHTML = ${sessionScope.petname.pet_name}+"吃饭ing";
            setTimeout("doTraining('TRANING_TYPE_FEED')", 2000);
        }


        function story() {
            $.ajax({
                "url": "ShowServlet",                      // 要提交的URL路径
                "type": "post",                     // 发送请求的方式
                "data": "action=updateAction&op=love&petname=" +${sessionScope.petname.pet_name},                      // 要发送到服务器的数据
                "dataType": "json",                   // 指定传输的数据格式
                "success": function (result) {// 请求成功后要执行的代码
                    var v = "";
                    var vv = "";
                    $("#showbb").children().remove();

                    if (result.pet_type == "0") {
                        v = "是一只伟大的小千禧猪";
                        vv = "pig.jpg";
                    }
                    if (result.pet_type == "1") {
                        v = "是一只伟大的猫咪";
                        vv = "cat.jpg";
                    }
                    if (result.pet_type == "2") {
                        v = "是一只伟大的火龙";
                        vv = "dragon.jpg";
                    }

                    $("#doingImg").append("<img id=\"doingImg1\" src=\"images/pet/" + vv + "\"/>");
                    $("#showbb").append("宠物ID：<b>" + result.pet_id + "</b><br/>\n" +
                        "                                ----------------------------------------- <br/>\n" +
                        "                                我叫 " + result.pet_name + " ，\n" +
                        "                               " + v + "。<br/>\n" +
                        "                                我的主人是<a href=\"mailto:liu@.net\">" + result.pet_owner_name + "</a>。<br/>\n" +
                        "                                ----------------------------------------- <br/>\n" +
                        "                                力量：" + result.pet_strength + "<br/>\n" +
                        "                                能力：" + result.pet_cute + "<br/>\n" +
                        "                                爱心：" + result.pet_love + "<br/>\n" +
                        "                                ----------------------------------------- <br/>");

                }
            });

            setImg("story");
            var oDoingDiv = document.getElementById("doingDiv");
            oDoingDiv.innerHTML = ${sessionScope.petname.pet_name}+"在听故事";
            setTimeout("doTraining('TRANING_TYPE_STORY')", 2000);
        }

        function game() {
            $.ajax({
                "url": "ShowServlet",                      // 要提交的URL路径
                "type": "post",                     // 发送请求的方式
                "data": "action=updateAction&op=zl&petname=" +${sessionScope.petname.pet_name},                      // 要发送到服务器的数据
                "dataType": "json",                   // 指定传输的数据格式
                "success": function (result) {// 请求成功后要执行的代码
                    var v = "";
                    var vv = "";
                    $("#showbb").children().remove();

                    if (result.pet_type == "0") {
                        v = "是一只伟大的小千禧猪";
                        vv = "pig.jpg";
                    }
                    if (result.pet_type == "1") {
                        v = "是一只伟大的猫咪";
                        vv = "cat.jpg";
                    }
                    if (result.pet_type == "2") {
                        v = "是一只伟大的火龙";
                        vv = "dragon.jpg";
                    }

                    $("#doingImg").append("<img id=\"doingImg1\" src=\"images/pet/" + vv + "\"/>");
                    $("#showbb").append("宠物ID：<b>" + result.pet_id + "</b><br/>\n" +
                        "                                ----------------------------------------- <br/>\n" +
                        "                                我叫 " + result.pet_name + " ，\n" +
                        "                               " + v + "。<br/>\n" +
                        "                                我的主人是<a href=\"mailto:liu@.net\">" + result.pet_owner_name + "</a>。<br/>\n" +
                        "                                ----------------------------------------- <br/>\n" +
                        "                                力量：" + result.pet_strength + "<br/>\n" +
                        "                                能力：" + result.pet_cute + "<br/>\n" +
                        "                                爱心：" + result.pet_love + "<br/>\n" +
                        "                                ----------------------------------------- <br/>");

                }
            });
            setImg("game");
            var oDoingDiv = document.getElementById("doingDiv");
            oDoingDiv.innerHTML = ${sessionScope.petname.pet_name}+"在玩耍";
            setTimeout("doTraining('TRANING_TYPE_GAME')", 2000);
        }

        function setImg(p) {
            var oDoingImg = document.getElementById("doingImg");
            var src = oDoingImg.src;
            src = src.replace(".jpg", "_" + p + ".jpg");
            oDoingImg.src = src;
        }

        function showDiary(dId) {
            window.open("diary.do?operate=toView&id=" + dId);
        }
    </script>

</head>

<body>
<form name="petForm" method="post" action="pet.jsp">
    <input type="hidden" name="operate" value="doAdopt">
    <input type="hidden" name="trainingType" value="">
    <input type="hidden" name="item.petId" value="9">


    <div class="main_div">
        <h1>我的宝贝儿</h1>

        <table width="100%" cellspacing="0" cellpadding="0" border="0">
            <tr>
                <td width="450">&nbsp;
                </td>
                <td rowspan="2" style="background-color:pink;text-align:right;">&nbsp;

                    欢迎您， ${sessionScope.petname.pet_owner_name} ！
                    <a href="index.jsp">注销</a>

                    &nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td style="background-color:pink;">&nbsp;
                    <a href="index.jsp">首页</a>&nbsp;
                    |&nbsp;

                    我是 <a href="pet.jsp">${sessionScope.petname.pet_name}</a> 宝贝！


                    &nbsp;&nbsp;
                </td>
            </tr>
        </table>
    </div>
    <div class="main_div">
        <table>
            <tr>
                <td width="300px" valign="top">

                    <table>
                        <tr>
                            <td valign="top" id="showbb">

                            </td>
                        </tr>
                    </table>
                    <div id="doingDiv"></div>
                    <div id="doingImg"></div>
                    <div id="trainingDiv">

                        <button onclick="javascript:feed();">喂食</button>&nbsp;
                        <button onclick="javascript:story();">讲故事</button>&nbsp;
                        <button onclick="javascript:game();">游戏</button>

                    </div>
                    <div id="diaryDiv1">

                        <a href="write_diary.jsp">写宠物日记</a>

                    </div>
                    ------------------------------ <br/>
                    lanzhu。<br/>
                    <div id="funnyDiv"></div>
                </td>
                <td width="500px" valign="top">
                    <div id="diaryDiv">
                        <table class='cal'>
                            <tr>
                                <th>星期日</th>
                                <th>星期一</th>
                                <th>星期二</th>
                                <th>星期三</th>
                                <th>星期四</th>
                                <th>星期五</th>
                                <th>星期六</th>
                            </tr>
                            <tr>
                                <td valign='top'>1
                                    <li><a href="diary.jsp">t5</a></li>
                                    <li><a href="diary.jsp">t6</a></li>
                                    <li><a href="diary.jsp">t7</a></li>
                                    <li><a href="diary.jsp">t8</a></li>
                                    <li><a href="diary.jsp">t9</a></li>
                                    <li><a href="diary.jsp">t10</a></li>
                                    <li><a href="diary.jsp">t11</a></li>
                                    <li><a href="diary.jsp">t12</a></li>
                                </td>
                                <td valign='top'>2
                                    <li><a href="diary.jsp">11111111</a></li>
                                </td>
                                <td valign='top'>3</td>
                                <td valign='top'>4</td>
                                <td valign='top'>5</td>
                                <td valign='top'>6</td>
                                <td valign='top'>7</td>
                            </tr>
                            <tr>
                                <td valign='top'>8</td>
                                <td valign='top'>9</td>
                                <td valign='top'>10</td>
                                <td valign='top'>11*</td>
                                <td valign='top'>12</td>
                                <td valign='top'>13</td>
                                <td valign='top'>14</td>
                            </tr>
                            <tr>
                                <td valign='top'>15
                                    <li><a href="diary.jsp">t1</a></li>
                                </td>
                                <td valign='top'>16</td>
                                <td valign='top'>17</td>
                                <td valign='top'>18</td>
                                <td valign='top'>19</td>
                                <td valign='top'>20</td>
                                <td valign='top'>21</td>
                            </tr>
                            <tr>
                                <td valign='top'>22</td>
                                <td valign='top'>23</td>
                                <td valign='top'>24</td>
                                <td valign='top'>25</td>
                                <td valign='top'>26</td>
                                <td valign='top'>27</td>
                                <td valign='top'>28</td>
                            </tr>
                            <tr>
                                <td valign='top'>29</td>
                                <td valign='top'>30</td>
                                <td valign='top'>31
                                    <li><a href="diary.jsp">t2</a></li>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
        </table>
    </div>


    <hr size="1" width="800px" color="black"/>
    <div class="main_div" style="border-width:0;text-align:right;">
        copyright &copy; YF1801
    </div>
</form>

</body>
</html>
