<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <jsp:include page="../common/head_metaEN.jsp" />
</head>

<body>
    <jsp:include page="../common/headerEN.jsp" />

    <section class="sublist_area">
        <ul class="location">
            <li>
                <a href="<%=request.getContextPath()%>/indexEN.html" class="location_list">HOME</a>
            </li>
            <li>
                <span class="location_list">Careers</span>
            </li>
        </ul>
        <div class="inner">
            <h2>Company</h2>
            <div class="tab">
                <div class="tab_menu"><a href="<%=request.getContextPath()%>/company/companyEN.html">About Us</a></div>
                <div class="tab_menu on"><a href="<%=request.getContextPath()%>/company/recruitEN.html">Careers</a></div>
                <div class="tab_menu"><a href="<%=request.getContextPath()%>/company/faqEN.html">FAQ</a></div>
                <div class="tab_menu"><a href="<%=request.getContextPath()%>/company/qnaEN.html">Contact Us</a></div>
            </div>
        </div>
    </section>
    <section class="sub_recruit1">
        <div class="inner">
            <h2 class="sub_tit">Challenges and Adventures</h2>
            <p class="sub_txt">We look forward to changing the world together.</p>
            <div class="grid3">
                <div class="rcrt1">
                    <h4 class="rcrt1_tit">Creative</h4>
                    <h4 class="rcrt1_txt">Creative minds who can lead in a fast-moving market.</h4>
                </div>
                <div class="rcrt1">
                    <h4 class="rcrt1_tit">Challenge</h4>
                    <h4 class="rcrt1_txt">Talents who want to be a leading force in the IT information age through enterprising and balanced thinking.</h4>
                </div>
                <div class="rcrt1">
                    <h4 class="rcrt1_tit">Change</h4>
                    <h4 class="rcrt1_txt">People who don't settle for the status quo, aim higher, and aren't afraid to fail.</h4>
                </div>
            </div>
        </div>
    </section>

    <section class="sub_recruit2 reveal">
        <div class="inner">
            <h2 class="sub_tit">Recruitment Process</h2>
            <p class="sub_txt">We thrive on creative, challenging, and ever-changing people.</p>
            <div class="grid4">
                <div class="rcrt2">
                    <h4 class="rcrt2_num">step 1</h4>
                    <div class="rcrt_box"></div>
                    <p class="rcrt2_desc">Paper Screening</p>
                </div>
                <div class="rcrt2">
                    <h4 class="rcrt2_num">step 2</h4>
                    <div class="rcrt_box"></div>
                    <p class="rcrt2_desc">First Round Interview</p>

                </div>
                <div class="rcrt2">
                    <h4 class="rcrt2_num">step 3</h4>
                    <div class="rcrt_box"></div>
                    <p class="rcrt2_desc">Second Round interview</p>

                </div>
                <div class="rcrt2">
                    <h4 class="rcrt2_num">step 4</h4>
                    <div class="rcrt_box"></div>
                    <p class="rcrt2_desc">Acceptance</p>

                </div>
            </div>
        </div>
    </section>
    <section class="sub_recruit3 reveal">
        <div class="inner">
            <h2 class="sub_tit">Benefits</h2>
            <p class="sub_txt">Dahami Communications offers a variety of welfare programs to increase employee motivation, maintain life stability, and enhance work efficiency.</p>
            <div class="rcrt3 reveal">
                <h4>Statutory benefit plans</h4>
                <ul class="grid_rcrt">
                    <li>
                        <div>National Insurance</div>
                    </li>
                    <li>
                        <div>Health Insurance</div>
                    </li>
                    <li class="rcrt_li grid-row">+</li>
                    <li class="grid-row">
                        <div>Retirement Pension<p>Retirement Savings<br>Contributing to the largest life insurance company in Korea</p>
                        </div>
                    </li>
                    <li>
                        <div>Employment Insurance</div>
                    </li>
                    <li>
                        <div>Workers' Compensation Insurance</div>
                    </li>

                </ul>
            </div>
            <div class="rcrt4 reveal">
                <h4>Out-of-court benefit plans</h4>
                <ul class="grid3">
                    <li>
                        <div>Longevity<p>We celebrate executives and full-time employees who have been with us for a long time and provide rewards and time off.</p>
                        </div>
                    </li>
                    <li>
                        <div>SBC Plan<p>
                                Enroll in deductions to encourage longevity and build assets.</p>
                        </div>
                    </li>
                    <li>
                        <div>Child tuition and child care
                               <p>We provide childcare allowances and child tuition for employees' children for their care and education.</p>
                        </div>
                    </li>
                    <li>
                        <div>Bereavement benefits and time off
                               <p>We support memorial and bereavement leave to help celebrate the loss of an employee and comfort the family.</p>
                        </div>
                    </li>
                    <li>
                        <div>Supporting company clubs
                               <p>Support the activities of your company's clubs to help employees socialize and have fun at work.</p>
                        </div>
                    </li>
                    <li>
                        <div>Outsourced training support
                               <p>We support employees to take various job trainings conducted externally to develop their management capabilities and perform smoothly.</p>
                        </div>
                    </li>
                    <li>
                        <div>Birthday and anniversary support
                               <p>Support birthday parties and gifts for monthly birthdays. Gifts to employees for holidays, anniversaries, etc.</p>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </section>

    <jsp:include page="../common/footerEN.jsp" />

</body>

<script>
    var container = document.querySelector('.gnb');
    container.addEventListener('mouseenter', function() {
        this.classList.add('on');
    })
    container.addEventListener('mouseleave', function() {
        this.classList.remove('on');
    })
</script>

</html>