<%--
  Created by IntelliJ IDEA.
  User: haogaofeng
  Date: 2018/11/30
  Time: 3:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="js/echarts.common.min.js"></script>
    <script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<body>
<div id="show" style="width: 700px;height: 600px"></div>
<script type="text/javascript">

    var charset = echarts.init($("#show")[0]);
    var option = {
        title: {
            text: 'AJAX异步加载数据柱状图'
        },
        legend: {
            data: ['成绩']
        },
        tooltip: {
            trigger: 'axis',
            axisPointer: {            // 坐标轴指示器，坐标轴触发有效
                type: 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
            }
        },
        xAxis:
            {
                data: []
            }
        ,
        yAxis: {}
        ,
        series: [{
            name: '成绩',
            type: 'bar',
            data: []
        }]
    };
    charset.setOption(option);
    charset.showLoading();
    var names = [];
    var scores = [];
    $.ajax({
        type: "POST",
        url: "getAllStudent.do",
        dataType: "json",
        success: function (returndata) {
            if (returndata) {
                $(returndata).each(function (index, item) {
                    names.push(item.name);
                    scores.push(item.score);
                })
            }
            charset.hideLoading();
            charset.setOption({
                xAxis: {
                    data: names
                },
                series: [{
                    name: '成绩',
                    type: 'bar',
                    data: scores
                }]
            })
        }
    })
</script>
</body>
</html>
