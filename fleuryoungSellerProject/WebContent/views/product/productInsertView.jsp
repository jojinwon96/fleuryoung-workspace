<%@page import="com.kh.product.model.vo.Category"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%
	 ArrayList<Category> clist = (ArrayList<Category>)request.getAttribute("clist");
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	li{list-style: none;}
</style>


</head>

<body>
	<%@ include file="../common/menubar.jsp"%>
	

	<div class="page-wrapper">
		<div class="content container-fluid">
			<div class="page-header">
				<div class="row align-items-center">
					<div class="col">
						<h3 class="page-title">상품등록</h3>
						<ul class="breadcrumb">
							<li class="breadcrumb-item"><a
								href="<%=contextPath%>/dashboard.da">대시보드</a></li>
							<li class="breadcrumb-item"><a
								href="<%=contextPath%>/productList.pr?sno=<%=loginSeller.getSelNo()%>">상품관리</a></li>
							<li class="breadcrumb-item active">상품등록</li>
						</ul>
					</div>
					<div class="col-auto">
						<a href="invoices.html" class="invoices-links active"> <i
							data-feather="list"></i>
						</a> <a href="invoice-grid.html" class="invoices-links"> <i
							data-feather="grid"></i>
						</a>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="card">
						<div class="card-header">
							<h5 class="card-title">상품등록</h5>
						</div>
						<div class="card-body">
							<form action="<%=contextPath %>/insert.pr" method="post" enctype="multipart/form-data"> <!-- 입력 폼 -->
								<div class="form-group row">
									<label class="col-form-label col-md-2">카테고리</label>
									<div class="col-md-10">
										<select class="form-select">
											<%for(Category c : clist){ %>
												<%if(c.getCategoryDetail() == null){ %>
												<option value="c.getCategoryNo()" name="categoryNo"><%= c.getCategoryName()%></option>
												<%}else{ %>
												<option value="c.getCategoryNo()" name="categoryNo"><%= c.getCategoryName()%> - <%=c.getCategoryDetail() %></option>
												<%}
											}%>
										</select>
									</div>
								</div><!-- 카테고리 -->
							
								<div class="form-group row">
									<label class="col-form-label col-md-2">상품이름</label>
									<div class="col-md-10">
										<input type="text" class="form-control" placeholder="상품이름을 입력하세요." name="pName" required>
									</div>
								</div><!-- 상품이름 -->
								<div class="form-group row">
									<label class="col-form-label col-md-2">가격</label>
									<div class="col-md-10">
										<input type="number" class="form-control"placeholder="가격을 입력하세요." name="pName" required>
									</div>
								</div><!-- 가격 -->
								<div class="form-group row">
									<label class="col-form-label col-md-2">상세설명</label>
									<div class="col-md-10">
										<input class="form-control" type="file" name="pDetailFile">
									</div>
								</div><!-- 상세설명 -->
								<div class="form-group row">
									<label class="col-form-label col-md-2">상품 총수량</label>
									<div class="col-md-10">
										<input id="sumStock" type="number" class="form-control" name="pStock"placeholder="상품 총수량 입력(옵션 입력시 미입력) " required > 
									</div>
								</div><!-- 상품 총수량 -->
				
								<div class="form-group row">
									<label class="col-form-label col-md-2">옵션
												<button id="add" type="button" class="btn btn-primary btn-sm">+</button>
												<button id="remove" type="button" class="btn btn-primary btn-sm">-</button>
									</label>
									<div class="col-md-10">
										<table class="table table-bordered mb-0">
											<thead >
												<tr align="center">
													<td>
														1차옵션 제목
													</td>
													<td>
														2차옵션 제목
													</td>
													<td>
														옵션 가격
													</td>
													<td>옵션별 재고</td>

												</tr>

										 	</thead>
											<tbody id="table_1">


											</tbody>



										</table>
									</div>
								</div> <!-- 옵션 -->		
								
								
								
								<div class="form-group row">
									<label class="col-form-label col-md-2">Readonly Input</label>
									<div class="col-md-10">
										<input type="text" class="form-control" value="readonly"
											readonly="readonly">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-form-label col-md-2">Placeholder</label>
									<div class="col-md-10">
										<input type="text" class="form-control"
											placeholder="Placeholder">
									</div>
								</div>
								
								<div class="form-group row">
									<label class="col-form-label col-md-2">Radio</label>
									<div class="col-md-10">
										<div class="radio">
											<label> <input type="radio" name="radio">
												Option 1
											</label>
										</div>
										<div class="radio">
											<label> <input type="radio" name="radio">
												Option 2
											</label>
										</div>
										<div class="radio">
											<label> <input type="radio" name="radio">
												Option 3
											</label>
										</div>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-form-label col-md-2">Checkbox</label>
									<div class="col-md-10">
										<div class="checkbox">
											<label> <input type="checkbox" name="checkbox">
												Option 1
											</label>
										</div>
										<div class="checkbox">
											<label> <input type="checkbox" name="checkbox">
												Option 2
											</label>
										</div>
										<div class="checkbox">
											<label> <input type="checkbox" name="checkbox">
												Option 3
											</label>
										</div>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-form-label col-md-2">Textarea</label>
									<div class="col-md-10">
										<textarea rows="5" cols="5" class="form-control"
											placeholder="Enter text here"></textarea>
									</div>
								</div>
								<div class="form-group mb-0 row">
									<label class="col-form-label col-md-2">Input Addons</label>
									<div class="col-md-10">
										<div class="input-group mb-3">
											<span class="input-group-text" id="basic-addon1">@</span> <input
												type="text" class="form-control" placeholder="Username"
												aria-label="Username" aria-describedby="basic-addon1">
											<button class="btn btn-primary" type="button">Button</button>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
					<div class="card">
						<div class="card-header">
							<h5 class="card-title">Input Sizes</h5>
						</div>
						<div class="card-body">
							<form action="#">
								<div class="form-group row">
									<label class="col-form-label col-md-2">Large Input</label>
									<div class="col-md-10">
										<input type="text" class="form-control form-control-lg"
											placeholder=".form-control-lg">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-form-label col-md-2">Default Input</label>
									<div class="col-md-10">
										<input type="text" class="form-control"
											placeholder=".form-control">
									</div>
								</div>
								<div class="form-group mb-0 row">
									<label class="col-form-label col-md-2">Small Input</label>
									<div class="col-md-10">
										<input type="text" class="form-control form-control-sm"
											placeholder=".form-control-sm">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	</div>


	</div>

	<script>
		

$(document).ready(function(){
    let count = 1;


    $('#add').click(function(){
		console.log(count)
        let $option_1 = "<tr id='option_no"+ count+"'><td>"
                +"<input type='text' class='form-control-sm' name='pStock' placeholder='1차 옵션을 입력하세요' required>"
                +"<button type='button' class='btn btn-primary btn-sm' onclick=\"add_2(\'option_no"+count+"\');\">+</button>"
                +"<button id='remove' type='button' class='btn btn-primary btn-sm' onclick=\"remove_2(\'option_no"+count+"\')\";>-</button></td>"
                +"<td></td>"
                +"<td></td>"
                +"<td></td></tr>"
            
        if(count <=3){
            $("#table_1").append($option_1);
            //$("#table_1").append($option_1.clone(true));
            // 위의 코드 두줄 part1 방식
            //$("#clone-result").append($("#item").clone(true));
            count++;
        }else {
            alert("너무 많습니다.");
        }	
		if(count > 1){
				$("#sumStock").val("");
				$("#sumStock").attr("disabled",true);
			}

		
        
    });
    
	remove_2 = function(id){
		console.log($("#"+id).children().eq(1).children().children("li"))
			if($("#"+id+ " li").length/3 > 0){
			$("#"+id).children().eq(1).children("li").last().remove();
			$("#"+id).children().eq(2).children("li").last().remove();
			$("#"+id).children().eq(3).children("li").last().remove();
			}else{
				alert("삭제할 2차 옵션이 없습니다.")
			}
	}

    add_2 = function(id){
		console.log();
		if($("#"+id+ " li").length/3 < 3){ // 2차옵션 개수 
            let $option_2_title = "<li><input type='text' class='form-control' name='p2_name' placeholder='옵션 이름을 입력하세요' required></li>"
            let $option_2_price = "<li><input type='number' class='form-control' name='p2_price' placeholder='추가 비용 입력' required></li>"
            let $option_2_stock = "<li><input type='number' class='form-control' name='p2_stock' placeholder='재고수량을 입력하세요' required></li>"
            $("#"+id).children().eq(1).append($option_2_title);
            $("#"+id).children().eq(2).append($option_2_price);
            $("#"+id).children().eq(3).append($option_2_stock);

        	}else{
			alert("2차옵션이 너무 많습니다.");
			}
			
		}
    $('#remove').click(function(){
		if(count > 1 ){
			console.log(count)
			$("#table_1").children().last().remove();
			count--;
		}else{
			alert("삭제할 옵션이 없습니다.");
		}
		if(count == 1){
				$("#sumStock").removeAttr("disabled" ,false);
		}

	})
});
	</script>
</body>
</html>