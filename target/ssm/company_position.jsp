<%--
  Created by IntelliJ IDEA.
  User: liyuchen
  Date: 2019/7/21
  Time: 15:43
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

    <link href="./css/bootstrap.min.css" rel="stylesheet">
    <link href="./css/common.css" rel="stylesheet">

    <script src="./js/jquery-1.11.1.min.js"></script>
    <script src="./js/bootstrap.min.js"></script>
    <script src="./js/bootstrap-pagy.min.js"></script>
    <script src="./js/bootstrap-dialog.min.js"></script>
    <script src="./js/common.js"></script>
    <script src="./js/company_position.js"></script>
</head>

<body>

<div class="container breadcrumb-container">
    <ol class="breadcrumb">
        <li>管理系统</li>
        <li>部门与职位</li>
        <li class="active">职位管理</li>
    </ol>
</div>

<div class="container main-container">
    <!-- 代码区 -->
    <div class="row">
        <div class="col-md-10">
            <select class="form-control w120 float-left margin-right-10 select-department"><option value="-1">请选择部门</option></select>
            <div class="input-group w600">

                <input type="text" class="form-control text-search" placeholder="请输入搜索内容..." />
                <div class="input-group-btn">
                    <button type="button" class="btn btn-primary btn-search">
                        <span class="glyphicon glyphicon-search"></span>&nbsp;搜索
                    </button>
                </div>
            </div>
        </div>
        <div class="col-md-2 text-align-right">
            <button type="button" class="btn btn-primary btn-creation">
                <span class="glyphicon glyphicon-plus"></span>&nbsp;新增职位
            </button>
        </div>
    </div>
    <!-- 数据列表 -->
    <table class="table table-bordered table-hover margin-top-20">
        <thead>
        <tr>
            <th style="width:70px;">编号</th>
            <th style="width:130px;">职位名称</th>
            <th style="width:140px;">创建时间</th>
            <th style="width:100px;">创建人</th>
            <th style="width:150px;">所属部门</th>
            <th style="width:380px;">简介</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody class="tbody-list">
        <tr>
            <td>1</td>
            <td>财务经理</td>
            <td>2019-7-1</td>
            <td>Happyge</td>
            <td>财务部</td>
            <td>aaaaaaaa</td>
            <td><button type='button' class='btn btn-primary btn-xs'><span class='glyphicon glyphicon-pencil'></span>&nbsp;编辑</button> <button type='button' class='btn btn-danger btn-xs'><span class='glyphicon glyphicon-remove'></span>&nbsp;删除</button></td>
        </tr>
        <tr>
            <td>2</td>
            <td>技术主管</td>
            <td>2019-7-1</td>
            <td>Happyge</td>
            <td>技术部</td>
            <td>bbbbbbbb</td>
            <td><button type='button' class='btn btn-primary btn-xs'><span class='glyphicon glyphicon-pencil'></span>&nbsp;编辑</button> <button type='button' class='btn btn-danger btn-xs'><span class='glyphicon glyphicon-remove'></span>&nbsp;删除</button></td>
        </tr>
        <tr>
            <td>3</td>
            <td>软件设计师</td>
            <td>2019-7-1</td>
            <td>Happyge</td>
            <td>技术部</td>
            <td>66666666</td>
            <td><button type='button' class='btn btn-primary btn-xs'><span class='glyphicon glyphicon-pencil'></span>&nbsp;编辑</button> <button type='button' class='btn btn-danger btn-xs'><span class='glyphicon glyphicon-remove'></span>&nbsp;删除</button></td>
        </tr>
        <tr>
            <td>4</td>
            <td>干事的</td>
            <td>2019-7-1</td>
            <td>Happyge</td>
            <td>技术部</td>
            <td>eeeeeeee</td>
            <td><button type='button' class='btn btn-primary btn-xs'><span class='glyphicon glyphicon-pencil'></span>&nbsp;编辑</button> <button type='button' class='btn btn-danger btn-xs'><span class='glyphicon glyphicon-remove'></span>&nbsp;删除</button></td>
        </tr>
        <tr>
            <td>5</td>
            <td>混子</td>
            <td>2019-7-1</td>
            <td>Happyge</td>
            <td>外联部</td>
            <td>cccccccc</td>
            <td><button type='button' class='btn btn-primary btn-xs'><span class='glyphicon glyphicon-pencil'></span>&nbsp;编辑</button> <button type='button' class='btn btn-danger btn-xs'><span class='glyphicon glyphicon-remove'></span>&nbsp;删除</button></td>
        </tr>
        <tr>
            <td>6</td>
            <td>保镖</td>
            <td>2019-7-1</td>
            <td>Happyge</td>
            <td>外联部</td>
            <td>dddddddd</td>
            <td><button type='button' class='btn btn-primary btn-xs'><span class='glyphicon glyphicon-pencil'></span>&nbsp;编辑</button> <button type='button' class='btn btn-danger btn-xs'><span class='glyphicon glyphicon-remove'></span>&nbsp;删除</button></td>
        </tr>

        <tr>
            <td>7</td>
            <td>掌柜</td>
            <td>2019-7-1</td>
            <td>Happyge</td>
            <td>小卖部</td>
            <td>66666666</td>
            <td><button type='button' class='btn btn-primary btn-xs'><span class='glyphicon glyphicon-pencil'></span>&nbsp;编辑</button> <button type='button' class='btn btn-danger btn-xs'><span class='glyphicon glyphicon-remove'></span>&nbsp;删除</button></td>
        </tr>
        </tbody>
    </table>
    <ul class="pagination">
        <li><a href="#" aria-label="Previous"> <span aria-hidden="true">&raquo;</span></a></li>
        <li class="active"><a href="#">1</a></li>
        <li><a href="#">2</a></li>
        <li><a href="#">3</a></li>
        <li><a href="#">4</a></li>
        <li><a href="#">5</a></li>
        <li><a href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span></a></li>
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
                <h4 class="modal-title" id="mycreateModal">新增职位</h4>
            </div>
            <div class="modal-body">
                <select class="form-control posi-department">
                    <option value ="-1">请选择</option>
                    <option value ="1">财务部</option>
                    <option value ="2">外联部</option>
                    <option value ="3">技术部</option>
                    <option value ="4">后勤部</option>
                    <option value ="5">小卖部</option>
                </select>
                <input type="tel" class="form-control margin-top-10 posi-name" placeholder="职位名称">
                <textarea class="form-control margin-top-10 posi-desc" rows="2" placeholder="职位描述信息"></textarea>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary btn-save" >保存</button>
            </div>
        </div>
    </div>
</div>


</body>
<script type="text/javascript">

    alert("========================")




</script>
</html>