<%--
  Created by IntelliJ IDEA.
  User: zhujiang
  Date: 2019/1/24
  Time: 17:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>领养宝贝</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">

    <link rel="stylesheet" type="text/css" href="css/styles.css">
    <script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
    <script>
        var validateMsg = "";

        function checkNotEmpty(ctlName, label) {
            var oCtl = document.forms[0].elements[ctlName];
            if (oCtl.value == "") {
                if (label) {
                    validateMsg += label;
                }
                validateMsg += "不能为空！\n";
                oCtl.focus();
            }
        }

        function checkValidateMsg() {
            if (validateMsg != "") {
                alert(validateMsg);
                return false;
            }
            return true;
        }

        function doAdopt() {
            validateMsg = "";
            checkNotEmpty("item.petPassword", "密码");
            checkNotEmpty("item.petOwnerName", "宠物主人");
            checkNotEmpty("item.petType", "类");
            checkNotEmpty("item.petName", "宠物名");
            if (!checkValidateMsg()) {
                return;
            }
            document.forms[0].elements["operate"].value = "doAdopt";
            document.forms[0].submit();
        }

        function setPetType(oSelect) {
            var typeValue = oSelect.options[oSelect.selectedIndex].value;
            var oStrength = document.forms[0].elements["item.petStrength"];
            var oCute = document.forms[0].elements["item.petCute"];
            var oLove = document.forms[0].elements["item.petLove"];
            var oPic = document.forms[0].elements["item.petPic"];
            var oImg = document.getElementById("petImg");
            oPic.value = "images/pet/";
            if (typeValue == 1)//Pit
            {
                oStrength.value = 60;
                oCute.value = 60;
                oLove.value = 60;
                oPic.value += "pig.jpg";
            } else if (typeValue == 2)//Cat
            {
                oStrength.value = 40;
                oCute.value = 60;
                oLove.value = 80;
                oPic.value += "cat.jpg";
            } else if (typeValue == 3)//Dragon
            {
                oStrength.value = 80;
                oCute.value = 60;
                oLove.value = 40;
                oPic.value += "dragon.jpg";
            } else {
                oStrength.value = 0;
                oCute.value = 0;
                oLove.value = 0;
                oPic.value += "unkown.jpg";
            }
            oImg.src = oPic.value;
        }
    </script>
</head>

<body>
<form name="petForm" method="post" action="AddServlet?action=addAction">
    <input type="hidden" name="operate" value="doAdopt">
    <input type="hidden" name="item.petPic" value="">


    <div class="main_div">
        <h1>我的宝贝儿</h1>

        <table width="100%" cellspacing="0" cellpadding="0" border="0">
            <tr>
                <td width="450">&nbsp;
                </td>
                <td rowspan="2" style="background-color:pink;text-align:right;">&nbsp;


                    <a href="index.jsp">登录</a>
                    &nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td style="background-color:pink;">&nbsp;
                    <a href="index.jsp">首页</a>&nbsp;
                    |&nbsp;


                    <a href="adopt.jsp">领养宠物</a>

                    &nbsp;&nbsp;
                </td>
            </tr>
        </table>
    </div>
    <div class="main_div">
        <table>
            <tr>
                <td width="320px" valign="top">

                    <table class="input_table" width="100%">
                        <tr>
                            <th>宠物名：</th>
                            <td><input type="text" name="item.petName" value=""></td>
                        </tr>
                        <tr>
                            <th>类：</th>
                            <td>
                                <select name="item.petType" onchange="javascript:setPetType(this);">
                                    <option value="">请选择...</option>
                                    <option value="1">千禧猪</option>
                                    <option value="2">喵咪</option>
                                    <option value="3">哥斯拉</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th>性别：</th>
                            <td>
                                <input type="radio" name="item.petSex" value="男">男
                                <input type="radio" name="item.petSex" value="女">女
                                <input type="radio" name="item.petSex" value="小" checked="checked">小
                            </td>
                        </tr>
                        <tr>
                            <th>力量：</th>
                            <td><input type="text" name="item.petStrength" value="" readonly="readonly"></td>
                        </tr>
                        <tr>
                            <th>能力：</th>
                            <td><input type="text" name="item.petCute" value="" readonly="readonly"></td>
                        </tr>
                        <tr>
                            <th>爱心：</th>
                            <td><input type="text" name="item.petLove" value="" readonly="readonly"></td>
                        </tr>

                        <tr>
                            <th>介绍：</th>
                            <td><textarea name="item.petIntro"></textarea></td>
                        </tr>
                        <tr>
                            <th>主人名：</th>
                            <td><input type="text" name="item.petOwnerName" value=""></td>
                        </tr>
                        <tr>
                            <th>宠物EMail：</th>
                            <td><input type="text" name="item.petOwnerEmail" value=""></td>
                        </tr>
                        <tr>
                            <th>密码：</th>
                            <td><input type="password" name="item.petPassword" value=""></td>
                        </tr>
                        <tr>
                            <th>&nbsp;</th>
                            <td>
                                <button onclick="javascript:doAdopt();">领养</button>
                            </td>
                        </tr>
                    </table>

                </td>
                <td valign="top">
                    <img id="petImg" src="images/pet/unkown.jpg"/>
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
