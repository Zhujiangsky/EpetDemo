<%--
  Created by IntelliJ IDEA.
  User: zhujiang
  Date: 2019/1/24
  Time: 17:30
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
    <link rel="stylesheet" type="text/css" href="css/styles.css">
    <script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
</head>
<body>
<form name="petForm" method="post" action="">
    <input type="hidden" name="operate" value="list">
    <input type="hidden" name="listType" value="all"/>
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
                <td width="200px" valign="top">
                    <br/>
                    <br/>
                    <br/>
                    <table style="border:solid 1px black;">
                        <tr>
                            <th style="background-color:gray;height:20px;">
                                查找
                            </th>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;&nbsp;宠物名&nbsp;<input type="text" name="condition.petName" size="10"
                                                                  value="">
                                <br/>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                主人&nbsp;<input type="text" name="condition.petOwnerName" size="10" value="">
                                <br/>
                                宠物类别&nbsp;
                                <select name="condition.petType">
                                    <option value="-1">全部...</option>
                                    <option value="1">千禧猪</option>
                                    <option value="2">喵咪</option>
                                    <option value="3">哥斯拉</option>
                                </select><br/>
                                排序方式&nbsp;
                                <select name="listType">
                                    <option value="all" selected="selected">全部...</option>
                                    <option value="strength">活力</option>
                                    <option value="cute">聪明</option>
                                    <option value="love">可爱</option>
                                </select>
                                &nbsp;<input type="submit" value="查找"/>
                            </td>
                        </tr>
                    </table>

                </td>
                <td>
                    <div>
                        <div class="input_title">总积分排名</div>


                        <table class="data_table">
                            <tr>
                                <th width="40px">序号</th>
                                <th width="200px">宠物名</th>
                                <th width="50px">类别</th>
                                <th width="50px">总积分</th>
                                <th width="40px">力量</th>
                                <th width="40px">聪明</th>
                                <th width="40px">爱心</th>
                                <th width="150px">主人</th>
                            </tr>

                            <tr>
                                <td style="text-align:right;">
                                    1
                                </td>
                                <td>
                                    <a href="pet.jsp#9" target="_blank">
                                        yicongying
                                    </a>
                                </td>
                                <td style="text-align:right;">千禧猪</td>
                                <td style="text-align:right;">318</td>
                                <td style="text-align:right;">170</td>
                                <td style="text-align:right;">145</td>
                                <td style="text-align:right;">139</td>
                                <td style="text-align:center;"><a href="mailto:liu@.net">hlliu</a></td>
                            </tr>

                            <tr>
                                <td style="text-align:right;">
                                    2
                                </td>
                                <td>
                                    <a href="pet.jsp#15" target="_blank">
                                        yicongying
                                    </a>
                                </td>
                                <td style="text-align:right;">千禧猪</td>
                                <td style="text-align:right;">246</td>
                                <td style="text-align:right;">190</td>
                                <td style="text-align:right;">106</td>
                                <td style="text-align:right;">102</td>
                                <td style="text-align:center;"><a href="mailto:liu@.net">hlliu</a></td>
                            </tr>

                            <tr>
                                <td style="text-align:right;">
                                    3
                                </td>
                                <td>
                                    <a href="pet.jsp#14" target="_blank">
                                        yicongying
                                    </a>
                                </td>
                                <td style="text-align:right;">千禧猪</td>
                                <td style="text-align:right;">246</td>
                                <td style="text-align:right;">190</td>
                                <td style="text-align:right;">106</td>
                                <td style="text-align:right;">102</td>
                                <td style="text-align:center;"><a href="mailto:liu@.net">hlliu</a></td>
                            </tr>

                            <tr>
                                <td style="text-align:right;">
                                    4
                                </td>
                                <td>
                                    <a href="pet.jsp#1" target="_blank">
                                        dog1
                                    </a>
                                </td>
                                <td style="text-align:right;">未定</td>
                                <td style="text-align:right;">220</td>
                                <td style="text-align:right;">100</td>
                                <td style="text-align:right;">100</td>
                                <td style="text-align:right;">100</td>
                                <td style="text-align:center;"><a href="mailto:xiao@x.net">xiao</a></td>
                            </tr>

                            <tr>
                                <td style="text-align:right;">
                                    5
                                </td>
                                <td>
                                    <a href="pet.jsp#19" target="_blank">
                                        new
                                    </a>
                                </td>
                                <td style="text-align:right;">哥斯拉</td>
                                <td style="text-align:right;">203</td>
                                <td style="text-align:right;">195</td>
                                <td style="text-align:right;">90</td>
                                <td style="text-align:right;">74</td>
                                <td style="text-align:center;"><a href="mailto:hlliu@sf">hlliu</a></td>
                            </tr>

                            <tr>
                                <td style="text-align:right;">
                                    6
                                </td>
                                <td>
                                    <a href="pet.jsp#16" target="_blank">
                                        newcat
                                    </a>
                                </td>
                                <td style="text-align:right;">喵咪</td>
                                <td style="text-align:right;">184</td>
                                <td style="text-align:right;">100</td>
                                <td style="text-align:right;">72</td>
                                <td style="text-align:right;">92</td>
                                <td style="text-align:center;"><a href="mailto:ss">ss</a></td>
                            </tr>

                            <tr>
                                <td style="text-align:right;">
                                    7
                                </td>
                                <td>
                                    <a href="pet.jsp#21" target="_blank">
                                        bb
                                    </a>
                                </td>
                                <td style="text-align:right;">哥斯拉</td>
                                <td style="text-align:right;">128</td>
                                <td style="text-align:right;">100</td>
                                <td style="text-align:right;">64</td>
                                <td style="text-align:right;">44</td>
                                <td style="text-align:center;"><a href="mailto:bb">bb</a></td>
                            </tr>

                            <tr>
                                <td style="text-align:right;">
                                    8
                                </td>
                                <td>
                                    <a href="pet.jsp#13" target="_blank">
                                        11
                                    </a>
                                </td>
                                <td style="text-align:right;">哥斯拉</td>
                                <td style="text-align:right;">116</td>
                                <td style="text-align:right;">80</td>
                                <td style="text-align:right;">60</td>
                                <td style="text-align:right;">40</td>
                                <td style="text-align:center;"><a href="mailto:111111111">11</a></td>
                            </tr>

                            <tr>
                                <td style="text-align:right;">
                                    9
                                </td>
                                <td>
                                    <a href="pet.jsp#12" target="_blank">
                                        qq
                                    </a>
                                </td>
                                <td style="text-align:right;">哥斯拉</td>
                                <td style="text-align:right;">116</td>
                                <td style="text-align:right;">80</td>
                                <td style="text-align:right;">60</td>
                                <td style="text-align:right;">40</td>
                                <td style="text-align:center;"><a href="mailto:"></a></td>
                            </tr>

                            <tr>
                                <td style="text-align:right;">
                                    10
                                </td>
                                <td>
                                    <a href="pet.jsp#20" target="_blank">
                                        ww
                                    </a>
                                </td>
                                <td style="text-align:right;">哥斯拉</td>
                                <td style="text-align:right;">116</td>
                                <td style="text-align:right;">80</td>
                                <td style="text-align:right;">60</td>
                                <td style="text-align:right;">40</td>
                                <td style="text-align:center;"><a href="mailto:">2</a></td>
                            </tr>

                            <tr>
                                <td style="text-align:right;">
                                    11
                                </td>
                                <td>
                                    <a href="pet.jsp#22" target="_blank">
                                        ss
                                    </a>
                                </td>
                                <td style="text-align:right;">哥斯拉</td>
                                <td style="text-align:right;">116</td>
                                <td style="text-align:right;">80</td>
                                <td style="text-align:right;">60</td>
                                <td style="text-align:right;">40</td>
                                <td style="text-align:center;"><a href="mailto:">s</a></td>
                            </tr>

                            <tr>
                                <td style="text-align:right;">
                                    12
                                </td>
                                <td>
                                    <a href="pet.jsp#11" target="_blank">
                                        大龙
                                    </a>
                                </td>
                                <td style="text-align:right;">未定</td>
                                <td style="text-align:right;">0</td>
                                <td style="text-align:right;">0</td>
                                <td style="text-align:right;">0</td>
                                <td style="text-align:right;">0</td>
                                <td style="text-align:center;"><a href="mailto:"></a></td>
                            </tr>

                            <tr>
                                <td style="text-align:right;">
                                    13
                                </td>
                                <td>
                                    <a href="pet.jsp#10" target="_blank">
                                        猫咪
                                    </a>
                                </td>
                                <td style="text-align:right;">未定</td>
                                <td style="text-align:right;">0</td>
                                <td style="text-align:right;">0</td>
                                <td style="text-align:right;">0</td>
                                <td style="text-align:right;">0</td>
                                <td style="text-align:center;"><a href="mailto:"></a></td>
                            </tr>

                            <tr>
                                <td style="text-align:right;">
                                    14
                                </td>
                                <td>
                                    <a href="pet.jsp#8" target="_blank">
                                        dog8
                                    </a>
                                </td>
                                <td style="text-align:right;">未定</td>
                                <td style="text-align:right;">0</td>
                                <td style="text-align:right;">0</td>
                                <td style="text-align:right;">0</td>
                                <td style="text-align:right;">0</td>
                                <td style="text-align:center;"><a href="mailto:"></a></td>
                            </tr>

                            <tr>
                                <td style="text-align:right;">
                                    15
                                </td>
                                <td>
                                    <a href="pet.jsp#7" target="_blank">
                                        dog7
                                    </a>
                                </td>
                                <td style="text-align:right;">未定</td>
                                <td style="text-align:right;">0</td>
                                <td style="text-align:right;">0</td>
                                <td style="text-align:right;">0</td>
                                <td style="text-align:right;">0</td>
                                <td style="text-align:center;"><a href="mailto:"></a></td>
                            </tr>

                        </table>
                        共条记录
                        每页显示<input name="pageResult.pageSize" value="15" size="3"/>条
                        第<input name="pageResult.pageNo" value="1" size="3"/>页
                        / 共2页
                        <a href="javascript:page_first();">第一页</a>
                        <a href="javascript:page_pre();">上一页</a>
                        <a href="javascript:page_next();">下一页</a>
                        <a href="javascript:page_last();">最后一页</a>
                        <button onclick="javascript:page_go();">GO</button>

                        <script>
                            function page_go() {
                                page_validate();
                                document.forms[0].submit();
                            }

                            function page_first() {
                                document.forms[0].elements["pageResult.pageNo"].value = 1;
                                document.forms[0].submit();
                            }

                            function page_pre() {
                                var pageNo = document.forms[0].elements["pageResult.pageNo"].value;
                                document.forms[0].elements["pageResult.pageNo"].value = parseInt(pageNo) - 1;
                                page_validate();
                                document.forms[0].submit();
                            }

                            function page_next() {
                                var pageNo = document.forms[0].elements["pageResult.pageNo"].value;
                                document.forms[0].elements["pageResult.pageNo"].value = parseInt(pageNo) + 1;
                                page_validate();
                                document.forms[0].submit();
                            }

                            function page_last() {
                                document.forms[0].elements["pageResult.pageNo"].value = 2;
                                document.forms[0].submit();
                            }

                            function page_validate() {
                                var pageTotal = 2;
                                var pageNo = document.forms[0].elements["pageResult.pageNo"].value;
                                if (pageNo < 1) pageNo = 1;
                                if (pageNo > pageTotal) pageNo = pageTotal;
                                document.forms[0].elements["pageResult.pageNo"].value = pageNo;

                                var recTotal = 22;
                                var pageSize = document.forms[0].elements["pageResult.pageSize"].value;
                                if (pageSize < 1) pageSize = 1;
                                document.forms[0].elements["pageResult.pageSize"].value = pageSize;
                            }

                        </script>
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
