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