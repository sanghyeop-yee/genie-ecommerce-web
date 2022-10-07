<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="./inc/ad_top.jspf"%>
<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>

<Style>
* {
	padding: none;
	margin: none;
	font-family: 'Noto Sans KR', sans-serif;
	box-sizing: none;
	list-style-type: none;
	text-decoration-line: none;
}

</Style>

<section class="main">
<!-- 상단 부분 -->
<table width="100%" border="0" cellpadding="0" cellspacing="0" align="center" class="fullTable" bgcolor="#fafafa">
  <tr>
    <td height="20"></td>
  </tr>
  <tr>
    <td>
      <table width="600" border="0" cellpadding="0" cellspacing="0" align="center" class="fullTable" bgcolor="#ffffff" style="border-radius: 10px 10px 0 0;">
        <tr class="hiddenMobile">
          <td height="10"></td>
        </tr>
        <tr class="visibleMobile">
          <td height="10"></td>
        </tr>

        <tr>
          <td>
            <table width="480" border="0" cellpadding="0" cellspacing="0" align="center" class="fullPadding">
              <tbody>
                <tr>
                  <td>
                    <table width="220" border="0" cellpadding="0" cellspacing="0" align="left" class="col">
                      <tbody>
                        <tr>
                          <td align="left"> <img src="/image/logo_western.png" width="60" height="auto" alt="logo" border="0" /></td>
                        </tr>
                        <tr class="hiddenMobile">
                          <td height="10"></td>
                        </tr>
                        <tr class="visibleMobile">
                          <td height="10"></td>
                        </tr>
                        <tr>
                          <td style="font-size: 12px; color: #5b5b5b; font-family: 'Open Sans', sans-serif; line-height: 18px; vertical-align: top; text-align: left;">
                            구매해 주셔서 감사합니다.<br>
                            받는 분이 행복한 선물을 <br>추천해 드리겠습니다.
                          </td>
                        </tr>
                      </tbody>
                    </table>
                    <table width="220" border="0" cellpadding="0" cellspacing="0" align="right" class="col">
                      <tbody>
                        <tr>
                          <td style="font-size: 21px; color: #3B40FE; letter-spacing: -1px; font-family: 'Open Sans', sans-serif; line-height: 1; vertical-align: top; text-align: right;">
                            INVOICE
                          </td>
                        </tr>
                        <tr>
                        <tr class="hiddenMobile">
                          <td height="10"></td>
                        </tr>
                        <tr class="visibleMobile">
                          <td height="10"></td>
                        </tr>
                        <tr>
                          <td style="font-size: 12px; color: #5b5b5b; font-family: 'Open Sans', sans-serif; line-height: 18px; vertical-align: top; text-align: right;">
                            <small>주문번호</small> {imp_uid}<br />
                            <small>2022년 10월 5일</small>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </td>
                </tr>
              </tbody>
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<!-- /상단 부분 -->
<!-- 주문 세부 사항 -->
<table width="100%" border="0" cellpadding="0" cellspacing="0" align="center" class="fullTable" bgcolor="#fafafa">
  <tbody>
    <tr>
      <td>
        <table width="600" border="0" cellpadding="0" cellspacing="0" align="center" class="fullTable" bgcolor="#ffffff">
          <tbody>
            <tr>
            <tr class="hiddenMobile">
              <td height="10"></td>
            </tr>
            <tr class="visibleMobile">
              <td height="10"></td>
            </tr>
            <tr>
              <td>
                <table width="480" border="0" cellpadding="0" cellspacing="0" align="center" class="fullPadding">
                  <tbody>
                    <tr>
                      <th style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #5b5b5b; font-weight: normal; line-height: 1; vertical-align: top; padding: 0 10px 7px 0;" width="52%" align="left">
                        상품명
                      </th>
                      <th style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #5b5b5b; font-weight: normal; line-height: 1; vertical-align: top; padding: 0 0 7px;" align="left">
                        <small>상품번호</small>
                      </th>
                      <th style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #5b5b5b; font-weight: normal; line-height: 1; vertical-align: top; padding: 0 0 7px;" align="center">
                        수량
                      </th>
                      <th style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #1e2b33; font-weight: normal; line-height: 1; vertical-align: top; padding: 0 0 7px;" align="right">
                        총액
                      </th>
                    </tr>
                    <tr>
                      <td height="1" style="background: #bebebe;" colspan="4"></td>
                    </tr>
                    <tr>
                      <td height="10" colspan="4"></td>
                    </tr>
                    <tr>
                      <td style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #3B40FE;  line-height: 18px;  vertical-align: top; padding:10px 0;" class="article">
                        록시땅 샤워 젤 250ml (12종 중...
                      </td>
                      <td style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #646a6e;  line-height: 18px;  vertical-align: top; padding:10px 0;"><small>GN00000001</small></td>
                      <td style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #646a6e;  line-height: 18px;  vertical-align: top; padding:10px 0;" align="center">1</td>
                      <td style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #1e2b33;  line-height: 18px;  vertical-align: top; padding:10px 0;" align="right">##.###원</td>
                    </tr>
                    <tr>
                      <td height="1" colspan="4" style="border-bottom:1px solid #e4e4e4"></td>
                    </tr>

                  </tbody>
                </table>
              </td>
            </tr>
            <tr>
              <td height="10"></td>
            </tr>
          </tbody>
        </table>
      </td>
    </tr>
  </tbody>
</table>
<!-- /주문 세부 사항 -->
<!-- 결제비용 -->
<table width="100%" border="0" cellpadding="0" cellspacing="0" align="center" class="fullTable" bgcolor="#fafafa">
  <tbody>
    <tr>
      <td>
        <table width="600" border="0" cellpadding="0" cellspacing="0" align="center" class="fullTable" bgcolor="#ffffff">
          <tbody>
            <tr>
              <td>

                <!-- 결제 비용 테이블 -->
                <table width="480" border="0" cellpadding="0" cellspacing="0" align="center" class="fullPadding">
                  <tbody>
                    <tr>
                      <td style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #646a6e; line-height: 22px; vertical-align: top; text-align:right; ">
                        총액
                      </td>
                      <td style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #646a6e; line-height: 22px; vertical-align: top; text-align:right; white-space:nowrap;" width="80">
                        ##.###원
                      </td>
                    </tr>
                    <tr>
                      <td style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #646a6e; line-height: 22px; vertical-align: top; text-align:right; ">
                        할인가격
                      </td>
                      <td style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #646a6e; line-height: 22px; vertical-align: top; text-align:right; ">
                        #.###원
                      </td>
                    </tr>
                    <tr>
                      <td style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #000; line-height: 22px; vertical-align: top; text-align:right; ">
                        <strong>최종가격</strong>
                      </td>
                      <td style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #000; line-height: 22px; vertical-align: top; text-align:right; ">
                        <strong>##.###원</strong>
                      </td>
                    </tr>
                  </tbody>
                </table>
                <!-- /결제 비용 테이블 -->

              </td>
            </tr>
          </tbody>
        </table>
      </td>
    </tr>
  </tbody>
</table>
<!-- /결제 비용 -->
<!-- 결제 정보 -->
<table width="100%" border="0" cellpadding="0" cellspacing="0" align="center" class="fullTable" bgcolor="#fafafa">
  <tbody>
    <tr>
      <td>
        <table width="600" border="0" cellpadding="0" cellspacing="0" align="center" class="fullTable" bgcolor="#ffffff">
          <tbody>
            <tr>
            <tr class="hiddenMobile">
              <td height="10"></td>
            </tr>
            <tr class="visibleMobile">
              <td height="10"></td>
            </tr>
            <tr>
              <td>
                <table width="480" border="0" cellpadding="0" cellspacing="0" align="center" class="fullPadding">
                  <tbody>
                    <tr>
                      <td>
                        <table width="220" border="0" cellpadding="0" cellspacing="0" align="left" class="col">

                          <tbody>
                            <tr>
                              <td style="font-size: 11px; font-family: 'Open Sans', sans-serif; color: #5b5b5b; line-height: 1; vertical-align: top; ">
                                <strong>주소</strong>
                              </td>
                            </tr>
                            <tr>
                              <td width="100%" height="10"></td>
                            </tr>
                            <tr>
                              <td style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #5b5b5b; line-height: 20px; vertical-align: top; ">
                                서울시 강남구<br> 역삼로 327번길<br> 멀티캠퍼스<br> T: 02-555-0133
                              </td>
                            </tr>
                          </tbody>
                        </table>


                        <table width="220" border="0" cellpadding="0" cellspacing="0" align="right" class="col">
                          <tbody>
                            <tr>
                              <td style="font-size: 11px; font-family: 'Open Sans', sans-serif; color: #5b5b5b; line-height: 1; vertical-align: top; ">
                                <strong>결제방법</strong>
                              </td>
                            </tr>
                            <tr>
                              <td width="100%" height="10"></td>
                            </tr>
                            <tr>
                              <td style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #5b5b5b; line-height: 20px; vertical-align: top; ">
                                카드<br> 카드종류: Visa <br> 소유자명 : 조유저 <br> 주문 상품 : 부드럽고 촉촉한 식감의 오설록 녹차 치즈케이크</a><br>
                              </td>
                            </tr>
                          </tbody>
                        </table>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </td>
            </tr>
            <tr class="hiddenMobile">
              <td height="10"></td>
            </tr>
            <tr class="visibleMobile">
              <td height="10"></td>
            </tr>
          </tbody>
        </table>
      </td>
    </tr>
  </tbody>
</table>
<!-- /결제 정보 -->
<table width="100%" border="0" cellpadding="0" cellspacing="0" align="center" class="fullTable" bgcolor="#fafafa">
  <tr>
    <td>
      <table width="600" border="0" cellpadding="0" cellspacing="0" align="center" class="fullTable" bgcolor="#ffffff" style="border-radius: 0 0 10px 10px;">
        <tr>
          <td>
            <table width="480" border="0" cellpadding="0" cellspacing="0" align="center" class="fullPadding">
              <tbody>
                <tr>
                  <td style="font-size: 12px; color: #5b5b5b; font-family: 'Open Sans', sans-serif; line-height: 18px; vertical-align: top; text-align: left;">
                    감사합니다.
                  </td>
                </tr>
              </tbody>
            </table>
          </td>
        </tr>
        <tr class="spacer">
          <td height="10"></td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td height="10"></td>
  </tr>
</table>
<!-- 하단 부분 -->
</section>