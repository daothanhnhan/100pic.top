<?php 
	$video_tab = $action->getDetail('video_tab', 'link', $_GET['page']);//var_dump($video_tab);
	$video = $action->getList('video', 'video_tab_id', $video_tab['id'], 'id', 'asc', $trang, '24', $_GET['page'], $_GET['page']);

	$danh_muc = $action->getList('video_cat', '', '', 'id', 'asc', '', '', '');
	$app = $action->getList('video_app', '', '', 'id', 'asc', '', '', '');
	
	$now = date("Y-m-d");
	$date = $now;
	if (isset($_SESSION['user_id_gbvn'])) {
		$date = $user_info['time'];
	}
?>
<link rel="stylesheet" type="text/css" href="/css/video.css">
<?php include DIR_HEADER."MS_HEADER_AROMACAR_0002_3.php"; ?>
<?php include DIR_SLIDESHOW."MS_SLIDESHOW_AROMACAR_0002.php";?>
<div class="container page-video">
	<div class="row">
		<div class="col-md-3 hidden">
			<div class="widget">
				<h3 class="widget-title">Danh mục video</h3>
				<ul>
					<?php foreach ($danh_muc as $item) { ?>
					<li><a href="/<?= $item['link'] ?>" title=""><?= $item['name'] ?></a></li>
					<?php } ?>
				</ul>
				<h3 class="widget-title">Ứng dụng video</h3>
				<ul>
					<?php foreach ($app as $item) { ?>
					<li><a href="/<?= $item['link'] ?>" title=""><?= $item['name'] ?></a></li>
					<?php } ?>
				</ul>
			</div>
		</div>
		<div class="col-md-12">
			<?php 
			foreach ($video['data'] as $item) { 
				$tab = $action->getDetail('video_tab', 'id', $item['video_tab_id']);
				$link_video = "/images/video/".$item['image'];
				if (!empty($item['link_video'])) {
					$link_video = $item['link_video'];
				}
			?>
			<div class="col-md-3 col-sm-6 col-xs-12">
				<div class="video-item">
					<div>
						<a href="/<?= $item['link'] ?>" title="" class="aspect-a">
							<video controls muted style="width: 100%;" class="video-play aspect-img">
							  <source src="<?= $link_video ?>" type="video/mp4">
							  <source src="movie.ogg" type="video/ogg">
							  Your browser does not support the video tag.
							</video>
						</a>
					</div>
					<div class="row">
						<div class="col-xs-10">
							<p class="video-name"><a href="/<?= $item['link'] ?>" title=""><?= $item['name'] ?></a></p>
							<p class="video-tab"><a href="/<?= $tab['link'] ?>" title=""><?= $tab['name'] ?></a></p>
						</div>
						<div class="col-xs-2" style="padding-left: 10px;padding-right: 5px;">
							<?php if ($item['goi']==0) { ?>
								<a href="<?= $item['download'] ?>" title="" download="" style="color:#000;"><i class="fa fa-download"></i></a>
							<?php } else { ?>
								<?php if (!isset($_SESSION['user_id_gbvn'])) { ?>
									<i class="fa fa-download" onclick="alert('Bạn chưa đăng nhập')"></i>
								<?php } else { 
									if ($date > $now) {
										if ($user_info['goi']==2) { 
									?>
										<a href="<?= $item['download'] ?>" title="" download="" style="color:#000;"><i class="fa fa-download"></i></a>
										<?php } elseif ($user_info['goi']==1) { ?>
											<?php if ($item['goi']==1) { ?>
												<a href="<?= $item['download'] ?>" title="" download="" style="color:#000;"><i class="fa fa-download"></i></a>
											<?php } else { ?>
												<i class="fa fa-download" onclick="alert('Bạn cần nâng cấp lên gói nâng cao.')"></i>
											<?php } ?>
									<?php } } else { ?>
									<i class="fa fa-download" onclick="alert('Bạn phải mua gói để download.');window.location.href='/thanh-toan';"></i>
								<?php } } ?>
							<?php } ?>
						</div>
					</div>
				</div>
			</div>
			<?php } ?>
		</div>
	</div>
	<div style="text-align: center;">
		<?= $video['paging'] ?>
	</div>
	
</div>

<script>
$('.video-play').mouseover(function(){
    $(this).get(0).play();
}).mouseout(function(){
    $(this).get(0).pause();
})
</script>