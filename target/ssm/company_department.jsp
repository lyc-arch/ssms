<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: liyuchen
  Date: 2019/7/12
  Time: 20:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>实习员工</title>

    <link href="${pageContext.request.contextPath}/css/bootstrap-dialog.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet">

    <script src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap-dialog.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap-pagy.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/common.js"></script>
    <script src="${pageContext.request.contextPath}/js/company_department.js"></script>
</head>

<body>

<div class="container breadcrumb-container">
    <ol class="breadcrumb">
        <li>管理系统</li>
        <li>部门与职位</li>
        <li class="active">部门管理</li>
    </ol>
</div>

<div class="container main-container">
    <!-- 代码区 -->
    <div class="row">
        <div class="col-md-10">
            <div class="input-group w600">
                <input type="text" id="content" class="form-control text-search" placeholder="请输入搜索内容..." />
                <div class="input-group-btn">
                    <button type="button" onclick="selectPost(1)" class="btn btn-primary btn-search">
                        <span class="glyphicon glyphicon-search"></span>&nbsp;搜索
                    </button>
                </div>
            </div>
        </div>
        <div class="col-md-2 text-align-right">
            <button type="button" class="btn btn-primary btn-creation">
                <span class="glyphicon glyphicon-plus"></span>&nbsp;新增部门
            </button>
        </div>
    </div>
    <!-- 数据列表 -->
    <table class="table table-bordered table-hover margin-top-20">
        <thead>
        <tr>
            <th style="width:70px;">编号</th>
            <th style="width:120px">名称</th>
            <th style="width:140px;">创建时间</th>
            <th style="width:100px;">创建者</th>
            <!-- <th style="width:120px;">部门经理</th> -->
            <th style="width:520px">简介</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody class="tbody-list" id="post">
        <c:forEach items="${requestScope.pageHolder.data}" var="posi">
        <tr>
            <td>${posi.poId}</td>
            <td>${posi.poName}</td>
            <td>${posi.poDate}</td>
            <td>${posi.poPeople}</td>
            <td>${posi.poMessage}</td>
            <td><button type='button' class='btn btn-primary btn-xs'><span class='glyphicon glyphicon-pencil'></span>&nbsp;编辑</button> <button type='button' onclick="p(this)" value=" +${posi.poId} +" class='btn btn-danger btn-xs'><span class='glyphicon glyphicon-remove'></span>&nbsp;删除</button></td>
        </tr>
        </c:forEach>
        </tbody>
    </table>


    <ul class="pagination" id="position_page">

        <c:choose>
        <c:when test="${requestScope.pageHolder.curPage>1}">
        <li><a href="/listPosition/${requestScope.pageHolder.curPage-1}/5" aria-label="Previous"> <span aria-hidden="true">&raquo;</span></a></li>
        </c:when>
            <c:otherwise>
                <li><a href="#" onclick="return false" aria-label="Previous"> <span aria-hidden="true">&raquo;</span></a></li>

            </c:otherwise>

        </c:choose>
        <c:forEach var="i" begin="1" end="${requestScope.pageHolder.totalPage}">
            <c:choose>
            <c:when test="${requestScope.pageHolder.curPage==i}">
                <li class="active"><a href="/listPosition/${i}/5">${i}</a></li>
            </c:when>
        <c:otherwise>
            <li><a href="/listPosition/${i}/5">${i}</a></li>
        </c:otherwise>
            </c:choose>
        </c:forEach>
        <c:choose>
            <c:when test="${requestScope.pageHolder.curPage<requestScope.pageHolder.totalPage}">
                <li><a href="/listPosition/${requestScope.pageHolder.curPage+1}/5" aria-label="Next"> <span aria-hidden="true">&raquo;</span></a></li>
            </c:when>
            <c:otherwise>
                <li><a href="#" onclick="return false" aria-label="Previous"> <span aria-hidden="true">&raquo;</span></a></li>

            </c:otherwise>

        </c:choose>

    </ul>
</div>
<div class="container footer-container">
    开发者-happygod-<a href>http://www.happygeniubibibibi.com</a>
</div>

<!-- Modal -->
<div class="modal fade" id="createModal" tabindex="-1" role="dialog" aria-labelledby="mycreateModal">
    <div class="modal-dialog" role="document" style="width:430px;">
        <div class="modal-content login-modal-content">
            <div class="modal-header modal-header-primary">
                <h4 class="modal-title" id="mycreateModal">新增部门</h4>
            </div>
            <div class="modal-body">
                <input type="tel" id="poName" class="form-control demp-name" placeholder="部门名称">
                <textarea id="poMessage" class="form-control margin-top-10 demp-desc" rows="2" placeholder="部门描述信息"></textarea>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" onclick="savaPosition()"  class="btn btn-primary btn-save" >保存</button>
            </div>
        </div>
    </div>
</div>

</body>
</html>
<script type="text/javascript">

    //增加部门信息
    function savaPosition() {
        var poName = $("#poName").val();
        var poMessage = $("#poMessage").val();

        $.ajax({

            type:"post",
            url:"/savePosition",
            data:{
                poName:poName,
                poMessage:poMessage,

            },
            dataType:"json",
            success:function (pageinfo) {
                window.location.reload();
            }

        });

    };


   //删除部门信息
   function p(q) {

       var id = q.value;

       $.ajax({

           type:"POST",
           url:"/deletePosition",
           data : 'poId='+id,
           dataType:"json",
           success:function (pageinfo) {
               alert(pageinfo.msg);
               window.location.reload();

           }





       });
   };

   //搜索部门信息
   function selectPost(curPage) {
       var content = $("#content").val();
       var curPage = curPage;
       var pageNum = 5;



       $.ajax({

           type:"post",
           url:"/selectPosition",
           data:{
               content:content,
               curPage:curPage,
               pageNum:pageNum,
           },
           dataType:"json",
           success: function (pageinfo) {

               var str = "";
               var categorys = pageinfo.pageInfo.data;
               var curPage = pageinfo.pageInfo.curPage;
               var totalCount=pageinfo.pageInfo.totalCount;
               var totalPage = pageinfo.pageInfo.totalPage;

               $("#post").empty();
               if(categorys.length==0){
                   var str0="无数据";
                   $("#post").html(str0)
               }else {
                   for (var i = 0; i < categorys.length; i++) {

                       str += '<tr>' +
                           '<td>' + categorys[i].poId + '</td>' +
                           '<td>' + categorys[i].poName + '</td>' +
                           '<td>' + categorys[i].poDate + '</td>' +
                           '<td>' + categorys[i].poPeople + '</td>' +
                           '<td>' + categorys[i].poMessage + '</td>' +
                           '<td><button id="updatePostion" type=\'button\' class=\'btn btn-primary btn-xs\'><span class=\'glyphicon glyphicon-pencil\'></span>&nbsp;编辑</button> <button id="deletePost" onclick="p(this)" value=' + categorys[i].poId + ' type=\'button\' class=\'btn btn-danger btn-xs\'><span class=\'glyphicon glyphicon-remove\'></span>&nbsp;删除</button></td>' +
                           '</tr>';


                   }

                   $("#post").html(str)

                   $("#position_page").empty()
                   ;
                   var str1 = '<li><a  href="javascript:pre1(' + curPage + ')" aria-label="Next"> <span aria-hidden="true">&raquo;</span></a ></li>';


                   var str2 = '';
                   for (var j = 1; j <= totalPage; j++) {

                       str2 += '<li class=\'active\'><a href="javascript:selectPost(' + j + ')">' + j + '</a></li>';

                   }
                   var str3 = '<li><a href="javascript:next1(' + curPage + ',' + totalPage + ')"   aria-label="Previous"> <span aria-hidden="true">&raquo;</span></a></li>';

                   $("#position_page").append(str1);
                   $("#position_page").append(str2);
                   $("#position_page").append(str3);
               }
           }

       });
       if(content == null || content == '' ){
           alert("输入搜索内容");
           window.location.reload();
       }

   };


   //搜素上一页
   function pre1(curPage) {
       var evt = evt || window.event;
       if(curPage<=1){
           evt.preventDefault();
       }
       curPage -=1;
       selectPost(curPage);
   };

   //搜索下一页
   function next1(curPage,totalPage) {
       var evt = evt || window.event;
       if(curPage>=totalPage){

           evt.preventDefault();

       }
       curPage +=1;
       selectPost(curPage);
   };

</script>

