<?php 
    if (isset($_POST['query'])) {
        $q1 = $_POST['query'];
        $q1 = vi_en($q1);
        $q1 = str_replace(" ", "-", $q1);
        $cat1 = 0;
        if (isset($_SESSION['cat'])) {
            $cat1 = $_SESSION['cat'];
        }
        $app1 = 0;
        if (isset($_SESSION['app'])) {
            $app1 = $_SESSION['app'];
        }
        $range1 = 0;
        if (isset($_SESSION['range'])) {
            $range1 = 5 - $_SESSION['range'];
        }
        
        if (empty($q1)) {
            header("location: /video-gallery/1/-/$cat1-$app1-$range1");
        } else {
            header("location: /video-gallery/1/$q1/$cat1-$app1-$range1");
        }
    }
?>
<div id="header" class="notransition">

    <div class="container-fluid">
        <div class="row mg-none">
            <a class="logo inline-block clearfix" href="/">
                <img src="/images/<?= $rowConfig['web_logo'];?>" alt="" class="img-responsive">
            </a>

            <form id="search" class="search search-filter col pd-none-i mg-left-lv2-i" action="" method="post"
                novalidate="" style="margin-right: 10%;" onsubmit="video_search()">
                
                <div class="group overflow-visible mg-none" style="position: relative;">
                    
                    <input type="text" id="search-value-video" name="query" placeholder="Search all resources" value=""
                        autocomplete="off" min="2" required="">
                    <div id="" class="autocomplete" style="top: 100%; left: 0px;"></div>

                    <button class="button button--white button--icon" type="button" onclick="video_search()">
                        <i class="fa fa-search"></i>
                    </button>
                </div>
            </form>
            
            
        </div>
    </div>
</div>

<script>
    function video_search () {
        var text = document.getElementById("search-value-video").value;
        // alert(text);
        var xhttp = new XMLHttpRequest();
          xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
             // document.getElementById("demo").innerHTML = this.responseText;
                window.location.href = this.responseText;
            }
          };
          xhttp.open("GET", "/functions/ajax1/video_search.php?q="+text, true);
          xhttp.send();
    }
</script>