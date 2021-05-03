$(function(){
    var map = new BMap.Map("allmap");  //创建地图
    var point = new BMap.Point(120.12987,30.87937); //设置学校位置
    map.centerAndZoom(point, 16);  //设置中心点
    map.enableScrollWheelZoom(); //鼠标滚动缩放地图
})