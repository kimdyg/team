<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<script>
 function popMap(){
	 
	 window.open("${rootPath}/posting/map3", "map", "width = 1000, height = 400, top=300, left=300");
	 
 }
 
 function insertBtn(){
	 
	 var frm = document.getElementById("insertFrm");
	 
	 if(document.getElementById("title").value == null || document.getElementById("title").value == ""){
		 alert("제목을 입력해주세요.");
		 document.getElementById("title").focus();
		 return false;
	 }
	 
	 if(document.getElementById("cont").value == ""){
		 alert("내용을 입력해주세요.");
		 document.getElementById("cont").focus();
		 return false;
	 }
	 
	 if(document.getElementById("cars").value == ""){
		 alert("거래방법을 선택해주세요.");
		 document.getElementById("cars").focus();
		 return false;
	 }
	 
	 if(document.getElementById("cat_code").value == ""){
		 alert("거래방법을 선택해주세요.");
		 document.getElementById("cat_code").focus();
		 return false;
	 }
	 
	 if(document.getElementById("addr").value == ""){
		 alert("주소를 입력해주세요.");
		 document.getElementById("addr").focus();
		 return false;
	 }
	 
	 if(confirm("저장하시겠습니까?")){
		 frm.submit();	 
	 }
	 
	 return "detail";
	 
 }
 
 function viewBtn(seq){
	 
	var frm = document.getElementById("insertFrm");
	document.getElementById("posting_seq").value= seq;
	frm.action ="${rootPath}/posting/detail";
	frm.submit();
	 
 }
</script>
<%@ include file="./header.jsp"%>
<body>
	<form id="insertFrm" action="${rootPath}/posting/insertPosting"  method="POST">
		<section>
			<div class="d31">
				<div class="d311">
					<img src="../images/직찍1.jpg" id="d311" value="사진없음" />
				</div>
				<div class="d32">
					<input type="file" id="image" name="fileArray" accept="image/*"
						onchange="setThumbnail(event);" multiple />
				</div>
				<div id="image_container" style="cursor: pointer;"></div>
				<script>
			        function setThumbnail(event) {
			          for (var image of event.target.files) {
			            var reader = new FileReader();
			            reader.onload = function (event) {
			              var img = document.createElement("img");
			              img.setAttribute("src", event.target.result);
			              img.onclick = function (e) {
			
			                document.getElementById("d311").setAttribute("src", e.target.src);
			              };
			              document
			                .querySelector("div#image_container")
			                .appendChild(img);
			            };
			            console.log(image);
			            reader.readAsDataURL(image);
			          }
			        }
	      	   </script>
			</div>
			<table class="tbl01">
				<colgroup>
					<col width="10%" />
					<col />
				</colgroup>
				<tr>
					<th colspan="2">제목</th>
				</tr>
				<tr>
					<td colspan="2"><input class="wp80" type="text" name="title" id="title"
						placeholder="내용을 입력해주세요" required /></td>
				</tr>
				<tr>
					<th colspan="2">내용</th>
				</tr>
				<tr>
					<td colspan="2"><textarea name="cont" id="cont" placeholder="내용을 입력해주세요"
							cols="200" rows="20"></textarea></td>
				</tr>
				<tr>
					<th>거래방법</th>
					<td>
					<select id="cars" name="cars" class="selectCars">
							<option value="">-------선택-------</option>
							<option value="meet">대면(직거래)</option>
							<option value="deli">비대면(택배)</option>
					</select> 
					<select id="cat_code" name="cat_code" class="selectCars">
							<option value="">-------선택-------</option>
							<c:forEach var="item" items="${catCodeList}" varStatus="status">
								<option value="${item.cat_code}">${item.cat_name}</option>
							</c:forEach>
					</select>
					</td>
				</tr>
				<tr>
					<th colspan="2">주소</th>
				</tr>
				<tr>
					<td colspan="2">
					<input type="text" class="wp50 mb10" id="addr"
						name="addr" value="" onclick="popMap()" readonly placeholder="주소">
					<input type="text" class="wp50" id="addr_dtl" name="addr_dtl"
						value="" placeholder="상세주소"></td>
				</tr>
				<tr>
					<th colspan="2">받고싶은 물품 태그</th>
				</tr>
				<tr>
					<td colspan="2">
						<input class="wp80" type="text" name="goods"
							placeholder="#자전거#커피머신#아이폰#세탁기#도서" required />
					</td>
				</tr>
			</table>
			<div>
				<input type="button" onclick="insertBtn()" value="저장" />
				<input type="button" onclick="viewBtn('1')" value="뷰페이지" />
			</div>
		</section>
		<input type="hidden" id="writer" name="writer" value="test"/>
		<input type="hidden" id="posting_seq" name="posting_seq" value="0">
	</form>
</body>
<%@ include file="./footer.jsp"%>
</html>