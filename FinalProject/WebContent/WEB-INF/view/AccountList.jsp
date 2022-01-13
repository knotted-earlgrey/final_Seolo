<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AccountList.jsp</title>

<!-- 통일하기로 한 부트스트랩 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</head>
<body>

	<!-- 메뉴 영역 -->
	<div>
		<c:import url="MenuNavbar_admin.jsp"></c:import>
	</div>

	<!-- 콘텐츠 영역 -->
	<!-- user 바 -->
	<div class="py-5 text-center">
		<h2 style="margin-top: 50px;">회원 리스트</h2>
	</div>
	<div class="card-header" data-select2-id="56">
		<div class="row justify-content-between align-items-center flex-grow-1" data-select2-id="55">
			<div class="col-12 col-md">
				<div class="d-flex justify-content-between align-items-center">
					<h5 class="card-header-title">(총 회원 : ${count }명)</h5>
				</div>
			</div>
			<!-- End Filter -->
		</div>
	</div>


	<!-- 유저 테이블 -->
	<div class="table-responsive datatable-custom">
		<div id="datatable_wrapper" class="dataTables_wrapper no-footer">
			<div class="dataTables_length" id="datatable_length"></div>
			<table id="datatable" class="table table-borderless table-thead-bordered table-nowrap table-align-middle card-table dataTable no-footer" data-hs-datatables-options="{
                     &quot;columnDefs&quot;: [{
                        &quot;targets&quot;: [0, 1, 4],
                        &quot;orderable&quot;: false
                      }],
                     &quot;order&quot;: [],
                     &quot;info&quot;: {
                       &quot;totalQty&quot;: &quot;#datatableWithPaginationInfoTotalQty&quot;
                     },
                     &quot;search&quot;: &quot;#datatableSearch&quot;,
                     &quot;entries&quot;: &quot;#datatableEntries&quot;,
                     &quot;pageLength&quot;: 8,
                     &quot;isResponsive&quot;: false,
                     &quot;isShowPaging&quot;: false,
                     &quot;pagination&quot;: &quot;datatablePagination&quot;
                   }" role="grid"
				aria-describedby="datatable_info"
			>
				<thead class="thead-light">
					<tr role="row">
						<th scope="col" class="table-column-pr-0 sorting_disabled" rowspan="1" colspan="1" aria-label="" style="width: 43.6979px;"></th>
						<th class="table-column-pl-0 sorting_disabled" rowspan="1" colspan="1" aria-label="Full name" style="width: 253.917px;">아이디</th>
						<th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Status: activate to sort column ascending" style="width: 137.312px;">닉네임</th>
						<th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Type: activate to sort column ascending" style="width: 180.292px;">이름</th>
						<th class="sorting_disabled" rowspan="1" colspan="1" aria-label="Email" style="width: 239.312px;">이메일</th>
						<th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Signed up: activate to sort column ascending" style="width: 146.771px;">가입일</th>
						<th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="User ID: activate to sort column ascending" style="width: 111.365px;">계정번호</th>
					</tr>
				</thead>
				<tbody>
					<!-- 한 페이지당 10개 계정 정보 조회 가능 -->
					<c:forEach var="list" items="${list }">
						<tr role="row">
							<td class="table-column-pr-0"></td>
							<td class="table-column-pl-0"><a><span class="h5 text-hover-primary mb-0">${list.pe_id }</span> </a></td>
							<td>${list.nickname }</td>
							<td>${list.name }</td>
							<td>${list.email }</td>
							<td>${list.pedate }</td>
							<td>${list.ac_no }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>

		<div class="card-footer">
			<!-- 페이징 처리 -->
			<div class="dataTables_paginate paging_simple_numbers" style="text-align: center;"datatable_paginate">
				<span style="text-align: center;">${pageIndexList }</span>
			</div>

			<%-- 부트스트랩 적용된 페이징 처리 --%>
			<%--
			<!-- Pagination -->
			<div class="row justify-content-center justify-content-sm-between align-items-sm-center">
				<div class="col-sm mb-2 mb-sm-0"></div>
			</div>

			<div class="col-sm-auto">
				<div class="d-flex justify-content-center justify-content-sm-end">
					<!-- Pagination -->
					<nav id="datatablePagination" aria-label="Activity pagination">
						<div class="dataTables_paginate paging_simple_numbers" id="datatable_paginate">
							<ul id="datatable_pagination" class="pagination datatable-custom-pagination">
								<li class="paginate_item page-item disabled"><a class="paginate_button previous page-link" aria-controls="datatable" data-dt-idx="0" tabindex="0" id="datatable_previous"><span aria-hidden="true">Prev</span></a></li>
								<li class="paginate_item page-item active"><a class="paginate_button page-link" aria-controls="datatable" data-dt-idx="1" tabindex="0">1</a></li>
								<li class="paginate_item page-item"><a class="paginate_button page-link" aria-controls="datatable" data-dt-idx="2" tabindex="0">2</a></li>
								<!-- <li class="paginate_item page-item"><a
									class="paginate_button page-link" aria-controls="datatable"
									data-dt-idx="3" tabindex="0">3</a></li> -->
								<li class="paginate_item page-item"><a class="paginate_button next page-link" aria-controls="datatable" data-dt-idx="4" tabindex="0" id="datatable_next"><span aria-hidden="true">Next</span></a></li>
							</ul>
						</div>
					</nav>
				</div>
			</div>
			--%>

		</div>
		<!-- End Pagination -->
	</div>
	<br>
	<br>

</body>
</html>