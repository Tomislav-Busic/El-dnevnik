<?php include "header.php" ?>

<?php
if (isset($_SESSION['message'])) {
    echo "<p class='message-success'>" . $_SESSION['message'] . "</p>";
    unset($_SESSION['message']);
}
?>

<form class="ocjena-form" action="actions/upisOcjena.php" method="POST">
    <input type="hidden" name="ucenik_id" value="<?php echo $_GET['ucenik_id']; ?>">

    <select name="predmet">
        <option value="Programiranje">Programiranje</option>
        <option value="Matemetika">Matemetika</option>
        <option value="Računalstvo">Računalstvo</option>
        <option value="Engleski">Engleski</option>
        <option value="BazePodataka">Baze podataka</option>
    </select>

    <input type="number" max="5" min="1" name="ocjena">

    <button type="submit">Ocjeni</button>

</form>

<?php include "footer.php" ?>
