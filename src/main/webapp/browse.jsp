<!DOCTYPE html>
<!Author: @Shantanu Unde>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Browse Products | OLX</title>
</head>
<body>
    <header>
        <h1>Browse Products</h1>
    </header>
    <main>
        <section>
            <h2>All Products</h2>
            <form action="/search" method="get">
                <label for="filter">Filter:</label>
                <select id="filter" name="filter">
                    <option value="price_asc">Price: Low to High</option>
                    <option value="price_desc">Price: High to Low</option>
                    <option value="date_asc">Date: Old to New</option>
                    <option value="date_desc">Date: New to Old</option>
                </select>
                <button type="submit">Apply</button>
            </form>
            <!-- List of products will be displayed here -->
        </section>
    </main>
</body>
</html>