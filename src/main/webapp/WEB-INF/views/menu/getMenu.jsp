<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <section id="container">
    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <h3 class="font-JejuGothic"><i class="fa fa-angle-right"></i> 메뉴 관리</h3>
        <div class="row">
          <div class="col-md-12">
            <div class="content-panel">
              <table class="table table-hover">
                <thead>
                  <tr>
                    <th>#</th>
                    <th>구분코드</th>
                    <th>메뉴명</th>
                    <th>종류</th>
                    <th>상태</th>
                    <th style="text-align: right;"><button onclick="location.href='/menu/registerMenu'" type="button" class="btn btn-outline-brown">메뉴 등록</button></th>
                  </tr>
                </thead>
                <tbody id="menuList">
                </tbody>
              </table>
            </div>
          </div>
          <!-- /col-md-12 -->
        </div>
      </section>
    </section>
    <!-- /MAIN CONTENT -->
    <!--main content end-->
  </section>
  <script id="menuListItem" type="text/x-jquery-tmpl">   
	  <tr>
	    <td>\${id}</td>
	    <td>\${kind}</td>
	    <td>\${menuNm}</td>
	    <td>\${type}</td>
		{{if status == "on"}}   
			<td><span class="label label-success label-mini " style="font-size: 84%;">활성</span></td>
		{{else}}
			<td><span class="label label-warning label-mini" style="font-size: 84%;">비활성</span></td>
		{{/if}}    
	    <td>
	      <button onclick="location.href='/menu/editMenu/\${id}'" class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button>
	      <button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button>
	    </td>
	  </tr>
  </script>  
   

  <!-- js placed at the end of the document so the pages load faster -->
  <script src="${pagecontext.request.contextpath}/lib/jquery/jquery.min.js"></script>
  <script src="${pagecontext.request.contextpath}/lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="${pagecontext.request.contextpath}/lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="${pagecontext.request.contextpath}/lib/jquery.scrollTo.min.js"></script>
  <script src="${pagecontext.request.contextpath}/lib/jquery.nicescroll.js" type="text/javascript"></script>
  <!--common script for all pages-->
  <script src="${pagecontext.request.contextpath}/lib/common-scripts.js"></script>
  <script src="${pagecontext.request.contextpath}/lib/jquery-tmpl/jquery.tmpl.js"></script>
  <script src="${pagecontext.request.contextpath}/lib/jquery-tmpl/jquery.tmpl.min.js"></script>
  <!--script for this page-->
  <script>
  $(document).ready(function(){
	  
	  //메뉴 목록조회
	  getMenuList();
  })
  
  //메뉴 목록조회
  function getMenuList(){
	  $.ajax({
	  	url : '/menu/getMenuList.do',
	    type:'POST',
	    success:function (result){
	    	$('#menuList').empty();
	    	if(result.length > 0){
	    		for(var i=0; i< result.length; i++){
	    			$('#menuListItem').tmpl(result[i]).appendTo('#menuList');
	    		}
	    	}
	   	},
	   	error:function(request,status,error){
	        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	    }
	  });
  }
  </script>
</html>

