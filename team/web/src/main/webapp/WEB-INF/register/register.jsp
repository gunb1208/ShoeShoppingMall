<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctxPath" value="<%=request.getContextPath() %>" />

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <script src="https://kit.fontawesome.com/01debed61a.js" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js" integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS" crossorigin="anonymous"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous"> 
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
  
  <style>
    .search:focus {
      outline: none;
    }

    .hearder_link {
      color: black;
      text-decoration-line: none;
    }

    .hearder_label {
      cursor: pointer;
    }

    .payment {
      position: fixed;
      left: 60%;
      bottom: 0.5%;
    }
    
    .underline{
      BORDER-BOTTOM: lightgray 1px solid;
      BORDER-LEFT: medium none;
      BORDER-RIGHT: medium none;
      BORDER-TOP: medium none;
      FONT-SIZE: 9pt
    }
    .underline:focus{
      outline: none;
    }
    
      textarea {
        width: 100%;
        height: 5rem;
        resize: none;
        margin-bottom: 5px;
      }
      ::placeholder {
        font-size: inherit !important;
      }
  </style>

</head>
<body>

  <div class="main">
    <form action="${ctxPath}/user_register_insert.do">

    <div class="container">

      <div class="logo row p-1">

        <div class="col-4 p-2 m-auto">
          <a href="#">
          <img src="https://image.a-rt.com/art/system/site/202207/1658299296317.png">
          </a>
        </div>

        <div class="col-4 mt-4">
         <div class="border-2 border-bottom border-secondary row d-flex justify-content-center">
          <div class="col-10">
            <input type="search" class="search border border-0 w-100 h-100" id="search" placeholder="�˻�� �Է��ϼ���.">
          </div>
          <div class="col-2 d-flex justify-content-end">
            <div class="d-flex m-2">
             <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-funnel" viewBox="0 0 16 16">
             <path d="M1.5 1.5A.5.5 0 0 1 2 1h12a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.128.334L10 8.692V13.5a.5.5 0 0 1-.342.474l-3 1A.5.5 0 0 1 6 14.5V8.692L1.628 3.834A.5.5 0 0 1 1.5 3.5v-2zm1 .5v1.308l4.372 4.858A.5.5 0 0 1 7 8.5v5.306l2-.666V8.5a.5.5 0 0 1 .128-.334L13.5 3.308V2h-11z"/>
             </svg>
            </div>
            <div class="d-flex m-2">
             <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
             <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
             </svg>
            </div>
          </div>
         </div>
        </div>
     <div class="col-4">
          <div class="m-auto d-flex justify-content-between w-25">

			<c:choose>
			<c:when test="${sessionScope.login_chk == 'true'}">
				<small>${sessionScope.user_id}�� �ȳ��ϼ���</small>
				  <a href="${ctxPath}/logout.do" class="hearder_link">  <!-- �α׾ƿ� ��ư -->
	          <div class="row p-3 d-block align-content-center">
	              <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-box-arrow-in-right" viewBox="0 0 16 16">
	              <path fill-rule="evenodd" d="M6 3.5a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-2a.5.5 0 0 0-1 0v2A1.5 1.5 0 0 0 6.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-8A1.5 1.5 0 0 0 5 3.5v2a.5.5 0 0 0 1 0v-2z"/>
	              <path fill-rule="evenodd" d="M11.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H1.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/>
	              </svg>
	              <label class="hearder_label mt-1 text-center" style="font-size: 0.8em;">logout</label>
	          </div>
	          </a>

			</c:when>
			<c:otherwise>
				  <a href="${ctxPath}/login_page.do" class="hearder_link">  <!-- �α��� ��ư -->
	          <div class="row p-3 d-block align-content-center">
	              <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-box-arrow-in-right" viewBox="0 0 16 16">
	              <path fill-rule="evenodd" d="M6 3.5a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-2a.5.5 0 0 0-1 0v2A1.5 1.5 0 0 0 6.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-8A1.5 1.5 0 0 0 5 3.5v2a.5.5 0 0 0 1 0v-2z"/>
	              <path fill-rule="evenodd" d="M11.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H1.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/>
	              </svg>
	              <label class="hearder_label mt-1 text-center" style="font-size: 0.8em;">LOGIN</label>
	          </div>
	          </a>
	
	          <a href="${ctxPath}/user_register.do" class="hearder_link">
	          <div class="row p-3 d-block align-content-center">
	              <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
	              <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0Zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4Zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10Z"/>
	              </svg>
	              <label class="hearder_label mt-1 text-center" style="font-size: 0.8em;">JOIN</label>
	          </div>
	          </a>
			
			
			</c:otherwise>
			</c:choose>
        



          <a href="#" class="hearder_link" onclick="cartlist()">
          <div class="row p-3 d-block align-content-center">
              <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-bag" viewBox="0 0 16 16">
              <path d="M8 1a2.5 2.5 0 0 1 2.5 2.5V4h-5v-.5A2.5 2.5 0 0 1 8 1zm3.5 3v-.5a3.5 3.5 0 1 0-7 0V4H1v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4h-3.5zM2 5h12v9a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V5z"/>
              </svg>
              <label class="hearder_label mt-1 text-center" style="font-size: 0.8em;">CART</label>
          </div>
          </a>





<!--           <a href="#" class="hearder_link">
          <div class="row p-3 d-block align-content-center">
              <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-shop-window" viewBox="0 0 16 16">
              <path d="M2.97 1.35A1 1 0 0 1 3.73 1h8.54a1 1 0 0 1 .76.35l2.609 3.044A1.5 1.5 0 0 1 16 5.37v.255a2.375 2.375 0 0 1-4.25 1.458A2.371 2.371 0 0 1 9.875 8 2.37 2.37 0 0 1 8 7.083 2.37 2.37 0 0 1 6.125 8a2.37 2.37 0 0 1-1.875-.917A2.375 2.375 0 0 1 0 5.625V5.37a1.5 1.5 0 0 1 .361-.976l2.61-3.045zm1.78 4.275a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 1 0 2.75 0V5.37a.5.5 0 0 0-.12-.325L12.27 2H3.73L1.12 5.045A.5.5 0 0 0 1 5.37v.255a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0zM1.5 8.5A.5.5 0 0 1 2 9v6h12V9a.5.5 0 0 1 1 0v6h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1V9a.5.5 0 0 1 .5-.5zm2 .5a.5.5 0 0 1 .5.5V13h8V9.5a.5.5 0 0 1 1 0V13a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V9.5a.5.5 0 0 1 .5-.5z"/>
              </svg>
              <label class="hearder_label mt-1 text-center" style="font-size: 0.8em;">STORE</label>
          </div>
          </a> -->
          
          <c:if test="${sessionScope.admin == 'true'}">
          <a href="#" class="hearder_link" onclick="admin_sellingList()">
          <div class="row p-3 d-block align-content-center">
              <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-shop-window" viewBox="0 0 16 16">
              <path d="M2.97 1.35A1 1 0 0 1 3.73 1h8.54a1 1 0 0 1 .76.35l2.609 3.044A1.5 1.5 0 0 1 16 5.37v.255a2.375 2.375 0 0 1-4.25 1.458A2.371 2.371 0 0 1 9.875 8 2.37 2.37 0 0 1 8 7.083 2.37 2.37 0 0 1 6.125 8a2.37 2.37 0 0 1-1.875-.917A2.375 2.375 0 0 1 0 5.625V5.37a1.5 1.5 0 0 1 .361-.976l2.61-3.045zm1.78 4.275a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 1 0 2.75 0V5.37a.5.5 0 0 0-.12-.325L12.27 2H3.73L1.12 5.045A.5.5 0 0 0 1 5.37v.255a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0zM1.5 8.5A.5.5 0 0 1 2 9v6h12V9a.5.5 0 0 1 1 0v6h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1V9a.5.5 0 0 1 .5-.5zm2 .5a.5.5 0 0 1 .5.5V13h8V9.5a.5.5 0 0 1 1 0V13a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V9.5a.5.5 0 0 1 .5-.5z"/>
              </svg>
              <label class="hearder_label mt-1 text-center" style="font-size: 0.8em;">Admin</label>
          </div>
          </a>
          </c:if>
          </div>
        </div>

     </div>  <!-- logo -->
    </div>  <!-- container -->
     
      <nav class="navbar navbar-expand-lg p-1" style="background-color: rgb(240, 36, 36);">
        <div class="container-fluid">
         <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <div class="col-2"></div>
            <ul class="navbar-nav me-auto col-4 justify-content-start">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#" style="color: yellow; margin-right: 1em;">BRAND</a>
              </li>
              <li class="nav-item P-2">
                <a class="nav-link active" aria-current="page" href="#" style="color: white; margin-right: 1em;">MEN</a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#" style="color: white; margin-right: 1em;">WOMEN</a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#" style="color: white; margin-right: 1em;">KIDS</a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#" style="color: white;">SALE</a>
              </li>
            </ul>
            <ul class="navbar-nav me-auto col-4 justify-content-end">
              <li class="nav-item P-2">
                <a class="nav-link active" aria-current="page" href="#" style="color: white;"><strong>��ȹ��</strong></a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#" style="color: white; margin-left: 0.8em;"><strong>�̺�Ʈ/����</strong></a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#" style="color: white; margin-left: 0.8em;"><strong>������</strong></a>
              </li>
            </ul>
            <div class="col-2"></div>
          </div>
        </div>
      </nav>


      <div class="main mt-5 mb-5">
        
        <div class="row d-flex">
            <div class="col-3"></div>

            <div class="col-6 row justify-content-center">
                <h3 class="mb-5 mt-5 text-center"><strong>�¶��� ȸ������</strong></h3>
            
                <h5 class="mb-3 mt-2"><strong>�������</strong></h5>

                <div class="p-2 bg-opacity-10 border border-2 border-start-0 border-end-0">
                    <div class="row d-flex">
                        <div class="col-12 m-auto">
                            <div class="container">
                              <div class="w-75 m-auto form-check">
                                <div class="mt-3">
                                  <input type="checkbox" id="chk_all" value="A" class="form-check-input"/> 
                                  <label for=""><strong>��ü ����� �����մϴ�</strong></label>
                                </div>
                                  <div class="mt-3">
                                  <input type="checkbox" id="chk1" class="chk form-check-input" value="A" />
                                  <label for=""><label for="" style="color: red;">[�ʼ�]</label> ����Ʈ �̿��� </label>
                                  <textarea name="" id="" cols="30" rows="3" class="form-control mt-3">�� ����� (��)���̺񾾸�Ʈ�ڸ��� ȸ��(���� "ȸ��"�� ��)�� ��ϴ� ���ͳ� ���� ����(���� "����"�� �Ѵ�)�� �̿��Կ� �־� ȸ��� �̿����� �Ǹ����ǹ� �� å�ӻ����� �������� �������� �մϴ�.
                                  </textarea
                                  >
                                </div>
                                <div class="mt-3">
                                  <input type="checkbox" id="chk2" class="chk form-check-input" value="B" />
                                  <label for=""><label for="" style="color: red;">[�ʼ�]</label> ���ڻ�ŷ� �̿��� </label>
                                  <textarea name="" id="" cols="30" rows="3" class="form-control mt-3">�� ����� �߿��̺񾾸�Ʈ�ڸ���(���� "���"�� ��)�� ��ϴ� ���� ���̹����� A-RT����(http://www.a-rt.com) (���� "����"�̶� ��)�� ���Ͽ� �����ϴ� �������ް������༭��, ������ݿ�ġ���� �� �����������޼���(������Ʈ��, ��������)�� ���� �� ���� ����(���� ��Ī�Ͽ� �����ڱ����ŷ����񽺡��� �մϴ�)�� �̿��ڰ� �̿��ϴ� ���, ��ȸ�硯�� �̿��ڰ� ���ڱ����ŷ��� �������踦 ���Կ� �� ������ �ֽ��ϴ�.</textarea
                                  >
                                </div>
                                <div class="mt-3">
                                  <input type="checkbox" id="chk3" class="chk form-check-input" value="C" />
                                  <label for=""><label for="" style="color: red;">[�ʼ�]</label> �������� ���� �� �̿� ����</label>
                                  <textarea name="" id="" cols="30" rows="3" class="form-control mt-3">��������ó���ڴ� ������ü�� ���Ǹ� ���� ��쿡�� ���������� ������ �� ������, �� ���� ������ ���� �������� �̿��� �� �ֽ��ϴ�. ����, ������ü���� ���Ǹ� ���� ��쿡�� 1) �������� ���� �� �̿� ����, 2) �����Ϸ��� ���������� �׸�, 3) ���������� ���� �� �̿� �Ⱓ, 4) ���Ǹ� �ź��� �Ǹ��� �ִٴ� ��� �� �������� ���� ��� �� ���� �� �ʼ��� �˷����� �մϴ�. ����, ���Ǹ� ���� �ʰ� ���������� �����ϰų� �̿��� ��쿡�� 5�� ������ ¡�� �Ǵ� 5õ���� ������ ���ݿ� ó�� �� �ֽ��ϴ�.</textarea
                                  >
                                </div>
                                <div class="mt-3 mb-4">
                                  <input type="checkbox" id="sellect1" class="sellect form-check-input" value="sel1" />
                                  <label for="">[����] ������ ���� ���ŵ��� </label>
                                  <textarea name="" id="" cols="30" rows="3" class="form-control mt-3">���������� �����Ǵ� ����Ͻ� ��Ʈ�ʻ�, ���� ����, ������ ������ �̿������ �Ʒ��� �����ϴ�. ȸ���Ե� �� �� ���������� ��3�� ������ Ȱ�뵿�Ǽ� � �����Ͻ� ȸ���Ե��� �������� �����Ǹ�, ������ ������ ��õ� �̿������ ��� �̿���� �ʰ�, ���������� ���� �� ��� �Ͼ�� �ʵ��� ���� ö���� ������ �̷�������� ����ϰ� �ֽ��ϴ�.</textarea
                                    >
                                  </div>
                              </div>
                          </div>
                        </div>
                    </div>

                </div>

            </div>    <!-- col-8 -->


            <div class="col-3"></div>
        </div>

        <div class="row d-flex mt-5">
            <div class="col-3"></div>

            <div class="row col-6">

                <div>
                    <h5 class="mb-3"><strong>ȸ�� ����</strong></h5>
                    <div class="bg-opacity-10 border border-2 border-start-0 border-end-0">

                      <div class="mt-5 mb-5 row justify-content-start">

                        <div class="row d-flex m-2 mb-3">
                          <div class="col-1"></div>
                          <label class="col-2 align-self-center"><strong>���̵� <label style="color: red;">*</label></strong></label>
                          <input type="text" class="col-8 underline p-1" id="user_id" name="user_id" placeholder="���̵� �Է��� �ּ���" style="font-size: 1rem;">
                          <div class="col-1"></div>
                        </div>

                        <div class="row d-flex m-2 mb-3">
                          <div class="col-1"></div>
                          <label class="col-2 align-self-center"><strong>��й�ȣ <label style="color: red;">*</label></strong></label>
                          <input type="text" class="col-8 underline p-1" id="user_pw" name="user_pw" placeholder="��й�ȣ�� �Է��� �ּ���" style="font-size: 1rem;">
                          <div class="col-1"></div>
                        </div>

                        <div class="row d-flex m-2 mb-3">
                          <div class="col-1"></div>
                          <label class="col-2 align-self-center"><strong>��й�ȣ Ȯ�� <label style="color: red;">*</label></strong></label>
                          <input type="text" class="col-8 underline p-1" placeholder="��й�ȣ�� ���Է��� �ּ���" style="font-size: 1rem;">
                          <div class="col-1"></div> 
                        </div>

                        <div class="row d-flex m-2 mb-3">
                          <div class="col-1"></div>
                          <label class="col-2 align-self-center"><strong>�г��� </strong></label>
                          <input type="text" class="col-8 underline p-1" id="nickname" name="nickname" placeholder="�г����� �Է��� �ּ���" style="font-size: 1rem;">
                          <div class="col-1"></div>
                        </div>

                        <div class="row d-flex m-2 mb-3">
                          <div class="col-1"></div>
                          <label class="col-2 align-self-center"><strong>�̸� <label style="color: red;">*</label></strong></label>
                          <input type="text" class="col-8 underline p-1" id="name" name="name" placeholder="�ѱ�, ����, ���ڸ� �Է����ּ���" style="font-size: 1rem;">
                          <div class="col-1"></div>
                        </div>

                        <div class="row d-flex m-2 mb-3">
                          <div class="col-1"></div>
                          <label class="col-2 align-self-center"><strong>�̸��� </strong></label>
                          <input type="text" class="col-8 underline p-1" id="email" name="email" placeholder="�̸��� �ּҸ� �Է��� �ּ���" style="font-size: 1rem;">
                          <div class="col-1"></div>
                        </div>
                      
                        <div class="row d-flex m-2 mb-3">
                          <div class="col-1"></div>
                           <label class="col-2 align-self-center"><strong>�ּ� <label style="color: red;">*</label></strong></label>
                           <input type="text" class="col-2 underline p-1" id="address" name="address">&nbsp;
                           <input type="button" class="col-2 btn btn-outline-secondary rounded-0 btn-sm" value="�����ȣ ã��">
                           <div class="col-1"></div>
                        </div>

                        <div class="row d-flex m-2 mb-3">
                          <div class="col-1"></div>
                          <label class="col-2 align-self-center"></label>
                          <input type="text" class="col-8 underline p-1">
                          <div class="col-1"></div>
                        </div>

                        <div class="row d-flex m-2 mb-3">
                          <div class="col-1"></div>
                            <label class="col-2 align-self-center"><strong>��ȭ��ȣ </strong></label>
                            <input type="text" class="col-8 underline p-1" id="phone" name="phone" placeholder="��ȭ��ȣ�� '-' ���� �Է��� �ּ���" style="font-size: 1rem;">
                            <div class="col-1"></div>
                         </div>
                      </div>

                    </div>
                </div>

                
                
               
            </div>    <!-- col-5 -->





            <div class="col-3"></div>
        </div>


        <div class="row d-flex m-5">
          <div class="col-3"></div>
          <div class="row col-6 mb-5">
            <div class="d-flex justify-content-center">
              <button type="button" class="btn btn-lg btn-secondary m-1 rounded-0" style="width: 20%; height: 90%;">���</button>
              <button type="submit" class="btn btn-lg btn-dark m-1 rounded-0" id="next" style="width: 20%; height: 90%;">ȸ������</button>
           </div>
          </div>
          <div class="col-3"></div>
      </div>    
      
      </div>
      <!-- end main -->

      

      <div class="p-2 bg-secondary bg-opacity-10 border border-start-0 border-end-0">
        <div class="d-flex">
          <div class="col-2"></div>
          <div class="col-5">
            <div class="d-flex">
              <p class="m-1" style="font-size: 0.9em;"><strong>���հ�����</strong></p>
              <p class="m-1" style="font-size: 0.9em;">1588-1234</p>
              <p class="m-1" style="color: rgb(144, 143, 143); font-size: 0.9em;"">��~�� 09:00 ~ 12:00 / 13:00 ~ 18:00 (�ָ�,������ �޹�)</p>
            </div>
          </div>
          <div class="col-1">
            <div class="m-1">
              <a href="#" class="link-body-emphasis link-offset-2 link-underline-opacity-0" style="font-size: 0.9em;"><strong>NOTICE</strong></a>
            </div>
          </div>
        </div>
      </div>





      <!-- footer -->

      <div>
       <div class="row mb-3">
        <div class="col-2"></div>
        <div class="col-5">
          <img src="https://image.a-rt.com/art/system/site/202207/1658299296317.png" style="width: 18%;" class="mb-3 mt-3">
          <p style="font-size: 0.7em; color: rgb(105, 105, 105);">
            (��)���̺񾾸�Ʈ �ڸ��� ��ǥ�̻� �� �̱�ȣ �ּ� �� ����Ư���� �߱� ������ 100, B�� 21�� (������ 2��, ���ο���)<br>
            ����ڵ�Ϲ�ȣ �� 201-81-76174 ����Ǹž��Ű� �� �� 2015-�����߱�-1036ȣ<br>
            ����������ȣ å���� �� �ڿ��� �̸��� �� abcmartcs@abcmartkorea.com
          </p>
          <p style="font-size: 0.7em;">
            <a href="#" class="link-secondary link-offset-2 link-underline-opacity-0">���������Ȯ��</a> �� 
            <a href="#" class="link-secondary link-offset-2 link-underline-opacity-0">��������ó����ħ</a> �� 
            <a href="#" class="link-secondary link-offset-2 link-underline-opacity-0">�̿���</a> �� 
            <a href="#" class="link-secondary link-offset-2 link-underline-opacity-0">����� �̿���</a>
          </p>
        </div>
        <div class="col-1 mt-4">
          <p style="font-size: 0.9em; color: rgb(36, 36, 36);"><strong>HELP</strong></p>
          <p style="font-size: 0.9em; color: rgb(105, 105, 105);">
            <a href="#" class="link-secondary link-offset-2 link-underline-opacity-0">������</a><br>
            <a href="#" class="link-secondary link-offset-2 link-underline-opacity-0">����ã��</a><br>
            <a href="#" class="link-secondary link-offset-2 link-underline-opacity-0">����/���޹���</a>
          </p>
        </div>

        <div class="col-1 mt-4">
          <p style="font-size: 0.9em; color: rgb(36, 36, 36);"><strong>BRAND</strong></p>
          <p style="font-size: 0.9em; color: rgb(105, 105, 105);">
            <a href="#" class="link-secondary link-offset-2 link-underline-opacity-0">HAWKINS</a><br>
            <a href="#" class="link-secondary link-offset-2 link-underline-opacity-0">SPERRY</a><br>
            <a href="#" class="link-secondary link-offset-2 link-underline-opacity-0">DANNER</a>
          </p>
        </div>

        
        
       </div>
      </div>  <!-- footer -->

        </form>
  </div>  <!-- main -->
  

<script>
  const all_chk = document.querySelectorAll(".chk");
      const chk_once = document.querySelector("#chk_all");
      const next_btn = document.querySelector("#next");

      chk_once.addEventListener("change", () => {
        if (chk_once.checked) {
          all_chk.forEach((chk) => {
            chk.checked = true;
          });

          document.querySelector(".sellect").checked = true;
          document.querySelector("#next").disabled = false;
        } else {
          all_chk.forEach((chk) => {
            chk.checked = false;
          });
          document.querySelector(".sellect").checked = false;
          document.querySelector("#next").disabled = true;
        }
      });

      all_chk.forEach((chk) => {
        chk.addEventListener("change", () => {
          let total_chk = 0;
          all_chk.forEach((chk) => {
            if (chk.checked) total_chk++;
          });
          if (total_chk == all_chk.length) {
            chk_once.checked = true;
            document.querySelector("#next").disabled = false;
          } else {
            chk_once.checked = false;
            document.querySelector("#next").disabled = true;
          }
        });
      });

      next_btn.addEventListener("click", () => {});
</script>

</body>
</html>