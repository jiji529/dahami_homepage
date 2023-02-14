# 홈페이지 개편 관련 내용

# [유지한 기능]
- 팝업공지 - 하루동안 그만보기 (쿠키사용)
- 개인정보처리방침 팝업
- 회사소식 - 검색/페이징
- 자주묻는질문 - 검색/페이징
- 문의하기 - 헬프데스크 메일전송
- 검색최적화(SEO) - robots.txt / sitemap.xml 개편에 맞춰 변경 및 유지
- 구글 애널리틱스 유지
- 파비콘 유지

# [신규추가 기능]
- 메인페이지 - 스크롤 이벤트 (https://toss.im/career 참고)
- 미뜰리에 - 다하미 인스타그램 연동 ( 2개월마다 엑세스토큰 연장해줘야하므로, properties로 값 빼서 수정편하게 하였음 )
- 찾아오시는길 - 카카오지도 연동
- 파트너쉽 - 서비스제휴매체 로고 연동 ( 실서버배포 이후 홈페이지 관리자에서 로고 등록시 rsync 연동예정 )
- 채용중인 공고 사람인 링크 추가

# [git 소스코드 업로드]
- git.dahami.com:4000 업로드 완료
- 내려받기 테스트 진행 > 정상동작 확인

# [테스트링크 전달]
- http://dev.daejeon.dahami.com:8080/DahamiHomepage/index.html

# [사내테스트 및 실서버 적용일정]
- (2022-11-30 기준) 미정 & 대기중

# 카카오맵
- 관리링크 : https://developers.kakao.com/console/app/828543/config/platform
- id : dahamimap
- pwd : dahamijb!@2
- 내 애플리케이션>앱 설정>플랫폼 에서 WEB 도메인 등록을 해야 사용가능

# 인스타 (60일 장기토큰까지만 발행가능하므로, 만료시 갱신해줘야함 - 기존 발급일(2023-02-15 08:19:00) / 만료일(2023-04-16 08:19:00))
- SNS ID: dahamisns@dahami.com 
- password: dahamijb!@2
- access_token: IGQVJWbmp1V1lsYlJ0OFE0a2pDMkVWVUxBMDByaUh0dk5uQ1h1WEZAYUlhuRjZASajgtS01EY21vQTNzdlc2d3BEZAEtMcE1NWi1leFdBSEhmZAnc5T0JOUGRtSllWR1lBa3pvUFZAIc2pB,
- token_type: bearer,
- expires_in: 5184000
- API 사용예시 : https://graph.instagram.com/17841452306963734/media?fields=id,media_type,media_url,permalink,thumbnail_url,username,caption&access_token=IGQVJWbmp1V1lsYlJ0OFE0a2pDMkVWVUxBMDByaUh0dk5uQ1h1WEZAYUlhuRjZASajgtS01EY21vQTNzdlc2d3BEZAEtMcE1NWi1leFdBSEhmZAnc5T0JOUGRtSllWR1lBa3pvUFZAIc2pB&limit=100

- classpath:/dahami/props/globals.properties 내부
- Globals.insta.userId / Globals.insta.accessToken 존재하므로, 새로 발급받은 토큰으로 교체해주면 됨
- 토큰 교체 및 인스타 앱 관리는 아래에서 진행하면 됨
- https://developers.facebook.com/apps/?show_reminder=true
- 갱신은 다음 사이트를 참고하면 됨 => https://developers.facebook.com/docs/instagram-basic-display-api/reference/refresh_access_token?locale=ko_KR

- 인스타API 연동관련 참고사이트) https://tonhnegod.tistory.com/245#google_vignette

# 검색최적화(SEO)
- 구글 :  https://search.google.com/search-console
- ( ID : dahamiitservice / PW : Ekgkal4175! )
- 네이버 : https://searchadvisor.naver.com/console/board 
- ( ID : dahamidev  / PW : Ekgkal4175! )
- 다음 : https://webmaster.daum.net/
- ( https://www.dahami.com/ 과 PIN코드 : dahami98 / 6개월마다 PIN코드를 다시 발급받아야함 )

# 서비스로고
- http://board.scrapmaster.co.kr/admin/
- scrapmaster board > 서비스 매체에서 등록된 로고가 scrap_logo.php 가 실행되어 rsync로 로고 이미지를 받아옴
- 접속정보
- sftp : 211.233.16.126
- port : 41740
- id : root
- pwd : 16yrp.ekgkal]
- path : /data/www/dahami/new/admin/scrapmaster/scrap_logo.php

# ROOT.war 배포시 주의사항
- images/partnership 디렉토리는 chmod 777 -R ./partnership 으로 권한 777로 변경해줘야한다.
(그래야 scrap_log.php가 접근하여, 파일을 rsync로 전달해줄 수 있으니 주의바람)
