
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `products` (`id`, `name`, `category_id`, `created_date`) VALUES
(1, 'Sabun Wangi', 1, '2018-11-10 10:06:32'),
(2, 'Minuman Cola', 2, '2018-11-10 10:06:32'),
(3, 'Prenagon Gold', 3, '2018-11-10 10:11:24'),
(4, 'Aquaa', 2, '2018-11-10 10:11:24'),
(5, 'The Botol', 2, '2018-11-10 10:11:46'),
(6, 'Sampo', 1, '2018-11-10 10:11:46');

CREATE TABLE `product_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `product_categories` (`id`, `name`, `created_date`) VALUES
(1, 'Peralatan Mandi', '2018-11-10 10:04:53'),
(2, 'Minuman Kemasan', '2018-11-10 10:04:53'),
(3, 'Produk Susu', '2018-11-10 10:05:02');

ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_category` (`category_id`);

ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `product_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `products`
  ADD CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
select product_categories.id , product_categories.name , count(products.category_id) 
as jumlah_product from product_categories join products ON products.category_id = product_categories.id
group by products.category_id