<%--
  Created by IntelliJ IDEA.
  User: zhujiang
  Date: 2019/1/24
  Time: 17:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>宠物日记：11111111</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/styles.css"/>
</head>
<body>
<form name="diaryForm" method="post" action="pet.jsp">
    <input type="hidden" name="operate" value="toView">


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
                <td width="300px" valign="top">

                    <table>
                        <tr>
                            <td valign="top">我叫 yicongying，
                                是一只伟大的小千禧猪。<br/>
                                我的主人是<a href="mailto:liu@.net">hlliu</a>。
                                <li>力量：170</li>
                                <li>能力：145</li>
                                <li>爱心：139</li>
                                <br/>
                                ------------------------------ <br/>
                            </td>
                        </tr>
                    </table>
                    <div id="doingDiv"></div>

                    <img id="doingImg" src="images/pet/pig.jpg"/>

                    <div id="trainingDiv">

                    </div>
                    <div id="diaryDiv"></div>
                    ------------------------------ <br/>
                    lanzhu。<br/>
                    <div id="funnyDiv"/>
                </td>
                <td width="500px" valign="top">

                    <div id="diaryDiv1">
                        <p>
                            <br/>
                            <br/>
                            <b>
                                2018年07月02日 &nbsp;&nbsp;&nbsp;
                                星期一 &nbsp;&nbsp;&nbsp;
                                11111
                            </b>
                        </p>
                        <p>
                            <b>标题：</b>11111111
                        </p>
                        <p>
                            <b>内容：</b>
                        <div>11111111111111111111111111111111111111111111111111111</div>
                        </p>
                        <p>
                            <b>宠物：</b><a href="pet.jsp">yicongying</a>&nbsp;&nbsp;
                            <b>作者：</b><a href="mailto:liu@.net">hlliu</a><br/>
                            <b>最后更新：</b>2018-07-02 11:16:44 <br/>
                        </p>
                        <input type="submit" value="返回"/>
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
