<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<form enctype="multipart/form-data" action="" method="post" data-parsley-validate class="form-horizontal form-label-left">
   <input type="hidden" name="submit_form" value="1" />
   <div class="page-title">
      <div class="title_left">
         <h3>New Slide</h3>
      </div>
   </div>
   <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
         <div class="x_panel">
            <div class="x_content">
               <a href="/admin/slide" class="btn btn-danger" data-toggle="tooltip" title="close"><i class="fa fa-reply"></i></a>
               <button type="submit" class="btn btn-success" data-toggle="tooltip" title="save"><i class="fa fa-floppy-o"></i></button>
            </div>
         </div>
      </div>
   </div>
   <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
         <div class="x_panel">
            <div class="x_content">
               <div class="form-group">
                  <label class="control-label col-md-2 col-sm-2 col-xs-12" for="slide_image_url">
                     Image:*
                  </label>
                  <div class="col-md-10 col-sm-10 col-xs-12">
                     <input type="file" id="slide_image_url" class="form-control col-md-7 col-xs-12" name="slide_image_url" required="required" />
                  </div>
               </div>
               <div class="form-group">
                  <label class="control-label col-md-2 col-sm-2 col-xs-12" for="slide_caption">
                     Caption:
                  </label>
                  <div class="col-md-10 col-sm-10 col-xs-12">
                     <input type="text" id="slide_caption" class="form-control col-md-7 col-xs-12" name="slide_caption" />
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>

</form>