<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<div class="page-title">
   <div class="title_left">
      <h3>Slides</h3>
   </div>
</div>
<form action="" method="post">

   <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
         <div class="x_panel">
            <div class="x_content">
               <a href="/admin/new_slide" data-toggle="tooltip" title="add" class="btn btn-success"><i class="fa fa-plus"></i></a>
               <button data-toggle="tooltip" title="delete" type="submit" class="btn btn-danger" id="delete_button"><i class="fa fa-trash-o"></i></button>
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
                           <th>Image</th>
                           <th>caption</th>
                        </tr>
                     </thead>
                     <tbody>
                        <?php foreach($slides as $slide){ ?>
                        <tr>
                           <td><input type="checkbox" class="flat" name="table_records[]" value="<?= $slide['slide_id']; ?>"></td>
                           <td><?= $slide['slide_id']; ?></td>
                           <td><img style="width:200px" src="<?= $slide['slide_image_url']; ?>" /></td>
                           <td><?= $slide['slide_caption']; ?></td>
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