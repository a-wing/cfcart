<h3><?php echo $heading_title; ?></h3>
<div class="row">
  <?php foreach ($products as $product) { ?>
  <div class="product-layout col-lg-3 col-md-3 col-sm-6 col-xs-12">
    <div class="product-thumb transition">
      <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
      <div class="caption">
        <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
        <p><?php echo $product['description']; ?></p>
        <h4 style="color: #FF0000;" align="right"><?php echo $product['fundingtotal']/intval($product['model'])*100; ?>%</h4>
        <div class="progress progress-striped active">
			<div class="progress-bar progress-bar-danger" role="progressbar" 
				aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" 
				style="width: <?php echo $product['fundingtotal']/intval($product['model'])*100; ?>%;">
				<!--style="width: <?php echo $product['rating']*2; ?>0%;">-->
			</div>
		  </div>
		<!--型号（model）作为是一个基础数值。
		进度条算法：（型号-库存）/型号*100%
		<div><?php echo $product['quantity']; ?></div>
		<div><?php echo intval($product['model']); ?></div>
		
		<?php if ($product['rating']) { ?>
		<div class="rating">
          <?php for ($i = 1; $i <= 5; $i++) { ?>
          <?php if ($product['rating'] < $i) { ?>
          <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } else { ?>
          <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } ?>
          <?php } ?>
        </div>
        <?php } ?>
        <?php if ($product['price']) { ?>
        <p class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
          <?php } ?>
          <?php if ($product['tax']) { ?>
          <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
          <?php } ?>
        </p>
        -->
        <?php } ?>
		<b>
        <table class="table" style="color: #990099;">
        	<tr>
        	<td><?php echo $currency; echo floatval($product['fundingtotal']); ?></td>
      		<td><?php echo $currency; echo $product['model'];?></td>
			<td><?php echo $product['date_end']; echo $text_day;?></td>
      	</tr>
      	<tr>
      		<td><?php echo $text_fundingtotal; ?></td>
      		<td><?php echo $text_target;?></td>
			<td><?php echo $day_remaining; ?></td>
      	</tr>
        </table>
		</b>
      </div>
      
      
      <!--
      <div class="button-group">
        <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
      </div>
      -->
    </div>
  </div>
  <?php } ?>
</div>
