<html>
    <head>
        <title>Produc</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </head>
    <body>
    <?php 
        $konek = mysqli_connect("localhost", "root", "", "products");
        $product = mysqli_query($konek,"select product_categories.id, product_categories.name, count(products.category_id) as jumlah_product from product_categories JOIN products ON products.category_id = product_categories.id GROUP BY products.category_id");
    ?>
    <h3>Product List</h3>
    <table class="table table-striped">
        <tr>
            <th>
                ID
            </th>
            <th>
                Name
            </th>
            <th>
                Jumlah Product
            </th>
        </tr>
        <?php 
            while($data = mysqli_fetch_array($product)){
        ?>
        <tr>
            <td><?php echo $data['id']; ?></td>
            <td><?php echo $data['name']; ?></td>
            <td><?php echo $data['jumlah_product']; ?></td>
        </tr>
        <?php } ?>
    </table>


   
    </body>
</html>
