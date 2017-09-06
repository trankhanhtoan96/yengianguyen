<div class="container-fluid home">
	<div class="row">
		<div class="col-sm-5 font-dep">
			<p style="font-size:70px;">Cam kết</p>
			<p style="font-size: 25px;">Yến Gia Nguyễn cam kết 100% yến thật<br/>
			Sản phẩm không dùng bất kỳ hóa chất nào trong quá trình chế biến<br/>
			Miễn phí giao hàng trong khu vực TP. Hồ Chí Minh<br/>
			Quý khách có đổi hàng, trả hàng, hoàn tiền trong vòng 7 ngày.</p>
		</div>
		<div class="col-sm-7">
			<div id="slide_home" class="carousel slide" data-ride="carousel">
				<div class="carousel-inner">
					<?php if(isset($slides[0]['slide_image_url'])){ ?>
						<div class="item active">
							<img src="<?= $slides[0]['slide_image_url']; ?>">
						</div>
					<?php } ?>
					<?php for($i=1;$i<count($slides);$i++){ ?>
					<div class="item">
						<img src="<?= $slides[$i]['slide_image_url']; ?>">
					</div>
					<?php } ?>
				</div>
			</div>
		</div>
	</div>
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