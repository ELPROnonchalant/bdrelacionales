<?php
header("Content-Type: aplication/json");

if($_SERVER['REQUEST_METHOD'] !== 'PUT'){
    http_response_code(405);
    echo json_encode(['error' => 'Solo metodo PUT es permitido']);
}

//conectar a la BD platillos
require 'conexionPlatillos.php';

$input = json_decode(file_get_contents('php://input'), true);
$id = intval($input["id"]);
$Nombre = $conn->real_escape_string($input["Nombre"]);

$query = "UPDATE actor SET Nombre = ?, last_name = ?, last_update = NOW() WHERE id = ?";

$_POST = $conn-prepare($query);

if(!$st){
    http_response_code(500);
    echo json_encode(["error" => "Error en la consulta" . $conn_error]);
    exit();
}

$st->bind_param("si", $Nombre, $id);

if($st-execute()){
    if($st->affected_rows > 0){
        echo json_encode(["message" => "Categoría actualizada correctamente"]);
    }else{
        http_response_code(404);
        echo json_encode(["error" => "No se encontró la categoría con id; $id"]);
    }
}else{
    http_response_code(500);
    echo json_encode(["error" => "Error al ejecutar" . $st->error]);
}
$st->close();
$conn->close();
?>