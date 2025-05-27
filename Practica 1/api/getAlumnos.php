<?php
header("Content-Type: application/json");
header("Access-Control-Allow-Origin: *");

$usuarios=[
    ["id" => 1, "nombre" => "John Doe", "correo" => "johndou@gmail.com"],
    ["id" => 1, "nombre" => "Nikolai Bellic", "correo" => "nbc0cksucca@gmail.com"],
    ["id" => 1, "nombre" => "Stewart Griffin", "correo" => "c00lwhuip@gmail.com"],
];

echo json_encode($usuarios);

?>
]