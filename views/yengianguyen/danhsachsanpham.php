<div class="container-fluid home">
	<br/>
	<div class="container" style="font-size: 16px;">
		<div class="row">
			<div class="col-sm-1"></div>
			<div class="col-sm-10">
			<div class="row">
			<?php foreach($products as $product) { ?>
			<div class="col-sm-6 col-xs-12 col-md-4 col-lg-4">
				<div class="col-item">
					<div class="col-img">
						<a href="/<?= rewrite($product['product_seo_title']) ?>-<?=$product['product_id']?>-pro.html">
							<img src="<?=$product['product_image']?>" style="height:350px;width: 270px;margin:auto;">
						</a>
					</div>
					<div class="col-name">
						<a href="/<?= rewrite($product['product_seo_title']) ?>-<?=$product['product_id']?>-pro.html" style="color: #e8e866;"><?=$product['product_name']?></a>
					</div>
					<div class="col-price">
						Giá: <?=number_format($product['product_price_out'])?> VNĐ
					</div>
				</div>
			</div>
			<?php } ?>
			</div>
			</div>
			<div class="col-sm-1"></div>
		</div>
	</div>
</div>