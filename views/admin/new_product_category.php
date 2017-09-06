<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<form enctype="multipart/form-data" action="" method="post" data-parsley-validate class="form-horizontal form-label-left">
   <div class="page-title">
      <div class="title_left">
         <h3>Tạo Mới Danh Mục Sản Phẩm</h3>
      </div>
   </div>
   <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
         <div class="x_panel">
            <div class="x_content">
               <a href="/admin/product_category" class="btn btn-danger" data-toggle="tooltip" title="close"><i class="fa fa-reply"></i></a>
               <button type="submit" class="btn btn-success" data-toggle="tooltip" title="save"><i class="fa fa-floppy-o"></i></button>
            </div>
         </div>
      </div>
   </div>
   <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
         <div class="x_panel">
            <div class="x_title">
               <h4>Genarel</h4>
            </div>
            <div class="x_content">
               <div class="form-group">
                  <label class="control-label col-md-2 col-sm-2 col-xs-12" for="product_category_name">
                     Tên danh mục:<span class="required">*</span>
                  </label>
                  <div class="col-md-10 col-sm-10 col-xs-12">
                     <input type="text" id="product_category_name" class="form-control col-md-7 col-xs-12" name="product_category_name" required="required" />
                  </div>
               </div>
               <div class="form-group">
                  <label class="control-label col-md-2 col-sm-2 col-xs-12" for="product_category_image">
                     Ảnh đại diện:
                  </label>
                  <div class="col-md-10 col-sm-10 col-xs-12">
                     <input type="file" id="product_category_image" class="btn btn-primary form-control col-md-7 col-xs-12" name="product_category_image"/>
                  </div>
               </div>
               <div class="form-group">
               <label class="control-label col-md-2 col-sm-2 col-xs-12">Danh mục cha:</label>
                  <div class="col-md-10 col-sm-10 col-xs-12">
                     <select name="product_category_parent_id" class="select2_single form-control" tabindex="-1">
                        <option></option>
                        <option value="0">None (NULL)</option>
                        <?php foreach($categorys as $cat){ ?>
                           <option value="<?= $cat['product_category_id']; ?>"><?= $cat['product_category_name']; ?></option>
                        <?php } ?>
                     </select>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
         <div class="x_panel">
            <div class="x_title">
               <h2>Meta</h2>
               <div class="clearfix"></div>
            </div>
            <div class="x_content">
               <div class="form-group">
                  <label class="control-label col-md-2 col-sm-2 col-xs-12" for="product_category_seo_title">
                     Title:
                  </label>
                  <div class="col-md-10 col-sm-10 col-xs-12">
                     <input maxlength="70" type="text" id="product_category_seo_title" class="form-control col-md-7 col-xs-12" name="product_category_seo_title" required="required" />
                  </div>
               </div>
               <div class="form-group">
                  <label class="control-label col-md-2 col-sm-2 col-xs-12" for="product_category_seo_keyword">
                     Keyword:
                  </label>
                  <div class="col-md-10 col-sm-10 col-xs-12">
                     <input maxlength="160" type="text" id="product_category_seo_keyword" class="form-control col-md-7 col-xs-12" name="product_category_seo_keyword" />
                  </div>
               </div>
               <div class="form-group">
                  <label class="control-label col-md-2 col-sm-2 col-xs-12" for="product_category_seo_description">
                     Description:
                  </label>
                  <div class="col-md-10 col-sm-10 col-xs-12">
                     <input maxlength="160" type="text" id="product_category_seo_description" class="form-control col-md-7 col-xs-12" name="product_category_seo_description" />
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
         <div class="x_panel">
            <div class="x_title">
               <h2>Mô tả</h2>
               <div class="clearfix"></div>
            </div>
            <div class="x_content">
               <div class="form-group">
                  <div class="col-md-12 col-sm-12 col-xs-12">
                     <textarea class="ckeditor" name="product_category_description"></textarea>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>

</form>