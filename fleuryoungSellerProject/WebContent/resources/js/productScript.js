

$(document).ready(function(){
    let count = 1;


    $('#add').click(function(){
        let $option_1 = "<tr id='option_no"+ count+"'><td>"
                +"<input type='text' class='form-control-sm' name='pStock' placeholder='1차 옵션을 입력하세요' required>"
                +"<button type='button' class='btn btn-primary btn-sm' onclick=\"test(\'option_no"+count+"\');\">+</button>"
                +"<button id='remove' type='button' class='btn btn-primary btn-sm'>-</button></td>"
                +"<td><ul></ul></td>"
                +"<td><ul></ul></td>"
                +"<td><ul></ul></td></tr>"
            
        if(count <=3){
            $("#table_1").append($option_1);
            //$("#table_1").append($option_1.clone(true));
            // 위의 코드 두줄 part1 방식
            //$("#clone-result").append($("#item").clone(true));
            count++;
        }else {
            alert("너무 많습니다.");
        }	
        
    });
    let count_2 = 0;
    test = function(id){
            
            console.log($("#"+id).children().eq(1))
            let $option_2_title = "<li><input type='text' class='form-control' name='pStock' placeholder='옵션 이름을 입력하세요' required></li>"
            let $option_2_price = "<li><input type='number' class='form-control' name='pStock' placeholder='가격을 입력하세요' required></li>"
            let $option_2_stock = "<li><input type='number' class='form-control' name='pStock' placeholder='재고수량을 입력하세요' required></li>"
            $("#"+id).children().eq(1).append($option_2_title);
            $("#"+id).children().eq(2).append($option_2_price);
            $("#"+id).children().eq(3).append($option_2_stock);
            ++count_2;
            e
        }	
                                        

    $('#remove').click()
})