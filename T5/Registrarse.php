<?php 
session_start();
 error_reporting(0);
?>
<!DOCTYPE html>
<html>
  <head>
          <link href="css/Plantilla.css"
      rel="stylesheet" type="text/css"/>

      <script language="text/javascript">
function comprobar()
{
   var nick = document.formu.Nick.value;
   var adina = document.formu.Adina.value;
   var pasahitza = document.formu.Pasahitza.value;
   if (nick.length > 20)
   {
      alert("Tu nick es demasiado largo. Redúcelo.");
      document.getElementById("aceptar").disabled =true;
      return false;
   }
   
   if (adina <= 13 )
   {
      alert("Si tienes menos de 13 años, no puedes ver este blog.");
      document.getElementById("aceptar").disabled =true;
      
   }
   if (pasahitza.length > 11 )
   {
      alert("Contraseña demasiado larga. Redúcela a menos de 11 carácteres.");
      document.getElementById("aceptar").disabled =true;
     
   }
   document.getElementById("aceptar").disabled =false;
   
   return true;
}
</script>
    </head>
    <body>
    	<header>
         <p>Datos alumnos</p>   
        </header>
        <?php 
          if(!isset($_POST['aceptar'])){   
        ?>
            <form action="Registrarse.php" method="post" name="formu" id="formu" >
              
      Nick :<br>
            <input type ="text"  name="Nick"/> <br/><br/>
            PostaElectronicoa :<br>
              <input type ="text"  name="PostaElectronicoa" required /> <br/><br/>
              Izena :<br>
                <input type ="text"  name="Izena" required /> <br/><br/>
                Abizena :<br>
                  <input type ="text"  name="Abizena" required /> <br/><br/>
                 
                    Adina :<br>
                      <input type ="text"  name="Adina" required /> <br/><br/>
                       Pasahitza :<br>
                      <input type ="text"  name="Pasahitza" required/> <br/><br/>
                      
                      <?php echo $_SESSION['admin'];?>
                      <?php if ($_SESSION['admin']==1){ ?>
                        
                    
                       Permisuak :<br>
                      <input type ="text"  name="Permisuak" required/> <br/><br/>
                      
                     <?php } ?>

                     <input type="submit" name="aceptar" id="aceptar">Aceptar</input>

            </form>

       <?php 
       } else{
           try  { $connect= new mysqli("localhost","root","","proyecto_T5");
            echo "conexion exitosa. <br/>"; 
            
            
            $Nick= $_POST ['Nick'];
            $PostaElectronicoa=$_POST ['PostaElectronicoa'];
            $Izena= $_POST ['Izena'];
            $Abizena=$_POST ['Abizena'];
            
            $Adina= $_POST ['Adina'];


             $Pasahitza= $_POST ['Pasahitza'];

 if ($_SESSION['admin']==1){
              $Permisuak= $_POST ['Permisuak'];
}else{  $Permisuak= 0 ;}


              include 'Encrypt.php';

            $consulta="INSERT INTO Erabiltzailea(Nick, PostaElectronicoa,Izena, Abizena, Adina, Pasahitza,Permisuak) VALUES ('".$Nick."','".$PostaElectronicoa."','".$Izena."','".$Abizena."','".$Adina."','".encrypt($Pasahitza, $Nick)."','".$Permisuak."' )";
               $resultado = $connect-> query($consulta);
              if ($resultado) {
//comprobar que a realizado la conexion y guarda los datos
              echo "perfil almacenado. <br/>";
              header("Location: index1.php");
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
    
</html>