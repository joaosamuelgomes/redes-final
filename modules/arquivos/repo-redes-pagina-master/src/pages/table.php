<?php 

include("classe/conexao.php");

$consulta = "SELECT * FROM usuario";

$con = $mysqli -> query($consulta) or die($mysqli -> error);
?>

<html>
    <head>
        <meta charset="utf8">
        <title>Tabela de dados</title>
    </head>
    <body>
        <table border="1">
            <tr>
                <td>Código</td>
                <td>Nome</td>
                <td>E-Mail</td>
                <td>Data de cadastro</td>
            </tr>
            <?php while($dado = $con->fetch_array()){ ?>
            <tr>
                <td><?php echo $dado["usu_codigo"]; ?></td>
                <td><?php echo $dado["usu_nome"]; ?></td>
                <td><?php echo $dado["usu_email"]; ?></td>
                <td><?php echo $dado["usu_datadecadastro"]; ?></td>
            <tr>
            <?php } ?>
        </table>
    </body>
</html>