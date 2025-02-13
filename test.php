<?php
include 'connection.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $title = $conn->real_escape_string($_POST['title']);
    $author_id = (int)$_POST['author_id'];
    $genre_id = (int)$_POST['genre_id'];
    $price = (float)$_POST['price'];
    $stock = (int)$_POST['stock'];
    $popularity = (int)$_POST['popularity'];

    $sql = "INSERT INTO books (title, author_id, genre_id, price, stock, popularity) VALUES ('$title', $author_id, $genre_id, $price, $stock, $popularity)";

    if ($conn->query($sql) === TRUE) {
        echo "Книгата е добавена успешно!";
    } else {
        echo "Грешка: " . $conn->error;
    }
}

// Вземане на списъка с автори и жанрове
$authors = $conn->query("SELECT * FROM authors");
$genres = $conn->query("SELECT * FROM genres");
?>

<!DOCTYPE html>
<html>
<head>
    <title>Добавяне на книга</title>
</head>
<body>
    <h1>Добавяне на книга</h1>
    <form method="POST" action="">
        <label>Заглавие:</label>
        <input type="text" name="title" required><br>

        <label>Автор:</label>
        <select name="author_id">
            <?php while ($row = $authors->fetch_assoc()): ?>
                <option value="<?php echo $row['id']; ?>"><?php echo htmlspecialchars($row['name']); ?></option>
            <?php endwhile; ?>
        </select><br>

        <label>Жанр:</label>
        <select name="genre_id">
            <?php while ($row = $genres->fetch_assoc()): ?>
                <option value="<?php echo $row['id']; ?>"><?php echo htmlspecialchars($row['name']); ?></option>
            <?php endwhile; ?>
        </select><br>

        <label>Цена:</label>
        <input type="number" step="0.01" name="price" required><br>

        <label>Наличност:</label>
        <input type="number" name="stock" required><br>

        <label>Популярност:</label>
        <input type="number" name="popularity" required><br>

        <button type="submit">Добави книга</button>
    </form>
</body>
</html>