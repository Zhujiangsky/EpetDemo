<%--
  Created by IntelliJ IDEA.
  User: zhujiang
  Date: 2019/1/24
  Time: 17:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>我的宝贝</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <script type="text/javascript" src="calc/calendar.js"></script>
    <script type="text/javascript" src="calc/calendar-en.js"></script>
    <script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
    <link type="text/css" rel="stylesheet" href="calc/calendar-system.css"/>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
    <script>
        $(document).ready(function () {
            $.ajax({
                "url": "ShowServlet",                      // 要提交的URL路径
                "type": "post",                     // 发送请求的方式
                "data": "action=showAction",                      // 要发送到服务器的数据
                "dataType": "json",                   // 指定传输的数据格式
                "success": function (result) {// 请求成功后要执行的代码
                    $.each(result.listdate, function () {
                        $("#riji").append("  <li>\n" +
                            "                                    <a href=\"diary.jsp#10\" target=\"_blank\">\n" +
                            "                                       " + this.diary_weather + "\n" +
                            "                                    </a>(" + this.diary_author + ",2018-07-01)\n" +
                            "                                </li>");
                    });
                    $("#riji").append(" <br/>\n" + "<a href=\"diary_list.jsp\" target=\"_blank\">更多&gt;&gt;</a>");
                    var a = 0;
                    $.each(result.listdate1, function () {
                        if (a >= 10) {
                            $("#kabb").append(" <li>\n" +
                                "                                    <a href=\"pet.jsp#9\" target=\"_blank\">\n" +
                                "                                        " + this.pet_name + "\n" +
                                "                                    </a>(" + this.pet_love + ")\n" +
                                "                                </li>");
                        } else {
                            $("#cmbb").append(" <li>\n" +
                                "                                    <a href=\"pet.jsp#9\" target=\"_blank\">\n" +
                                "                                        " + this.pet_name + "\n" +
                                "                                    </a>(" + this.pet_cute + ")\n" +
                                "                                </li>");
                        }
                        a++;

                    });
                    $("#cmbb").append(" <br/>\n" +
                        "                                <a href=\"pet_list.jsp\" target=\"_blank\">更多&gt;&gt;</a>")

                    $("#kabb").append(" <br/>\n" +
                        "                                <a href=\"pet_list.jsp\" target=\"_blank\">更多&gt;&gt;</a>")

                }
            })
        });


        function doLogin() {
            document.forms[0].action = "LoginServlet?action=loginAction";
            document.forms[0].elements["operate"].value = "doLogin";
            document.forms[0].submit();
        }

        function searchPet() {
            document.forms[0].action = "pet_list.jsp";
            document.forms[0].target = "_blank";
            document.forms[0].elements["operate"].value = "list";
            document.forms[0].submit();
        }

        function searchDiary() {
            document.forms[0].action = "diary_list.jsp";
            document.forms[0].target = "_blank";
            document.forms[0].elements["operate"].value = "list";
            document.forms[0].submit();
        }
    </script>
    <script language="JavaScript">
        // calendar /////////////////////////////////////////////////////////////////
        //
        var calendar = null;

        function calSelected(cal, date) {
            cal.sel.value = date;

            var updateFlexElements = document.getElementsByName('updateF' + cal.sel.name.substring(1));
            if ((typeof updateFlexElements != "undefined") && (updateFlexElements.length > 0)) {
                var elem = updateFlexElements[0];
                if (elem.type == "checkbox") {
                    elem.checked = true;
                }
            }
            cal.callCloseHandler();
        } // calSelected

        function calCloseHandler(cal) {
            cal.hide();
        } // calCloseHandler

        function calShow(id) {
            var el = document.getElementById(id);
            if (calendar != null) {
                calendar.hide();		// hide the existing calendar
                calendar.parseDate(el.value); // set it to a new date
            } else {
                var cal = new Calendar(false, null, calSelected, calCloseHandler);
                var now = new Date();
                calendar = cal;
                //calendar.setDateFormat('mm/dd/y');
                calendar.setDateFormat('y-mm-dd');
                calendar.setRange(now.getFullYear() - 10, now.getFullYear() + 10);
                calendar.weekNumbers = false;
                calendar.create();
            }
            calendar.sel = el;
            calendar.showAtElement(el);
            //calendar.addEvent(document, "mousedown", checkCalendar);
            return false;
        } // calShow
    </script>
</head>
<body>
<form name="petForm" method="post" action="pet.jsp">
    <input type="hidden" name="operate" value="index">
    <div class="main_div">
        <h1>我的宝贝儿</h1>

        <table width="100%" cellspacing="0" cellpadding="0" border="0">
            <tr>
                <td width="450">&nbsp;
                </td>
                <td rowspan="2" style="background-color:pink;text-align:right;">&nbsp;


                    宠物<input type="text" name="condition.petId" size="6" value="">
                    密码<input type="password" name="condition.petPassword" size="6" value="">&nbsp;
                    <button onclick="javascript:doLogin();">登录</button>
                    &nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td style="background-color:pink;">&nbsp;


                    <a href="adopt.jsp">领养宠物</a>

                    &nbsp;&nbsp;
                </td>
            </tr>
        </table>
    </div>
    <div class="main_div">
        <table>
            <tr>
                <td>
                    <table style="border:solid 1px black;" height="200px" width="500px">
                        <tr>
                            <th colspan="2" style="background-color:gray;height:20px;">
                                金宝宝排行
                            </th>
                        </tr>
                        <tr>
                            <td width="200px">
                                <img src="images/pet/pig.jpg" width="200px" height="140px"/><br/>
                                yicongying
                                (千禧猪-318-hlliu)<br/>
                                [力量:170;
                                能力:145;
                                爱心:139]
                            </td>
                            <td>
                                <li>
                                    <a href="pet.jsp" target="_blank">
                                        yicongying
                                    </a>(千禧猪 - 318 - hlliu)
                                </li>
                                <br/>
                                <a href="pet_list.jsp" target="_blank">更多&gt;&gt;</a>
                            </td>
                        </tr>
                    </table>
                </td>
                <td valign="top">
                    <table style="border:solid 1px black;height:20px;" height="200px" width="300px">
                        <tr>
                            <th colspan="1" style="background-color:gray;">
                                查找
                            </th>
                        </tr>
                        <tr>
                            <td valign="top" style="height:182px;">
                                &nbsp;&nbsp;&nbsp;宠物名&nbsp;<input type="text" name="condition.petName" size="10"
                                                                  value=""><br/>
                                宠物类别&nbsp;
                                <select name="condition.petType">
                                    <option value="-1">全部...</option>
                                    <option value="1">千禧猪</option>
                                    <option value="2">喵咪</option>
                                    <option value="3">哥斯拉</option>
                                </select>
                                <br/>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                主人&nbsp;<input type="text" name="condition.petOwnerName" size="10" value="">
                                &nbsp;<button onclick="javascript:searchPet();">查找宠物</button>

                                <br/><br/>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                标题&nbsp;<input name="condtion.diaryTitle" size="10"/><br/>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                作者&nbsp;<input name="condtion.diaryAuthor" size="10"/><br/>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                日期&nbsp;<input type="text" onclick="calShow('condtion.diaryDateString');"
                                               onfocus="calShow('condtion.diaryDateString');"
                                               name="condtion.diaryDateString" size="10" readonly="true"/>
                                <br/>
                                &nbsp;&nbsp;
                                关键字&nbsp;<input name="condtion.diaryContext" size="10"/>
                                &nbsp;<button onclick="javascript:searchDiary();">查找日记</button>

                                <br/>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    <div class="main_div">
        <table>
            <tr>
                <td>
                    <table style="border:solid 1px black;height:20px;" height="200px" width="200px">
                        <tr>
                            <th colspan="1" style="background-color:gray;">
                                最新宠物日记
                            </th>
                        </tr>
                        <tr>
                            <td valign="top" id="riji">


                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table style="border:solid 1px black;height:20px;" height="200px" width="200px">
                        <tr>
                            <th colspan="1" style="background-color:gray;">
                                最活力宝贝
                            </th>
                        </tr>
                        <tr>
                            <td valign="top">

                                <li>
                                    <a href="pet.jsp#19" target="_blank">
                                        new
                                    </a>(195)
                                </li>

                                <li>
                                    <a href="pet.jsp#14" target="_blank">
                                        yicongying
                                    </a>(190)
                                </li>

                                <li>
                                    <a href="pet.jsp#15" target="_blank">
                                        yicongying
                                    </a>(190)
                                </li>

                                <li>
                                    <a href="pet.jsp#9" target="_blank">
                                        yicongying
                                    </a>(170)
                                </li>

                                <li>
                                    <a href="pet.jsp#1" target="_blank">
                                        dog1
                                    </a>(100)
                                </li>

                                <li>
                                    <a href="pet.jsp#16" target="_blank">
                                        newcat
                                    </a>(100)
                                </li>

                                <li>
                                    <a href="pet.jsp#21" target="_blank">
                                        bb
                                    </a>(100)
                                </li>

                                <li>
                                    <a href="pet.jsp#12" target="_blank">
                                        qq
                                    </a>(80)
                                </li>

                                <li>
                                    <a href="pet.jsp#13" target="_blank">
                                        11
                                    </a>(80)
                                </li>

                                <li>
                                    <a href="pet.jsp#20" target="_blank">
                                        ww
                                    </a>(80)
                                </li>

                                <br/>
                                <a href="pet_list.jsp" target="_blank">更多&gt;&gt;</a>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table style="border:solid 1px black;height:20px;" height="200px" width="200px">
                        <tr>
                            <th colspan="1" style="background-color:gray;">
                                最聪明宝贝
                            </th>
                        </tr>
                        <tr>
                            <td valign="top" id="cmbb">


                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table style="border:solid 1px black;height:20px;" height="200px" width="200px">
                        <tr>
                            <th colspan="1" style="background-color:gray;">
                                最可爱宝贝
                            </th>
                        </tr>
                        <tr>
                            <td valign="top" id="kabb">


                            </td>
                        </tr>
                    </table>
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
