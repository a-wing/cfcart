<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <div class="row">
        <div class="col-sm-12">
          <div class="well">

			<h2><?php echo $text_seller; ?></h2>
			<?php if(isset($sign)) {?>
				<ul class="list-unstyled">
					<li><a href="index.php?route=crowd/product/add"><?php echo $text_seller_product; ?></a></li>
				</ul>

			<?php } else {?>
			
            <h2><?php echo $text_seller_sign; ?></h2>
            <p><strong><?php echo $text_sign_describe; ?></strong></p>

            <form action="index.php?route=account/seller" method="post" enctype="multipart/form-data">
              <div class="form-group">
                <label class="control-label" for="input-email"><?php echo $text_seller_name; ?></label>
                <input type="text" name="seller-name" placeholder="<?php echo $text_seller_name; ?>" id="input-email" class="form-control" />
              </div>
              <input type="submit" value="<?php echo $button_sign; ?>" class="btn btn-primary" />
			
            </form>
			<?php }?>
          </div>
        </div>
      </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>