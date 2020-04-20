<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<!-- **********************************************************************************************************************************************************
    MAIN CONTENT
    *********************************************************************************************************************************************************** -->
<!--main content start-->
<section id="main-content">
	<section class="wrapper">
    	<h3><i class="fa fa-angle-right"></i> 메뉴 등록</h3>
    	<!-- BASIC FORM ELELEMNTS -->
    	<div class="row mt">
      		<div class="col-lg-12">
        		<div class="form-panel">
	          	<!-- <h4 class="mb"><i class="fa fa-angle-right"></i> Form Elements</h4> -->
	          		<form action="<c:url value="/menu/insertMenu"/>" class="form-horizontal style-form"  method="post">
	          			<div class="form-group">
	                  		<label class="col-sm-2 col-sm-2 control-label">구분</label>
		          			<div class="col-sm-10 radio">
				            	<label>
					              	<input type="radio" name="type" id="drink" value="drink" checked>
					              	음료
				              	</label>
				              	<label>
					              	<input type="radio" name="type" id="bakery" value="bakery">
					              	베이커리
				              	</label>
				          	</div>
		              	</div>
		                <div class="form-group">
		                	<label class="col-sm-2 col-sm-2 control-label">메뉴명</label>
		                  	<div class="col-sm-10">
		                    	<input type="text" name="menuNm" id="name" placeholder="메뉴명을 입력하세요." class="form-control" required>
		                  	</div>
		                </div>
		                <div class="form-group">
		                	<label class="col-sm-2 col-sm-2 control-label">종류</label>
		                  	<div class="col-sm-10">
		                    	<select name="kind" class="form-control">
				                	<option value="ESP">에스프레소</option>
				                  	<option value="TWG">티(TWG)</option>
				                  	<option value="SHA">쉐이크</option>
				                  	<option value="ADE">에이드</option>
				                  	<option value="LAT">라떼</option>
				                  	<option value="JUI">주스</option>
				                  	<option value="SMO">스무디</option>
				                </select>
		                  	</div>
		                </div>
		                <div class="form-group">
		                	<label class="col-sm-2">Image Upload</label>
		                  	<div class="col-md-9">
		                    	<div class="fileupload fileupload-new" data-provides="fileupload">
			                      	<div class="fileupload-new thumbnail" style="width: 200px; height: 150px;">
			                        	<img src="http://www.placehold.it/200x150/EFEFEF/AAAAAA&amp;text=no+image" alt="">
			                      	</div>
		                      		<div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
		                      		<div>
				                    	<span class="btn btn-theme02 btn-file">
				                        	<span class="fileupload-new"><i class="fa fa-paperclip"></i> Select image</span>
				                        	<span class="fileupload-exists"><i class="fa fa-undo"></i> Change</span>
				                        	<input type="file" class="default">
				                        </span>
				                        <a href="advanced_form_components.html#" class="btn btn-theme04 fileupload-exists" data-dismiss="fileupload"><i class="fa fa-trash-o"></i> Remove</a>
				                    </div>
		                    	</div>
		                    	<span class="label label-info">NOTE!</span>
		                    	<span>
			                      	이미지 사이즈를 준수해주세요.
			                    </span>
		                  	</div>
		                </div>
		                <div class="form-group">
		                	<label class="col-sm-2 col-sm-2 control-label">상세 설명</label>
		                  	<div class="col-sm-10">
		                    	<input type="text" name="descript" placeholder="상세 설명을 입력하세요." class="form-control" required>
		                    	<!-- <span class="help-block">A block of help text that breaks onto a new line and may extend beyond one line.</span> -->
		                 	 </div>
		                </div>
		                <div class="form-group">
		                	<label class="col-sm-2 control-label">칼로리</label>
		                  	<div class="col-sm-4">
			                	<input type="number" name="calorie" class="form-control round-form">
			                </div>
			                <label class="col-sm-1 control-label">당류</label>
			                <div class="col-sm-4">
			                	<input type="number" name="sugar" class="form-control round-form">
			                </div>
		                </div>
		                <div class="form-group">
		                	<label class="col-sm-2 control-label">단백질</label>
			                <div class="col-sm-4">
			                	<input type="number" name="protein" class="form-control round-form">
			                </div>
			                <label class="col-sm-1 control-label">포화지방</label>
			                <div class="col-sm-4">
			                	<input type="number" name="fat" class="form-control round-form">
			                </div>
		                </div>
		                <div class="form-group">
		                	<label class="col-sm-2 control-label">나트륨</label>
			                <div class="col-sm-4">
			                	<input type="number" name="salt" class="form-control round-form">
			                </div>
			                <label class="col-sm-1 control-label">카페인</label>
			                <div class="col-sm-4">
			                	<input type="number" name="caffeine" class="form-control round-form">
			                </div>
		                </div>
		                <div class="form-group">
		                	<label class="col-sm-2 col-sm-2 control-label">상태</label>
		                  	<div class="col-sm-10">
				                  <input type="checkbox" name="status" data-toggle="switch" checked/>
		                  	</div>
		                </div>
		                <div class="form-group">
		                	<label class="col-sm-2 col-sm-2 control-label">알레르기 성분</label>
		                  	<div class="col-sm-10">
		                    	<input type="text" name="allergy" placeholder="알레르기 성분을 입력하세요." class="form-control">
		                    	<!-- <span class="help-block">A block of help text that breaks onto a new line and may extend beyond one line.</span> -->
		                 	 </div>
		                </div>
		                <div class="form-group last">
			                <div class="col-sm-12 text-center">		                
			                	<button type="submit" class="btn btn-theme">등록</button>
			                	<!-- <button class="btn btn-theme04" type="button">취소</button> -->
			                </div>
		                </div>
              		</form>
            	</div>
         	</div>
        </div>
	</section>
      <!-- /wrapper -->
</section>
<script src="${pagecontext.request.contextpath}/lib/jquery/jquery.min.js"></script>
<script src="${pagecontext.request.contextpath}/lib/bootstrap/js/bootstrap.min.js"></script>
<script class="include" type="text/javascript" src="${pagecontext.request.contextpath}/lib/jquery.dcjqaccordion.2.7.js"></script>
<script src="${pagecontext.request.contextpath}/lib/jquery.scrollTo.min.js"></script>
<script src="${pagecontext.request.contextpath}/lib/jquery.nicescroll.js" type="text/javascript"></script>
<!--common script for all pages-->
<script src="${pagecontext.request.contextpath}/lib/common-scripts.js"></script>
<!--script for this page-->
<script src="${pagecontext.request.contextpath}/lib/jquery-ui-1.9.2.custom.min.js"></script>
<!--custom switch-->
<!-- <script src="${pagecontext.request.contextpath}/lib/bootstrap-switch.js"></script> -->
<!--custom tagsinput-->
<!-- <script src="${pagecontext.request.contextpath}/lib/jquery.tagsinput.js"></script> -->
<!--custom checkbox & radio-->
<script type="text/javascript" src="${pagecontext.request.contextpath}/lib/bootstrap-fileupload/bootstrap-fileupload.js"></script>
<script type="text/javascript" src="${pagecontext.request.contextpath}/lib/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="${pagecontext.request.contextpath}/lib/bootstrap-daterangepicker/date.js"></script>
<script type="text/javascript" src="${pagecontext.request.contextpath}/lib/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- <script type="text/javascript" rc="${pagecontext.request.contextpath}/lib/bootstrap-inputmask/bootstrap-inputmask.min.js"></script> -->
<script type="text/javascript" src="${pagecontext.request.contextpath}/lib/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
<script type="text/javascript" src="${pagecontext.request.contextpath}/lib/bootstrap-daterangepicker/moment.min.js"></script>
<script type="text/javascript" src="${pagecontext.request.contextpath}/lib/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
<script src="${pagecontext.request.contextpath}/lib/advanced-form-components.js"></script>
<!-- <script src="${pagecontext.request.contextpath}/lib/form-component.js"></script> -->
</html>