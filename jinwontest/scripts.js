/*
* ---------------------------------------------------------------------------
* jQuery Version
* ---------------------------------------------------------------------------
*/

$(function () {

})

// 주소찾기
$(function () {
    // 주소 찾기
    $(".non-address-find-button").click(function () {
        //카카오 지도 발생
        new daum.Postcode({
            oncomplete: function (data) { //선택시 입력값 세팅
                $(".non-address-detail").html(data.address); // 주소 넣기
                $(".non-address-input").val(data.zonecode); // 우편번호 넣기
                $(".non-address-detail-input").focus(); //상세입력 포커싱
                console.log(data.zonecode);
            }
        }).open();
    })

});

// 헤더 픽스
let $defaultHeader = $('header'),
    $defaultsearch = $('#input-panel'),
    $defaultrank = $('.rank-list-panel');

$(window).scroll(function () {
    console.log($(this).scrollTop())
    if ($(this).scrollTop() > 120) {
        $defaultHeader.addClass('fixedheader');
        $defaultsearch.removeClass('default-input-panel');
        $defaultsearch.addClass('fixed-input-panel');

    } else {
        $defaultHeader.removeClass('fixedheader');
        $defaultsearch.removeClass('fixed-input-panel');
        $defaultsearch.addClass('default-input-panel');

    }

    // 실시간 검색어 픽스
    if ($(this).scrollTop() > 120) {
        $defaultrank.removeClass('default-rank-list-panel');
        $defaultrank.addClass('fixed-rank-list-panel');
    } else {
        $defaultrank.addClass('default-rank-list-panel');
        $defaultrank.removeClass('fixed-rank-list-panel');
    }

    // 결제 정보 패널 픽스
    if ($(this).scrollTop() > 170) {
        $(".cart-side-content").css("position", "fixed");
        $(".cart-side-content").css("top", "20px");
    } else {
        $(".cart-side-content").css("position", "absolute");
        $(".cart-side-content").css("top", "0px");

    }


});


// 로고 전환
function switchImages(newPath) {
    let $logo = $("#logo");
    $logo.fadeOut(0, function () {
        $logo.attr("src", newPath); // 이미지 소스 요소 가져오기
        $logo.fadeIn(0);
    }); // jquery fadeout 
}

// 종류별 호버시
let $type = $(".header-nav-hidden-panel");
$(function () {
    $('.type-li, .header-nav-hidden-panel').mouseover(function () {
        $type.css('display', 'block');
        $('.type-span').css('color', 'rgb(248, 178, 188)');
    })

    $('.type-li, .header-nav-hidden-panel').mouseout(function () {
        $type.css('display', 'none');
        $('.type-span').css('color', 'black');
    })

    $(".header-type-panel li").mouseover(function () {
        $(this).find("span").css("color", "rgb(248, 178, 188)");
    })

    $(".header-type-panel li").mouseout(function () {
        $(this).find("span").css("color", "");
    })
})

// 실시간 검색어
$(function ($) {
    let ticker = function () {
        timer = setTimeout(function () {
            $('.rank-ul li:first').animate({ marginTop: '-55px' }, 600, function () {
                $(this).detach().appendTo('ul.rank-ul').removeAttr('style');
            });
            ticker();
        }, 2500);
    };

    //마우스를 올렸을 때 기능 정지
    let tickerover = function () {
        $('.rank-ul').mouseover(function () {
            clearTimeout(timer);
        });
        $('.rank-ul').mouseout(function () {
            ticker();
        });
    };
    tickerover();
    // 4 끝
    ticker();

});

// 고객센터 탭 전환(공지사항, 자주하는 질문, 1:1문의)
$(function () {
    let tabAnchor = $(".tabs-nav a"),
        tabPanel = $('.tabs-panel');

    // 링크 클릭시
    tabAnchor.click(function (e) {
        e.preventDefault(); // 링크 기본속성 막기

        tabAnchor.removeClass("active");
        $(this).addClass("active");

        tabPanel.hide(); // display:none;

        let $target = $(this).attr('href');
        console.log($target);
        $($target).show();


    });
});

// 실시간 검색어 열고 닫기
$(function () {
    let openRank = $(".downButton"),
        closeRank = $(".rank-close-btn"),
        rankPanel = $(".rank-list-panel");

    // 열기
    openRank.click(function () {
        if (rankPanel.css("display") == "none") {
            rankPanel.show();
            openRank.css("transform", "rotate(180deg)");
        } else {
            rankPanel.hide();
            openRank.css("transform", "rotate(360deg)");
        }
    })

    // 닫기
    closeRank.click(function () {
        rankPanel.hide();
        openRank.css("transform", "rotate(360deg)");
    })
});




// 최근 검색어
$(function () {
    let toDoForm = document.querySelector("#todo-form"); // 메인 input form
    let toDoInput = toDoForm.querySelector("input"); // 메인 검색창
    let toDoList = document.querySelector(".real-time-list>ul"); // ul
    let allDelete = document.querySelector(".real-time-allDelete"); // 전체 삭제 버튼

    const TODOS_KEY = "todos"; // 최근 검색어 키값

    let toDos = new Array(); // 최근 검색어 배열

    function saveToDos(tts) { //item을 localStorage에 저장
        typeof (Storage) !== 'undefined' && localStorage.setItem(TODOS_KEY, JSON.stringify(toDos));
    }

    function allDeleteToDo() { //전체 item을 삭제
        localStorage.clear(toDos);
        toDoList.innerText = '';
    };

    function deleteToDo(e) { //각각의 item을 삭제
        const li = e.target.parentElement;
        li.remove();
        toDos = toDos.filter((toDo) => toDo.id !== parseInt(li.id));
        saveToDos();
    };

    function paintToDo(newTodo) { //화면에 출력
        const { id, text } = newTodo;
        const item = document.createElement("li");
        const img = document.createElement("img");
        const atag = document.createElement("a");
        img.src = '../../resources/image/smallSearch.png';
        const button = document.createElement("button");
        button.className = "real-time-delete";

        item.id = id;
        atag.innerText = text;
        button.addEventListener("click", deleteToDo);
        allDelete.addEventListener("click", allDeleteToDo);
        item.appendChild(img);
        item.appendChild(atag);
        item.appendChild(button);
        toDoList.prepend(item);
        console.log(toDos.length);
        newTodo !== null && allDelete.classList.remove('off');
    };


    function handleToDoSubmit(event) { //form 전송
        //const now = new Date();
        event.preventDefault();

        // if ($(toDoList).children().length > 4) {
        //     $(toDoList).children().last().remove();
        // }

        for (let i in toDos) {
            if (Date.now() > toDos[i].id) {
                toDos.splice(i, 1);
                toDos.pop();
            }
        }

        const newTodoItem = toDoInput.value;
        toDoInput.value = '';
        const newTodoObj = {
            id: Date.now() + 7000,
            //id: now.getTime() + 5000,
            text: newTodoItem
        };

        toDos.push(newTodoObj);
        paintToDo(newTodoObj);
        saveToDos();
    };

    toDoForm.addEventListener('submit', handleToDoSubmit);

    const savedToDos = JSON.parse(localStorage.getItem(TODOS_KEY));

    if (savedToDos !== null) {
        toDos = savedToDos //전에 있던 items들을 계속 가지고 있도록 합니다. 
        savedToDos.forEach(paintToDo);
        // 여기서수정
    }
})


$(function () {
    let mainSearch = $("#main-search"), // 입력창 input
        realTimePanel = $(".real-time-panel"),
        header = $("header");
    //allDelete = $(".real-time-allDelete"); // 전체 삭제

    mainSearch.click(function () {
        if (realTimePanel.css("display") == "none" && header.hasClass("fixedheader") == false) {
            realTimePanel.show();
        } else {
            realTimePanel.hide();
        }
    })

    //  // 전체 삭제
    //  allDelete.click(function () {
    //      // 화면
    //      $(".real-time-list li").remove();
    //  })

    // // 각각 삭제
    // $(document).on("click", ".real-time-delete", function () {
    //     // 화면
    //     $(this).parents("li").remove();
    // })

    // let mainInput = $("#main-search"),
    //     searchBtn = $(".main-input-btn"),
    //     liList = $(".real-time-list>ul");

    // // enter 했을때 최근 검색어 추가
    // mainInput.keyup(function (key) {
    //     //let text = $(this).val();
    //     if (key.keyCode == 13) {
    //         // if (text == "") {
    //         //     return;
    //         // }

    //         if (liList.children().length > 4) {
    //             liList.children().last().remove();
    //         }
    //         //liList.prepend("<li><img src=\"/images/smallSearch.png\"><a href=\"#\">" + text + "</a><button class=\"real-time-delete\"></button></li>");
    //     }
    // });

    // 검색 버튼 클릭 했을떄 검색어 추가
    // searchBtn.click(function () {
    //     // let text = mainInput.val();
    //     // if (text == "") {
    //     //     return;
    //     // }

    //     if (liList.children().length > 4) {
    //         liList.children().last().remove();
    //     }
    //     //liList.prepend("<li><img src=\"/images/smallSearch.png\"><a href=\"#\">" + text + "</a><button class=\"real-time-delete\"></button></li>");
    // })


})

$(function () {
    //스크롤 이동시 작동 scroll
    $(window).scroll(function () {
        if ($(this).scrollTop() > 500) {
            // 이펙트 효과 함수임둥.
            $("#btn_go_top").fadeIn();
        } else {
            $("#btn_go_top").fadeOut();
        }
    })

    $("#btn_go_top").click(function () {
        // animate를 이용해 맨위로 이동하도록 설정
        $('html, body').animate({
            scrollTop: 0
        }, -500);
        //return false;  
    })
})


// 고객센터 아코디언 (동적으로 생성된 태그에 이벤트 주기)
$(document).on("click", ".row-li", function () {
    const $li = $(this).next();

    if ($li.css("display") == "none") {
        $(this).siblings(".hidden-li").slideUp();

        $li.slideDown(200);
    } else {
        $li.slideUp(200);
    }
})


// 장바구니----------------------------------------------------------------------------------
$(function () {

    let $total = 0;
    let $stotal = $(".price-field>.pprice"),
        $rtotal = $(".result-price>strong");

    let $allCheck = $("#allCheck");

    let arr = [];

    $(document).on("click",".cart-plus-button",function () {
        let $count = Number($(this).prev().html(Number($(this).prev().html()) + 1).html());
        let $ptag = Number($(this).parents(".cart-button-panel").next().children('p').html());
        let $spanTag = $(this).parents(".cart-button-panel").next().children('span');

        console.log($count);

        $spanTag.html(($count * $ptag).toLocaleString('ko-KR') + "원");
        $stotal.html(($count * $ptag).toLocaleString('ko-KR') + "원");
        $rtotal.html(($count * $ptag).toLocaleString('ko-KR') + "원");
    })

    $(document).on("click",".cart-minus-button",function () {
        if (Number($(this).next().html()) > 1) {
            let $count = Number($(this).next().html(Number($(this).next().html()) - 1).html());
            let $ptag = Number($(this).parents(".cart-button-panel").next().children('p').html());
            let $spanTag = $(this).parents(".cart-button-panel").next().children('span');
            console.log($count);

            $spanTag.html(($count * $ptag).toLocaleString('ko-KR') + "원");
            $stotal.html(($count * $ptag).toLocaleString('ko-KR') + "원");
            $rtotal.html(($count * $ptag).toLocaleString('ko-KR') + "원");
        }
    })

    // 페이지 로드시 체크된 값 가져오기
    $('input[type="checkbox"][name^="subCheck"]').each(function (index, value) {
        let $price = Number($(this).parent().siblings('.cart-price-panel').children('p').html());

        if ($(this).attr("checked")) {
            $total = $total + $price;

            $allCheck.next().attr("src", "images/checked-checkbox.png");
            $allCheck.attr("checked", true);

        } else {
            $total = $total - $price;

            $allCheck.next().attr("src", "images/unchecked-checkbox.png");
            $allCheck.attr("checked", false);
        }

        $stotal.html($total.toLocaleString('ko-KR') + " 원");
        $rtotal.html($total.toLocaleString('ko-KR'));
    })

    console.log("처음 장바구니 합계 : " + arr);
    console.log("총합 : " + $total);


    // 전체 선택
    $(document).on('click', "#check-img", function () {
        let $subCheck = $('input[type="checkbox"][name^="subCheck"]');
        let $scPrice = Number($subCheck.parent().siblings('.cart-price-panel').children('p').html());

        if ($allCheck.attr("checked")) {

            $(this).attr("src", "images/unchecked-checkbox.png");
            $allCheck.attr('checked', false);

            $subCheck.next().attr("src", "images/unchecked-checkbox.png");
            $subCheck.attr("checked", false);


        } else {
            $(this).attr("src", "images/checked-checkbox.png");
            $allCheck.attr('checked', true);

            $subCheck.next().attr("src", "images/checked-checkbox.png");
            $subCheck.attr("checked", true);

        }



        // 전체 선택 변경시 값 변경
        $('input[type="checkbox"][name^="subCheck"]').each(function (index, value) {
            let $price = Number($(this).parent().siblings('.cart-price-panel').children('p').html());

            if (($('input[name^="subCheck"]:checked').length == $('input[name^="subCheck"]').length) && $allCheck.attr("checked")) {
                console.log("다채움2");
                $total = $total + $price;
                $allCheck.attr('checked', true);
                $(this).attr("checked", true);

            } else {
                console.log("다빠짐");
                $total = 0;
                $allCheck.attr('checked', false);
                $(this).attr("checked", false);
            }

        })
        console.log($scPrice);
        console.log("총합! : " + $total);

        console.log($allCheck.attr("checked"));

        $stotal.html($total.toLocaleString('ko-KR') + " 원");
        $rtotal.html($total.toLocaleString('ko-KR'));
    });


    // 선택
    // 상품 선택 할 떄만 배열에 넣기   
    $('input[type="checkbox"][name^="subCheck"]').click(function () {

        let $price = Number($(this).parent().siblings('.cart-price-panel').children('p').html());

        if (($('input[name^="subCheck"]:checked').length == $('input[name^="subCheck"]').length)) {
            console.log("다채움222");

            $allCheck.next().attr("src", "images/checked-checkbox.png");
            $allCheck.attr('checked', true);
        }

        if ($(this).attr("checked")) { // 체크가 되있다면

            $(this).next().attr("src", "images/unchecked-checkbox.png");
            $(this).attr("checked", false);


            $allCheck.next().attr("src", "images/unchecked-checkbox.png");
            $allCheck.attr('checked', false);

            $total = $total - $price;

            console.log($allCheck.is(":checked"));

        } else { // 체크가 안되있다면

            $(this).next().attr("src", "images/checked-checkbox.png");
            $(this).attr("checked", true);

            $total = $total + $price;

        }
        $stotal.html($total.toLocaleString('ko-KR') + " 원");
        $rtotal.html($total.toLocaleString('ko-KR'));

        console.log($allCheck.attr("checked"));
    })



})

/*
* ---------------------------------------------------------------------------
* Vanilla JavaScript Version
* ---------------------------------------------------------------------------
*/

