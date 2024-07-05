<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.util.ArrayList" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">  
        <title>JSP Page</title>
    </head>
    <body>
            <nav class="position-relative navbar navbar-dark bg-dark fixed-top">
        <div class="container-fluid">
          <a class="navbar-brand" href="../index.html">Sistema de gestion de inventarios</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
            <div class="offcanvas-header">
              <h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">Menú</h5>
              <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
              <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="../index.jsp">Inicio</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="formulario-productos.jsp">Form Productos</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
    </nav>
    
    <div>
            <% ArrayList<String> producto = (ArrayList)request.getAttribute("producto"); %>
            
            <%
                if(producto != null) {
                    for(String prod:producto){%>
                    <ul>
                        <li><%=prod%></li>
                    </ul>
                    <%}
                }
            %>
        </div>
    <div class="container-floating mt-5 w-75">
        <form action="/FormProducto2023198/producto-servlet/" method="post" enctype="multipart/form-data">
                <div class="form-floating mb-4">
            <input class="form-control" id="nombreProducto" name="nombreProducto" type="text">
            <label for="nombreProducto">Nombre de Producto</label>
            </div>

            <div class="form-floating mb-4">
                <textarea class="form-control"  id="descripcionProducto" name="descripcionProducto" placeholder=""></textarea>
                <label for="descripcionProducto">Descripcion del producto</label>
            </div>

            <div class="form-floating mb-4">
                <input class="form-control" id="marcaProducto" name="marcaProducto" type="text" placeholder="">
                <label for="nombreProducto">Marca del Producto</label>
            </div>

            <div class="input-group mb-4">
              <span class="input-group-text">Q.</span>
              <input type="text" name="precioProducto" class="form-control" >
              <span class="input-group-text">.00</span>
            </div>
            <div>
              <input class="btn btn-outline-success" type="submit" value="Agregar">
            </div>
        </form>
    </div>

    <table class="table table-dark table-hover table-bordered border border-primary" >
      <thead>
        <tr class face="Black">
          <th scope="col">Id</th>
          <th scope="col">Nombre</th>
          <th scope="col">Marca</th>
          <th scope="col">Descripcion</th>
          <th scope="col">Imagen</th>
        </tr>
      </thead>
      <tbody>
          <tr>
            <th scope="row">1</th>
            <td class="center">Mazda Cx5</td>
            <td class="center">Mazda</td>
            <td class="center">Camioneta familiar con motor 2.5 litros de 4 cilindros, 16 valvulas</td>
            <td class="center"><img src="../assets/image/mazda.png" alt="mazda" width="150" height="110"></td>
          </tr>
        <tr>
          <th scope="row">2</th>
          <td class="center">BMW F 850 GS</td>
          <td class="center">BMW</td>
          <td class="center">Motocicleta de doble proposito con motor bicilindico en paralelo</td>
          <td class="center"><img src="../assets/image/bmw.webp" alt="bmw" width="150" height="110"></td>
        </tr>
        <tr>
          <th scope="row">3</th>
          <td class="center">Iphone 15</td>
          <td class="center">Apple</td>
          <td class="center">Iphone con 3 camaras y chip A17 Pro</td>
          <td class="center"><img src="../assets/image/iphone15.jpg" alt="iphone 15" width="150" height="110"></td>
        </tr>
        <tr>
          <th scope="row" class="centrado">4</th>
          <td class="center">Samsung s24</td>
          <td class="center">Samsung</td>
          <td class="center">Pantalla: 6.2 1080 x 2340 pixels Procesador Snapdragon 8 Gen 3 for Galaxy 3.3GHz</td>
          <td class="center"><img src="../assets/image/samsung1.png" alt="samsung" width="150" height="110"></td>
        </tr>
      </tbody>
    </table>
 
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>
