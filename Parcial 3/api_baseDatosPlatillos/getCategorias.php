<?php

$host = 'localhost';//'localhost'
$user = 'root';//'root'
$pass = '';//''
$dbname = 'platillos';

//Crear conexión
$conn = new mysqli($host, $user, $pass, $dbname);

//verificar conexión
if($conn->connect_error){
    http_response_code(500);
    echo json_encode(['error' => 'Error de conexión: ' . $conn->connect_error]);
    exit;
}

//consulta mysql

$sql = "SELECT * FROM categorias";
$result= $conn->query($sql);

if($result && $result->num_rows > 0){
    while($row = $result->fetch_assoc()){
        $categorias[] = $row;
    }
}

$conn->close();

header("Content-Type: application/json");
echo json_encode($categorias);


//probar http://localhost/api/getCategorias.php

?>