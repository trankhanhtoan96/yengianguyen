<style type="text/css">

#style-6::-webkit-scrollbar-track

{

	-webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);

	background-color: #F5F5F5;

}



#style-6::-webkit-scrollbar

{

	width: 10px;

	background-color: #F5F5F5;

}



#style-6::-webkit-scrollbar-thumb

{

	background-color: #F90;	

	background-image: -webkit-linear-gradient(45deg,

	                                          rgba(255, 255, 255, .2) 25%,

											  transparent 25%,

											  transparent 50%,

											  rgba(255, 255, 255, .2) 50%,

											  rgba(255, 255, 255, .2) 75%,

											  transparent 75%,

											  transparent)

}

a:hover{

	color: red !important;

}

</style>

<div class="container-fluid home">

	<div class="row">
	<div class="pull-right">
<div class="fb-like" data-href="<?=current_url()?>" data-width="10" data-layout="button_count" data-show-faces="false" data-send="true"></div>   
  <g:plusone size="medium"></g:plusone>
</div>
		<div class="col-sm-3 ">

			<br/>

			<div class="panel panel-default hidden-xs" style="border-radius:5px;background-image:url(/views/yengianguyen/asset/menu_box.png);font-family: 'Pangolin', cursive;font-size: 14px;">

				<div class="panel-body">

					<?php $dem=1; foreach($blogs as $temp){ ?>

					<a style="color: #000;" href="/<?=rewrite($temp['blog_seo_title'])?>-<?=$temp['blog_id']?>.html"><?=$dem++?>. <?=$temp['blog_name']?></a><br/><br/>

					<?php } ?>

				</div>

			</div>

		</div>

		<div class="col-sm-9" id="style-6" style="font-size:16px;overflow-y: scroll; height:545px;padding:10px;">

			<h1 title="<?=$blog['blog_seo_title']?>"><?=$blog['blog_name']?></h1>

			<?=$blog['blog_content']?>



			<div class="panel panel-default hidden-sm hidden-md hidden-lg" style="background-image:url(/views/yengianguyen/asset/menu_box.png);font-family: 'Pangolin', cursive;font-size: 14px;">

				<div class="panel-body">

					<?php $dem=1; foreach($blogs as $temp){ ?>

					<a style="color: #000;" href="/<?=rewrite($temp['blog_seo_title'])?>-<?=$temp['blog_id']?>.html"><?=$dem++?>. <?=$temp['blog_name']?></a><br/><br/>

					<?php } ?>

				</div>

			</div>

		</div>

	</div>

</div>