<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Dashboard - SB Admin</title>
        <link href="/css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <jsp:include page="../layout/header.jsp"/>

        <div id="layoutSidenav">
            <jsp:include page="../layout/sidebar.jsp"/>

            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Manager Product</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item "><a href="/admin">Dashdoard</a></li>
                            <li class="breadcrumb-item active">Product</li>
                        </ol>

                        <div class=" mt-5">
                            <!-- Content here -->
                            <div class="col-12 mx-auto">
                                <div class="d-flex justify-content-between">
                                    <h3 class="text-center">Table Product</h3>
                                    <a href="/admin/product/create" class="btn btn-primary">Create a product</a>
                                </div>
                                <hr/>
                                <table class="table table-hover table-bordered">
                                    <thead>
                                      <tr>
                                        <th scope="col">ID</th>
                                        <th scope="col">Name</th>
                                        <th scope="col">Price</th>
                                        <th scope="col">Factory</th>
                                        <th scope="col">Action</th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                      <c:forEach var="user" items="${users}">
                                        <tr>
                                            <td>${user.id}</td>
                                            <td>${user.email}</td>
                                            <td>${user.fullName}</td>
                                            <td>${user.role.name}</td>
                                            <td>
                                                <a href="/admin/user/${user.id}" class="btn btn-success">View</a>
                                                <a href="/admin/user/update/${user.id}" class="btn btn-warning mx-2">Update</a>



                                                <!-- Button trigger modal -->
                                                <button  type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal-${user.id}">
                                                  Delete
                                                </button>

                                                <!-- Modal -->
                                                <div class="modal fade" id="exampleModal-${user.id}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                  <div class="modal-dialog">
                                                    <div class="modal-content">
                                                      <div class="modal-header">
                                                        <h1 class="modal-title fs-5" id="exampleModalLabel">Delete user ${user.id}</h1>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                      </div>
                                                      <div class="modal-body">
                                                        Are you sure delete this user ?
                                                      </div>
                                                      <div class="modal-footer">
                                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                                        <a href="/admin/user/delete/${user.id}"  class="btn btn-primary">Save changes</a>
                                                      </div>
                                                    </div>
                                                  </div>
                                                </div>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                
                                    

                                    </tbody>
                                </table>


                                
                            </div>

                          </div>
                    </div>
                </main>
                <jsp:include page = "../layout/footer.jsp"/>

            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="/js/scripts.js"></script>
  
    </body>
</html>
