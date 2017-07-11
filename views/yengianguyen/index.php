<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?=isset($SEO_title)?$SEO_title:''?></title>
    <meta name="Description" content="<?=isset($SEO_descriptiton)?$SEO_descriptiton:''?>">
    <meta name="Keywords" content="<?=isset($SEO_keyword)?$SEO_keyword:''?>">
    <meta name="google-site-verification" content="<?=$this->setting_model->tkt_get('google_site_verification')?>" />
    <meta name="author" content="<?=$this->setting_model->tkt_get('author_name')?>" />
    <meta name="copyright" content="<?=$this->setting_model->tkt_get('author_name')?>" />
    <link rel="icon" href="<?=$this->setting_model->tkt_get('favicon')?>" type="image/png" sizes="16x16">
    <link rel="canonical" href="<?=current_url()?>"/>
    <meta name="robots" content="index,follow" />
    <meta name="revisit-after" content="days">
    <link rel="publisher" href="<?=$this->setting_model->tkt_get('author')?>"/>
    <link rel="author" href="<?=$this->setting_model->tkt_get('author')?>"/>
    <meta itemprop="name" content="<?=isset($SEO_title)?$SEO_title:''?>">
    <meta itemprop="description" content="<?=isset($SEO_descriptiton)?$SEO_descriptiton:''?>">
    <meta itemprop="image" content="<?=isset($SEO_image)?$SEO_image:''?>">
    <meta property="og:title" content="<?=isset($SEO_title)?$SEO_title:''?>" />
    <meta property="og:locale" content="vi_VN" />
    <meta property="og:type" content="website" />
    <meta property="og:url" content="<?=current_url()?>" />
    <meta property="og:image" content="<?=isset($SEO_image)?$SEO_image:''?>" />
    <meta property="og:description" content="<?=isset($SEO_descriptiton)?$SEO_descriptiton:''?>" />
    <meta property="og:site_name" content="<?= $this->setting_model->tkt_get('set_pagetitle') ?>" />
    <meta property="fb:admins" content="<?= $this->setting_model->tkt_get('fb_id') ?>" />
    <meta name="geo.placename" content="Viet Nam" />
    <meta name="geo.region" content="VN" />
    <!-- css -->
    <link href="/views/assets/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="/views/assets/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="/views/yengianguyen/asset/style.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Dancing+Script:700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Pangolin" rel="stylesheet">
    <!-- script -->
    <script src="/views/assets/jquery/dist/jquery.min.js"></script>
    <script src="/views/assets/bootstrap/dist/js/bootstrap.min.js"></script>
</head>
<body>

<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
  <script type="text/javascript" src="https://apis.google.com/js/plusone.js"></script>

   <?php
   if(isset($alert)) $this->load->view('alert/'.$alert);
   $this->load->view('yengianguyen/header',$_varibles);
   $this->load->view($_content,$_varibles);
   $this->load->view('yengianguyen/footer',$_varibles);
   ?>
   <script src="/views/assets/autosize/dist/autosize.min.js"></script>
   <!-- Autosize -->
    <script>
      $(document).ready(function() {
        autosize($('.resizable_textarea'));
      });
    </script>
    <!-- /Autosize -->
    <!--  -->
    <script type="text/javascript">
      $(document).ready(function(){$('[data-toggle="tooltip"]').tooltip({container:"body"})})
    </script>
    <!-- / -->
    <!-- google analyntics -->
    <script>
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
      ga('create', '<?=$this->setting_model->tkt_get('id_analytics')?>', 'auto');
      ga('send', 'pageview');
    </script>
    <!-- google analyntics -->
    <script type="text/javascript">
      $("img").attr("class","img-responsive");
    </script>
<!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/594df28ce9c6d324a4737182/default';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->
<button class="btn btn-danger" style="background-color: red;font-size: 16px;border-radius: 0px;position: fixed;bottom: 0px;left: 0px;"><b><i class="fa fa-phone"></i> 0936.441.116</b></button>
</body>
</html>