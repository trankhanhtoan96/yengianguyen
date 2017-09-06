<div class="container-fluid home" style="padding:15px;">
	<div class="row">
		<div class="col-sm-4">
			<img class="thumbnail" src="<?=$product['product_image']?>">
		</div>
		<div class="col-sm-8" style="font-size: 16px;">
			<h1 style="color:#000;"><?=$product['product_name']?></h1>
            <div style="font-size: 30px;padding: 10px;color:#fff;background-image: url(/views/yengianguyen/asset/bg-price.png);">
                Giá: <?= number_format($product['product_price_out']) ?> VNĐ
                <a data-toggle="modal" href='#muahang'><img style="float: right;" src="/views/yengianguyen/asset/lienhemuahang_btn.png" /></a>
            </div>                            
            <br/>
			<?= $product['product_description'] ?>
		</div>
	</div>           
</div>
<div class="modal fade" id="muahang">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-body">
			<form action="" method="POST">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<lable>Họ Tên: <input type="text" name="order_name" class="form-control"></lable><br/>
				<lable>Số Điện Thoại: <input type="tel" name="order_phone" class="form-control"></lable><br/>
				<lable>Số Lượng: <input type="number" name="order_quanty" min="1" max="100" class="form-control" value="1"></lable><br/>
				<button type="submit" class="btn btn-warning">Đặt hàng</button>
			</form>
			</div>
		</div>
	</div>
</div>