<?php 
	if (!isset($_SESSION['sort_video'])) {
		$_SESSION['sort_video'] = 2;
	}
	/////////////////////////////
	if (isset($_GET['segment1'])) {
		$segment1 = explode("-", $_GET['segment1']);
		if ($segment1[0] != 0) {
			$_SESSION['cat'] = $segment1[0];
		} else {
			unset($_SESSION['cat']);
		}
		if ($segment1[1] != 0) {
			$_SESSION['app'] = $segment1[1];
		} else {
			unset($_SESSION['app']);
		}

		$_SESSION['range'] = 5 - $segment1[2];
	}
	////////////////////////////
	$video = $action->getList_video('video', '', '', 'id', 'desc', $trang, '15', $_GET['page'], $_GET['page']);//var_dump($video);

	$danh_muc = $action->getList('video_cat', '', '', 'id', 'asc', '', '', '');
	$app = $action->getList('video_app', '', '', 'id', 'asc', '', '', '');
	
	$now = date("Y-m-d");
	$date = $now;
	if (isset($_SESSION['user_id_gbvn'])) {
		$date = $user_info['time'];
	}
	////////////////////////
	$q = $_GET['search'];
	if (empty($q)) {
		$q = '-';
	}
	////////////////////////
	// var_dump($user_info);
	function count_cat ($id) {
		global $conn_vn;
		$add = '';
		if (isset($_GET['search']) && $_GET['search'] != '-') {
			$q = $_GET['search'];
			$add .= " AND (link LIKE '%$q%')";
		}
		if (isset($_SESSION['app'])) {
			$app = $_SESSION['app'];
			$add .= " AND video_app_id = $app";
		}
		if ($_SESSION['range'] != 5) {
			$range = 5 - $_SESSION['range'];
			$add .= " AND `range` >= $range";
		}
		$sql = "SELECT count(id) as num FROM video WHERE video_cat_id = $id $add";//echo $sql;
		$result = mysqli_query($conn_vn, $sql);
		$row = mysqli_fetch_assoc($result);
		// var_dump($row);
		return $row;
	}

	function count_app ($id) {
		global $conn_vn;
		$add = '';
		if (isset($_GET['search']) && $_GET['search'] != '-') {
			$q = $_GET['search'];
			$add .= " AND (link LIKE '%$q%')";
		}
		if (isset($_SESSION['cat'])) {
			$cat = $_SESSION['cat'];
			$add .= " AND video_cat_id = $cat";
		}
		if ($_SESSION['range'] != 5) {
			$range = 5 - $_SESSION['range'];
			$add .= " AND `range` >= $range";
		}
		$sql = "SELECT count(id) as num FROM video WHERE video_app_id = $id $add";//echo $sql;
		$result = mysqli_query($conn_vn, $sql);
		$row = mysqli_fetch_assoc($result);
		// var_dump($row);
		return $row;
	}



	if (!isset($_SESSION['range'])) {
		$_SESSION['range'] = 5;
	}

	function range1 ($val) {
		if ($val == 5) {
			$info = array('sit' => '-2%', 'text' => 'All');
		}
		if ($val == 4) {
			$info = array('sit' => '21%', 'text' => '720p');
		}
		if ($val == 3) {
			$info = array('sit' => '44%', 'text' => '1080p');
		}
		if ($val == 2) {
			$info = array('sit' => '65%', 'text' => '2K');
		}
		if ($val == 1) {
			$info = array('sit' => '90%', 'text' => '4K');
		}

		return $info;
	}
	$range = range1($_SESSION['range']);

	function range_count ($num) {
		global $conn_vn;
		$add = '';
		if (isset($_GET['search']) && $_GET['search'] != '-') {
			$q = $_GET['search'];
			$add .= " AND (link LIKE '%$q%')";
		}
		if (isset($_SESSION['cat'])) {
			$cat = $_SESSION['cat'];
			$add .= " AND video_cat_id = $cat";
		}
		if (isset($_SESSION['app'])) {
			$app = $_SESSION['app'];
			$add .= " AND video_app_id = $app";
		}
		if ($num != 5) {
			$num = 5 - $num;
			$add .= " AND `range` >= $num";
		}
		$sql = "SELECT count(id) as num FROM video WHERE 1=1 $add ";
		$result = mysqli_query($conn_vn, $sql);
		$row = mysqli_fetch_assoc($result);
		return $row['num'];
	}
?>
<style>
#reversedRange {
  direction: rtl;
}
.setyear {
	position: absolute;
	top: 26px;
	left: <?= $range['sit'] ?>;
	height: 1em;
	text-align: center;
	color: black;
	/*font-weight: bold;*/
	white-space: nowrap;
}
.range {
	position: relative;
	margin-top: 50px;
}
.range input {
	position: relative;
	z-index: 999;
}
.sort {
	margin-right: 20px;
	margin-left: auto;
	padding: 8px 30px;
	margin-bottom: 5px;
}
#tooltip-video {
	/*top: -24px;*/
}
._2pwIIdH6 {
    position: absolute;
    top: -42px;
    left: -20px;
    border: 1px solid #aeaeaf;
    border-radius: 8px;
    white-space: nowrap;
    padding: 3px 6px;
    font-size: 12px;
    font-weight: 500;
    line-height: 20px;
    min-width: 36px;
    height: 25px;
}
._2pwIIdH6:after {
    content: "";
    position: absolute;
    background: #fafafa;
    border: 1px solid #aeaeaf;
    border-left: 0;
    border-top: 0;
    transform: rotate(45deg);
    width: 8px;
    height: 8px;
    left: 9px;
    top: 20px;
}
.page-video .title-video {
	font-weight: inherit;
    font-style: inherit;
    font-family: -apple-system,BlinkMacSystemFont,Segoe UI,Fira Sans,Helvetica Neue,Arial,sans-serif;
    font-size: 12px;
    line-height: 14px;
    letter-spacing: 0;
    font-weight: 700;
    color: #959597;
    white-space: nowrap;
}
select.sort {
  background-image:
    linear-gradient(45deg, transparent 50%, gray 50%),
    linear-gradient(135deg, gray 50%, transparent 50%),
    linear-gradient(to right, #fff, #fff);
  background-position:
    calc(100% - 20px) calc(1em + -2px),
    calc(100% - 15px) calc(1em + -2px),
    calc(100% - 2.5em) 0.5em;
  background-size:
    5px 5px,
    5px 5px,
    1px 1.5em;
  background-repeat: no-repeat;
  -moz-appearance: none; 
	-webkit-appearance: none; 
	appearance: none;
}
	.page-video .video-item .video-name a {
		white-space: break-spaces !important;
	}
</style>
<link rel="stylesheet" type="text/css" href="/css/video.css">
<?php include DIR_HEADER."MS_HEADER_AROMACAR_0002_3.php"; ?>
<?php include DIR_SLIDESHOW."MS_SLIDESHOW_AROMACAR_0002.php";?>
<div class="_3f5mhRZQ">
	<div class="container _2Wpy4Uqn count-video">
		<div class="row">
			<div class="col-md-12">
				<p class="breadcrumb-video">Trang chủ / Video</p>
				<p><trong style="font-weight: bold;"><?= number_format($video['tong']) ?></trong> Videos</p>
			</div>
		</div>
	</div>
</div>
<div class="container _2Wpy4Uqn" style="margin-top: -18px;">
	<div class="row">
		<div class="col-xs-6">
			<button class="wC2U3Vk_ _1WE-5JN0" data-test-selector="filters-toggle" type="button" onclick="filter_toggle()">
				<div class="_1kJ4ahJA">
					<svg class="_2YAsIJAi _1ck_EJb-" tabindex="" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 25 25" role="img" aria-label="Show filters"><path d="M23.5 11.5h-10v-10c0-.6-.4-1-1-1s-1 .4-1 1v10h-10c-.6 0-1 .4-1 1s.4 1 1 1h10v10c0 .6.4 1 1 1s1-.4 1-1v-10h10c.6 0 1-.4 1-1s-.4-1-1-1z"></path><path d="M12.5 25c-.4 0-.8-.2-1.1-.4-.3-.3-.4-.7-.4-1.1V14H1.5C.7 14 0 13.3 0 12.5S.7 11 1.5 11H11V1.5c0-.8.7-1.5 1.5-1.5.9 0 1.5.7 1.5 1.5V11h9.5c.8 0 1.5.7 1.5 1.5s-.7 1.5-1.5 1.5H14v9.5c0 .8-.7 1.5-1.5 1.5zm-11-13c-.3 0-.5.2-.5.5s.2.5.5.5H12v10.5c0 .1.1.3.1.4.3.3.9.1.9-.4V13h10.5c.3 0 .5-.2.5-.5s-.2-.5-.5-.5H13V1.5c0-.3-.2-.5-.5-.5s-.5.2-.5.5V12H1.5z"></path></svg>
					<span class="_1MkfB3BW" id="state-filter">Ẩn bộ lọc</span>
				</div>
			</button>
		</div>
		<div class="col-xs-6" style="text-align: right;">
			<select class="sort" onchange="sort(this.value)">
					<option value="1" <?= $_SESSION['sort_video']==1 ? 'selected' : '' ?> >Phổ biến</option>
					<option value="2" <?= $_SESSION['sort_video']==2 ? 'selected' : '' ?> >Mới</option>
				</select>
		</div>
	</div>
</div>
<div class="container page-video _2Wpy4Uqn">
	
	<div class="row">
		<div class="col-md-2" id="video-filter">
			<div class="widget">
				<h3 class="title-video">Danh mục video</h3>
				<ul>
					<?php if (isset($_SESSION['cat'])) { ?>

					<?php foreach ($danh_muc as $item) { ?>
						<?php if ($_SESSION['cat']!=$item['id']) { ?>
							<div class="_3cpjle_F _3w4REOGs">
								<span class="_35npWEAH _2ZzxeY6m">
									<div class="_3O12wvWH"></div>
									<div class="_1ZGeLcbC"><?= $item['name'] ?> </div>
								</span>
								<div class="_2SNTtQOd"><span class="_38ffh_tZ">0</span></div>
							</div>
						<?php } else { ?>
							<div class="_3cpjle_F">
								<a class="_35npWEAH" onclick="stick_cat(<?= $item['id'] ?>)">
									<div class="_3O12wvWH" data-test-selector="elements-category-checkbox"><i class="fa fa-check"></i></div>
									<div class="_1ZGeLcbC"><?= $item['name'] ?> </div>
								</a>
								<div class="_2SNTtQOd"><span class="_38ffh_tZ"><?= number_format(count_cat($item['id'])['num']) ?></span></div>
							</div>
						<?php } ?>
					<?php } ?>

					<?php } else { ?>

					<?php foreach ($danh_muc as $item) { ?>
					<div class="_3cpjle_F">
						<a class="_35npWEAH" onclick="stick_cat(<?= $item['id'] ?>)">
							<div class="_3O12wvWH" data-test-selector="broadcast-packages-category-checkbox"></div>
							<div class="_1ZGeLcbC"><?= $item['name'] ?> </div>
						</a>
						<div class="_2SNTtQOd"><span class="_38ffh_tZ"><?= number_format(count_cat($item['id'])['num']) ?></span></div>
					</div>
					<?php } ?>

					<?php } ?>
				</ul>
				<hr style="width: 100%;">
				<h3 class="title-video">Ứng dụng video</h3>
				<ul>
					<?php if (isset($_SESSION['app'])) { ?>

					<?php foreach ($app as $item) { ?>
						<?php if ($_SESSION['app']!=$item['id']) { ?>
							<div class="_3cpjle_F _3w4REOGs">
								<span class="_35npWEAH _2ZzxeY6m">
									<div class="_3O12wvWH"></div>
									<div class="_1ZGeLcbC"><?= $item['name'] ?> </div>
								</span>
								<div class="_2SNTtQOd"><span class="_38ffh_tZ">0</span></div>
							</div>
						<?php } else { ?>
							<div class="_3cpjle_F">
								<a class="_35npWEAH" onclick="stick_app(<?= $item['id'] ?>)">
									<div class="_3O12wvWH" data-test-selector="elements-category-checkbox"><i class="fa fa-check"></i></div>
									<div class="_1ZGeLcbC"><?= $item['name'] ?> </div>
								</a>
								<div class="_2SNTtQOd"><span class="_38ffh_tZ"><?= number_format(count_app($item['id'])['num']) ?></span></div>
							</div>
						<?php } ?>
					<?php } ?>

					<?php } else { ?>

					<?php foreach ($app as $item) { ?>
					<div class="_3cpjle_F">
						<a class="_35npWEAH" onclick="stick_app(<?= $item['id'] ?>)">
							<div class="_3O12wvWH" data-test-selector="broadcast-packages-category-checkbox"></div>
							<div class="_1ZGeLcbC"><?= $item['name'] ?> </div>
						</a>
						<div class="_2SNTtQOd"><span class="_38ffh_tZ"><?= number_format(count_app($item['id'])['num']) ?></span></div>
					</div>
					<?php } ?>

					<?php } ?>
				</ul>
				<hr style="width: 100%;">
				<h3 class="title-video">Độ phân giải video</h3>
				<div class="resolution range">
                    <input type="range" min="1" max="5" value="<?= $_SESSION['range'] ?>" id="reversedRange" onchange="range(this.value)">
                    <span class="setyear _2pwIIdH6" id="tooltip-video" style="left: <?= $range['sit'] ?>"><?= $range['text'].' '.range_count($_SESSION['range']) ?></span>
                    <span style="position: absolute;top: 0;left: 25%;font-weight: bold;">|</span>
                    <span style="position: absolute;top: 0;left: 50%;font-weight: bold;">|</span>
                    <span style="position: absolute;top: 0;left: 73%;font-weight: bold;">|</span>
                    <span style="left: 0%;" class="setyear">All</span>
                    <span style="left: 90%;" class="setyear">4K</span>
				</div>
			</div>
		</div>
		<div class="col-md-10" id="show-items-video">
			<div class="row">
				
			</div>
			<div style="display: flex;flex-wrap: wrap;">
			<?php 
			foreach ($video['data'] as $item) { 
				$tab = $action->getDetail('video_tab', 'id', $item['video_tab_id']);
				$link_video = "/images/video/".$item['image'];
				if (!empty($item['link_video'])) {
					$link_video = $item['link_video'];
				}
			?>
			<div class="col-md-4 col-sm-6 col-xs-12">
				<div class="video-item" style="box-shadow: 0 1px 8px rgba(0,0,0,.1);">
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

<script>
	function stick_cat (id) {
		// alert(id);
		var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                // document.getElementById("demo").innerHTML = this.responseText;
                window.location.href = '/video-gallery/1/<?= $q ?>/'+this.responseText;
            }
        };
        xhttp.open("GET", "/functions/ajax1/stick_cat.php?id="+id, true);
        xhttp.send();
	}

	function stick_app (id) {
		// alert(id);
		var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                // document.getElementById("demo").innerHTML = this.responseText;
                window.location.href = '/video-gallery/1/<?= $q ?>/'+this.responseText;
            }
        };
        xhttp.open("GET", "/functions/ajax1/stick_app.php?id="+id, true);
        xhttp.send();
	}

	function range (val) {
		// alert(val);
		var tooltip = document.getElementById("tooltip-video");
		if (val == 5) {
			tooltip.innerHTML = "All <?= range_count(5) ?>";
			tooltip.style.left = "-2%";
		}
		if (val == 4) {
			tooltip.innerHTML = "720p <?= range_count(4) ?>";
			tooltip.style.left = "21%";
		}
		if (val == 3) {
			tooltip.innerHTML = "1080p <?= range_count(3) ?>";
			tooltip.style.left = "44%";
		}
		if (val == 2) {
			tooltip.innerHTML = "2K <?= range_count(2) ?>";
			tooltip.style.left = "65%";
		}
		if (val == 1) {
			tooltip.innerHTML = "4K <?= range_count(1) ?>";
			tooltip.style.left = "90%";
		}

		var xhttp = new XMLHttpRequest();
		  xhttp.onreadystatechange = function() {
		    if (this.readyState == 4 && this.status == 200) {
		     // document.getElementById("demo").innerHTML = this.responseText;
		     	window.location.href = '/video-gallery/1/<?= $q ?>/'+this.responseText;
		    }
		  };
		  xhttp.open("GET", "/functions/ajax1/range.php?val="+val, true);
		  xhttp.send();
	}

	function range1 (val) {
		// alert(val);
		var tooltip = document.getElementById("tooltip-video");
		if (val == 5) {
			tooltip.innerHTML = "All <?= range_count(5) ?>";
			tooltip.style.left = "-2%";
		}
		if (val == 4) {
			tooltip.innerHTML = "720p <?= range_count(4) ?>";
			tooltip.style.left = "21%";
		}
		if (val == 3) {
			tooltip.innerHTML = "1080p <?= range_count(3) ?>";
			tooltip.style.left = "44%";
		}
		if (val == 2) {
			tooltip.innerHTML = "2K <?= range_count(2) ?>";
			tooltip.style.left = "65%";
		}
		if (val == 1) {
			tooltip.innerHTML = "4K <?= range_count(1) ?>";
			tooltip.style.left = "90%";
		}

		var xhttp = new XMLHttpRequest();
		  xhttp.onreadystatechange = function() {
		    if (this.readyState == 4 && this.status == 200) {
		     // document.getElementById("demo").innerHTML = this.responseText;
		     	// window.location.reload();
		    }
		  };
		  xhttp.open("GET", "/functions/ajax1/range.php?val="+val, true);
		  xhttp.send();
	}

	function sort (val) {
		// alert(val);
		var xhttp = new XMLHttpRequest();
		  xhttp.onreadystatechange = function() {
		    if (this.readyState == 4 && this.status == 200) {
		     // document.getElementById("demo").innerHTML = this.responseText;
		     	window.location.reload();
		    }
		  };
		  xhttp.open("GET", "/functions/ajax1/sort_video.php?val="+val, true);
		  xhttp.send();
	}

	function filter_toggle () {
		var filter = document.getElementById("video-filter");
		var styleObj;
		var show = document.getElementById("show-items-video");
		var state = document.getElementById("state-filter");
		styleObj = window.getComputedStyle(filter, null);
		// alert(styleObj.display);

		if (styleObj.display == 'block') {
			document.getElementById("video-filter").style.display = 'none';
			show.classList.remove("col-md-10");
			show.classList.add("col-md-12");
			state.innerHTML = "Hiện bộ lọc";
		} else {
			document.getElementById("video-filter").style.display = 'block';
			show.classList.remove("col-md-12");
			show.classList.add("col-md-10");
			state.innerHTML = "Ẩn bộ lọc";
		}
	}

	var slider = document.getElementById("reversedRange");
	slider.oninput = function() {
	  // output.innerHTML = this.value;
	  // alert(this.value);
	  range1(this.value);
	}
</script>