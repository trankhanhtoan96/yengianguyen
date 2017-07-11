<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

<div class="page-title">

   <div class="title_left">

      <h3>Đặt hàng</h3>

   </div>

</div>

<form action="" method="post">



   <div class="row">

      <div class="col-md-12 col-sm-12 col-xs-12">

         <div class="x_panel">

            <div class="x_content">

               <button data-toggle="tooltip" title="Xóa" type="submit" class="btn btn-danger" id="delete_button"><i class="fa fa-trash-o"></i></button>

            </div>

         </div>

      </div>

   </div>

   <div class="row">

      <div class="col-md-12 col-sm-12 col-xs-12">

         <div class="x_panel">

            <div class="x_content">

                  <table id="datatable-checkbox" class="table table-striped table-bordered bulk_action">

                     <thead>

                        <tr>

                           <th>#</th>

                           <th>ID</th>

                           <th>Thời gian</th>

                           <th>tên khách hàng</th>

                           <th>số điện thoại</th>

                           <th>sản phẩm</th>

                           <th>số lượng</th>

                           <th>đơn giá (đ)</th>

                           <th>Thành tiền (đ)</th>
                           <th>Trang thái</th>
                           <th></th>

                        </tr>

                     </thead>

                     <tbody>

                        <?php foreach($orders as $order){ ?>

                        <tr>

                           <td><input type="checkbox" class="flat" name="table_records[]" value="<?= $order['order_id']; ?>"></td>

                           <td><?= $order['order_id']; ?></td>

                           <td><?= date("d/m/Y H:i",$order['order_time']); ?></td>

                           <td><?= $order['order_name'] ?></td>

                           <td><?= $order['order_phone'] ?></td>

                           <td><?= $order['product_name'] ?></td>

                           <td><?= $order['order_quanty'] ?></td>

                           <td><?= number_format($order['product_price_out']) ?></td>

                           <td><?= number_format($order['product_price_out']*$order['order_quanty']) ?></td>
                           <td><?= $order['order_checked']?'<b style="color:green">Hoàn thành</b>':'<b style="color:red">Đang chờ xử lý</b>' ?></td>
                           <td><?php if($order['order_checked']!=1){ ?><a href="/admin/hoanthanh/<?=$order['order_id']?>" data-toggle="tooltip" title="Đã Hoàn Thành" type="submit" class="btn btn-success"><i class="fa fa-check"></i></a><?php } ?></td>
                        </tr> 

                        <?php } ?>

                     </tbody>

                  </table>

            </div>

         </div>

      </div>

   </div>

</form>

<script>

   $("#delete_button").click(function(){

      if(confirm("Are you sure to delete?")) return true;

      return false;

   });

</script>