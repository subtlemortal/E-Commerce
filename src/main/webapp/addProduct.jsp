<!DOCTYPE html>
<!Author: @Shantanu Unde>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Product | OLX</title>
</head>
<body>
    <header>
        <h1>Add Your Product</h1>
    </header>
    <main>
        <form action="addProductInfo.jsp" method="post">
            <div>
                <label for="name">Product Name:</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div>
                <label for="description">Description:</label>
                <textarea id="description" name="description" required></textarea>
            </div>
            <div>
                <label for="price">Price ($):</label>
                <input type="number" id="price" name="price" step="0.01" required>
            </div>
            <div>
                <label for="category">Category:</label>
                <input type="text" id="category" name="category" required> 
            </div>
            <div>
                <button type="submit">Add Product</button>
            </div>
        </form>
    </main>
</body>
</html>