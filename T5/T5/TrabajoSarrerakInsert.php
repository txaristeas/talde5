  <head>
          <link href="css/Plantilla.css"
      rel="stylesheet" type="text/css"/>
    </head>
    <body>
    	<header>
         <p>Datos alumnos</p>   
        </header>
        <?php 
          if(!isset($_POST['aceptar'])){   
        ?>
            <form action="TrabajoSarrerakInsert.php" method="post">
              
            Titulo :<br>
              <input type ="text"  name="Tituloak"/> <br/><br/>
            Gaia :<br>
              <input type ="text"  name="Gaia"/> <br/><br/>
            Deskribapena :<br>
              <input type ="text"  name="Describapena"/> <br/><br/>
           
               Especialidades :<br>
              <input type ="text"  name="Especialidades"/> <br/><br/>
            Jefe de cocina :<br>
              <input type ="text"  name="Jefedecocina"/> <br/><br/>
            Localizacion:<br>
              <input type ="text"  name="Localizacion"/> <br/><br/>
            Medios de pago
              <input type ="text"  name=" Mediosdepago"/> <br/><br/>
            Precios medios
              <input type ="text"  name=" Preciosmedios"/> <br/><br/>
            Servicios
              <input type ="text"  name=" Servicios"/> <br/><br/>
            Estrellas
              <input type ="text"  name=" Estrellas"/> <br/><br/>
            Contacto
              <input type ="text"  name=" Contacto"/> <br/><br/>




                    
            <button type="submit" name="aceptar">Aceptar</button>
            </form>

       <?php 
       } else{
           try  { $connect= new mysqli("localhost","root","","proyecto_T5");
            
            
            
            $Tituloak= $_POST ['Tituloak'];
            $Gaia=$_POST ['Gaia'];
            $Describapena= $_POST ['Describapena'];
            $Bisitak= 0;
            $Especialidades= $_POST ['Especialidades'];
            $Jefedecocina= $_POST ['Jefedecocina'];
            $Localizacion= $_POST ['Localizacion'];
            $Mediosdepago= $_POST ['Mediosdepago'];
            $Preciosmedios= $_POST ['Preciosmedios'];
            $Servicios= $_POST ['Servicios'];
            $Estrellas= $_POST ['Estrellas'];
            $Contacto= $_POST ['Contacto'];

echo "conexion exitosa. <br/>"; 






            $consulta="INSERT INTO Sarrerak( Tituloak, Gaia, Describapena , Bisitak, Data, Especialidades, Jefe_de_cocina, Localizacion, Medios_de_pago, Precios_medios, Servicios, Estrellas, Contacto) VALUES ('".$Tituloak."', '".$Gaia."', '".$Describapena."', '".$Bisitak."', curdate(), '".$Especialidades."', '".$Jefedecocina."', '".$Localizacion."', '".$Mediosdepago."', '".$Preciosmedios."', '".$Servicios."', '".$Estrellas."', '".$Contacto."')";
            echo "$consulta";
               $resultado = $connect-> query($consulta);
              if ($resultado) {
//comprobar que a realizado la conexion y guarda los datos
              echo "perfil almacenado. <br/>";
            }
            else {
              echo "error en la ejecución de la consulta. <br/>";
            }

          }  catch (PDOException $e) { 
        echo "conexion fallida. <br/>" . $e->getMessage();
}
//escripe los resltados del select
   
      } 
        ?>

          
        </form>

        <footer>
            <p>@Examen</p>
        </footer>
    </body>

    (idSarrera, titulua, gaia, deskribapen laburra, bisitak, data, )
    
