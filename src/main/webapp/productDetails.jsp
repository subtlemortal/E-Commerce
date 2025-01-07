<!DOCTYPE html>
<!Author: @Shantanu Unde>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Details</title>
</head>
<body>
    <header>
        <h1>Add New Product</h1>
    </header>
    <main>
        <form action="submit_product.php" method="post">
            <label for="productName">Product Name:</label><br>
            <input type="text" id="productName" name="productName"><br>
            <label for="productDescription">Product Description:</label><br>
            <textarea id="productDescription" name="productDescription" rows="4" cols="50"></textarea><br>
            <label for="productPrice">Price:</label><br>
            <input type="number" id="productPrice" name="productPrice" step="0.01"><br><br>
            <button type="submit">Submit</button>
        </form>
    </main>
</body>
</html>
