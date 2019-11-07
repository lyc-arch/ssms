$(function(){
	$('button.btn-creation').on('click', function(e){  //新增用户弹框
		role.showAddBox();
	});
});
var role = {
	showAddBox : function(){		
		Dialog.showModal('#roleModal');
	}
};