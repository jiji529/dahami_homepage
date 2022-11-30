//스크롤 효과
function reveal() {
    var reveals = document.querySelectorAll(".reveal");

    for (var i = 0; i < reveals.length; i++) {
        var windowHeight = window.innerHeight;
        var elementTop = reveals[i].getBoundingClientRect().top;
        var elementVisible = 150;

        if (elementTop < windowHeight - elementVisible) {
            reveals[i].classList.add("active");
        } else {
            reveals[i].classList.remove("active");
        }
    }
}
window.addEventListener("scroll", reveal);


//gnb 메뉴 모바일
function gnb() {
    var element = document.getElementById("gnb_mo");
    element.classList.add("on");

    var body = document.body;
    body.classList.add("scroll_hidden");
}


function gnbclose() {
    var element = document.getElementById("gnb_mo");
    element.classList.remove("on");

    var body = document.body;
    body.classList.remove("scroll_hidden");
}

