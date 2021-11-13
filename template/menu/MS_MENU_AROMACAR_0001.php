<nav class="gb-main-menu" >

    <div class="container">

        <nav class="main-navigation uni-menu-text">

            <div class="cssmenu">

                <?php 
   $list_menu = $menu->getListMainMenu_byOrderASC();

   $menu->showMenu_byMultiLevel_mainMenuNoiThat($list_menu,0,$lang,0);

                ?>

            </div>

        </nav>

    </div>

</nav>