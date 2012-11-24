<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>left</title>
    <%@ include file="../public/common.jsp" %>
    <script src="js/prototype.lite.js" type="text/javascript"></script>
    <script src="js/moo.fx.js" type="text/javascript"></script>
    <script src="js/moo.fx.pack.js" type="text/javascript"></script>
    <style>
        body {

            font: 12px Arial, Helvetica, sans-serif;
            color: #000;
            background-color: #EEF2FB;
            margin: 0px;
        }

        #container {
            width: 182px;
        }

        H1 {
            font-size: 12px;
            margin: 0px;
            width: 182px;
            cursor: pointer;
            height: 30px;
            line-height: 20px;
        }

        H1 a {
            display: block;
            width: 182px;
            color: #000;
            height: 30px;
            text-decoration: none;
            moz-outline-style: none;
            background-image: url(images/menu_bgS.gif);
            background-repeat: no-repeat;
            line-height: 30px;
            text-align: center;
            margin: 0px;
            padding: 0px;
        }

        .content {
            width: 182px;
            height: 26px;

        }

        .MM ul {
            list-style-type: none;
            margin: 0px;
            padding: 0px;
            display: block;
        }

        .MM li {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 12px;
            line-height: 26px;
            color: #333333;
            list-style-type: none;
            display: block;
            text-decoration: none;
            height: 26px;
            width: 182px;
            padding-left: 0px;
        }

        .MM {
            width: 182px;
            margin: 0px;
            padding: 0px;
            left: 0px;
            top: 0px;
            right: 0px;
            bottom: 0px;
            clip: rect(0px, 0px, 0px, 0px);
        }

        .MM a:link {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 12px;
            line-height: 26px;
            color: #333333;
            background-image: url(images/menu_bg1.gif);
            background-repeat: no-repeat;
            height: 26px;
            width: 182px;
            display: block;
            text-align: center;
            margin: 0px;
            padding: 0px;
            overflow: hidden;
            text-decoration: none;
        }

        .MM a:visited {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 12px;
            line-height: 26px;
            color: #333333;
            background-image: url(images/menu_bg1.gif);
            background-repeat: no-repeat;
            display: block;
            text-align: center;
            margin: 0px;
            padding: 0px;
            height: 26px;
            width: 182px;
            text-decoration: none;
        }

        .MM a:active {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 12px;
            line-height: 26px;
            color: #333333;
            background-image: url(images/menu_bg1.gif);
            background-repeat: no-repeat;
            height: 26px;
            width: 182px;
            display: block;
            text-align: center;
            margin: 0px;
            padding: 0px;
            overflow: hidden;
            text-decoration: none;
        }

        .MM a:hover {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 12px;
            line-height: 26px;
            font-weight: bold;
            color: #006600;
            background-image: url(images/menu_bg2.gif);
            background-repeat: no-repeat;
            text-align: center;
            display: block;
            margin: 0px;
            padding: 0px;
            height: 26px;
            width: 182px;
            text-decoration: none;
        }
    </style>
</head>
<body>
<table width="100%" height="280" border="0" cellpadding="0" cellspacing="0" bgcolor="#EEF2FB">
    <tr>
        <td width="182" valign="top">
            <div id="container">
                <h1 class="type"><a href="admin/frame_right.do" target="main">后台首页</a></h1>
                <div class="content">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td></td>
                        </tr>
                    </table>
                </div>
                <h1 class="type"><a href="javascript:void(0)">图片管理</a></h1>

                <div class="content">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td><img src="images/menu_topline.gif" width="182" height="5"/></td>
                        </tr>
                    </table>
                    <ul class="MM">
                        <li><a href="admin/image_list.do" target="main">查看图片</a></li>
                        <li><a href="admin/image_mdy.do" target="main">修改图片</a></li>
                    </ul>
                </div>
                <h1 class="type"><a href="javascript:void(0)">产品管理</a></h1>

                <div class="content">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td><img src="images/menu_topline.gif" width="182" height="5"/></td>
                        </tr>
                    </table>
                    <ul class="MM">
                        <li><a href="admin/product_list.do" target="main">查看产品</a></li>
                        <li><a href="admin/product_add.do" target="main">增加产品</a></li>
                    </ul>
                </div>
                <h1 class="type"><a href="javascript:void(0)">新闻管理</a></h1>

                <div class="content">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td><img src="images/menu_topline.gif" width="182" height="5"/></td>
                        </tr>
                    </table>
                    <ul class="MM">
                        <li><a href="admin/news_list.do" target="main">查看新闻</a></li>
                        <li><a href="admin/news_add.do" target="main">添加新闻</a></li>
                    </ul>
                </div>
                <h1 class="type"><a href="javascript:void(0)">留言管理</a></h1>

                <div class="content">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td><img src="images/menu_topline.gif" width="182" height="5"/></td>
                        </tr>
                    </table>
                    <ul class="MM">
                        <li><a href="admin/message_list.do" target="main">查看留言</a></li>
                    </ul>
                </div>
                <h1 class="type"><a href="javascript:void(0)">信息管理</a></h1>

                <div class="content">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td><img src="images/menu_topline.gif" width="182" height="5"/></td>
                        </tr>
                    </table>
                    <ul class="MM">
                        <li><a href="admin/showWebTitle.do" target="main">SEO相关</a></li>
                        <li><a href="admin/frontImage_list.do" target="main">主页大图</a></li>
                        <!--<li><a href="admin/showAboutUs" target="main">关于我们</a></li>
                        <li><a href="admin/base_init.do?target=showAboutUs" target="main">添加管理</a></li>-->
                        <li><a href="admin/base_mdyPassword.do" target="main">修改密码</a></li>
                    </ul>
                </div>
            </div>
            <script type="text/javascript">
                var contents = document.getElementsByClassName('content');
                var toggles = document.getElementsByClassName('type');

                var myAccordion = new fx.Accordion(
                        toggles, contents, {opacity:true, duration:400}
                );
                myAccordion.showThisHideOpen(contents[0]);
            </script>
        </td>
    </tr>
</table>
</body>
</html>
