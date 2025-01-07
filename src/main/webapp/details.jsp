
<!DOCTYPE html>
<!Author: @Shantanu Unde>
<html>
<head>
    <title>Product Details</title>
</head>
<body>
    <h1>Product Details</h1>
    <form action="submit_product_details.php" method="post">
        <div>
            <label for="product_name">Product Name:</label><br>
            <input type="text" id="product_name" name="product_name"><br>
        </div>
        <div>
            <label for="description">Description:</label><br>
            <textarea id="description" name="description" rows="4" cols="50"></textarea><br>
        </div>
        <div>
            <label for="price">Price:</label><br>
            <input type="number" id="price" name="price" step="0.01"><br>
        </div>
        <button type="submit">Contact Seller</button>
    </form>
</body>
</html>
