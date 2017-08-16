<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<script type="text/javascript">
	$(document)
			.ready(
					function() {

						var dataPreferences = {

							series : [ [ 25, 30, 20, 25 ] ]
						};

						var optionsPreferences = {

							donut : true,
							donutWidth : 40,
							startAngle : 0,
							height : "245px",
							total : 100,
							showLabel : false,
							axisX : {
								showGrid : false
							}
						};

						Chartist.Pie('#chartPreferences', dataPreferences,
								optionsPreferences);

						var contry = new Array();
						var percent = new Array();

						<c:forEach items="${pieChartList}" var="pieChartList" varStatus="status">
						contry[<c:out value="${status.index}"/>] = ('<c:out value="${pieChartList.country}"/>');
						percent[<c:out value="${status.index}"/>] = ('<c:out value="${pieChartList.percent}"/>');
						</c:forEach>

						Chartist.Pie('#chartPreferences', {
							labels : contry,
							series : percent
						});

						// 선택한 요소 뒤에 값을 추가합니다.
						$(".text-info").after(contry[0]);
						$(".text-danger").after(contry[1]);
						$(".text-warning").after(contry[2]);
					});
</script>
<form id="frm" name="frm"></form>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-6">
			<div class="card">
				<div class="header">
					가입한 유저의 국적 통계
					<p class="category">Hanq Pie Chart</p>
				</div>
				<div class="content">
					<div id="chartPreferences" class="ct-chart"></div>
				</div>
				<div class="footer">
					<h6>Legend</h6>
					<i class="fa fa-circle text-warning"></i> <i
						class="fa fa-circle text-danger"></i> <i
						class="fa fa-circle text-info"></i>
				</div>
			</div>
		</div>
		<div class="col-md-12">
			<div class="card">
				<div class="header">
					<h4 class="title">테이블도 뭐 그렇게 어렵진 않아요.</h4>
					<p class="category">기본 확실하게 다져서 갑시다~</p>
				</div>
				<div class="content table-responsive table-full-width">
					<table class="table table-hover table-striped">
						<thead>
							<c:if test="${columnCheckArry ne null }">
								<c:forEach items="${columnCheckArry}" var="columnCheckArry">
									<th><c:out value="${columnCheckArry}"></c:out></th>
								</c:forEach>
								<tbody>
									<c:forEach items="${welcomeWebList}" var="welcomeWebList"
										varStatus="status">
										<tr>
											<c:forEach items="${columnCheckArry}" var="columnCheckArry">
												<c:choose>
													<c:when test="${columnCheckArry == '아이디'}">
														<td><c:out value="${welcomeWebList.id}" /></td>
													</c:when>
													<c:when test="${columnCheckArry == '이름'}">
														<td><c:out value="${welcomeWebList.userName}" />
															<c:forEach items="${nameCheckArry}" var="nameCheckArry">
																<c:if test="${welcomeWebList.userName eq nameCheckArry}">
																	<c:out value="★★★★" />
																</c:if>
															</c:forEach>
														</td>
													</c:when>
													<c:when test="${columnCheckArry == '나이'}">
														<td><c:out value="${welcomeWebList.age}" />
															<c:forEach items="${ageCheckArry}" var="ageCheckArry">
																<c:if test="${welcomeWebList.age eq ageCheckArry}">
																	<c:out value="★★★★" />
																</c:if>
															</c:forEach>
														</td>
													</c:when>
													<c:when test="${columnCheckArry == '국가'}">
														<td><c:out value="${welcomeWebList.country}" />
															<c:forEach items="${countryCheckArry}" var="countryCheckArry">
																<c:if test="${welcomeWebList.country eq countryCheckArry}">
																	<c:out value="★★★★" />
																</c:if>
															</c:forEach>
														</td>
													</c:when>
													<c:when test="${arr == '기타'}">
														<td><c:out value="${welcomeWebList.etc}" /></td>
													</c:when>
												</c:choose>
											</c:forEach>
										</tr>
									</c:forEach>
								</tbody>
							</c:if>
							<c:if test="${columnCheckArry eq null }">
								<th>ID</th>
								<th>Name</th>
								<th>Salary</th>
								<th>Country</th>
								<th>City</th>
								<tbody>
									<c:forEach items="${welcomeWebList}" var="welcomeWebList"
										varStatus="status">
										<tr>
											<td><c:out value="${welcomeWebList.id}" /></td>
											<td><c:out value="${welcomeWebList.userName}" /> 
												<c:forEach
													items="${nameCheckArry}" var="nameCheckArry">
													<c:if test="${welcomeWebList.userName eq nameCheckArry}">
														<c:out value="★★★★" />
													</c:if>
												</c:forEach>
											</td>
											<td><c:out value="${welcomeWebList.age}" /> 
												<c:forEach
													items="${ageCheckArry}" var="ageCheckArry">
													<c:if test="${welcomeWebList.age eq ageCheckArry}">
														<c:out value="★★★★" />
													</c:if>
												</c:forEach>
											</td>
											<td><c:out value="${welcomeWebList.coutry}" /> 
												<c:forEach
													items="${countryCheckArry}" var="countryCheckArry">
													<c:if test="${welcomeWebList.coutry eq countryCheckArry}">
														<c:out value="★★★★" />
													</c:if>
												</c:forEach>
											</td>
											<td><c:out value="${welcomeWebList.etc}" /></td>
									</c:forEach>
									</tr>
								</tbody>
							</c:if>
						</thead>

					</table>
				</div>
				<jsp:include
					page="/WEB-INF/jsp/egovframework/example/welcomeWeb/welcomeWebSub.jsp">
					<jsp:param name="paramHanq" value="hanq" />
				</jsp:include>
			</div>
		</div>
	</div>
</div>