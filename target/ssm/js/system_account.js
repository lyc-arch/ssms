$(function(){
	$('button.btn-creation').on('click', function(e){  //新增用户弹框
		account.showAddBox();
	});
});
var account = {
	showAddBox : function(){		
		Dialog.showModal('#accountModal');
	}
};