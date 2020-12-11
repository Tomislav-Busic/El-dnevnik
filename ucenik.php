<?php
include "actions/connection.php";

if($_SESSION['nastavnik'] == 1){
    header('location:nastavnik/index.php');
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <title>Učenik</title>
</head>
<body>

    <a class="log-uce" href="actions/logout.php">Logout</a>

    <br><br>

    <div class="uplo-dom">
    <form method="POST" id="domaciUpload" enctype="multipart/form-data" action="actions/domaci.php">
    <h1>Učitaj domaći</h1>
    <input type="file" name="domaci">
    <button type="submit" id="uploadBtn">Učitaj</button>
    </form>
    </div>

    <h1>Tvoje ocjene</h1>

    <table class="table">
        <tr>
            <th>Predmet</th>
            <th>Ocjena</th>
        </tr>

        <?php
        $sql = "SELECT * FROM ocjene WHERE ucenik_id = " . $_SESSION['user_id'];
        $results = $mysqli->query($sql);

        while($row = $results->fetch_assoc()) {
            ?>

            <tr>
                <td><?php echo $row['predmet']; ?></td>
                <td><?php echo $row['ocjena']; ?></td>
            </tr>

            <?php
        }
        ?>
    </table>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="js/main.js"></script>

</body>
</html>



