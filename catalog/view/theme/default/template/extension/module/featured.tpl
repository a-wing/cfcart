<h3><?php echo $heading_title; ?></h3>
<div class="row">
  <?php foreach ($products as $product) { ?>
  <div class="product-layout col-lg-3 col-md-3 col-sm-6 col-xs-12">
    <div class="product-thumb transition">
      <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
      <div class="caption">
        <h4><span><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></span>
        <span style="color: #FF0000;" class="pull-right"><?php echo $product['fundingtotal']/intval($product['model'])*100; ?>%</span></h4>
        <div class="progress progress-striped active">
        <?php if ($product['fundingtotal'] < intval($product['model'])) { ?>
        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: <?php echo $product['fundingtotal']/intval($product['model'])*100; ?>%;"></div>
        <?php } else {?>
        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: <?php echo $product['fundingtotal']/intval($product['model'])*100; ?>%;"></div>
        <?php } ?>
        </div>
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
    </div>
  </div>
  <?php } ?>
</div>
