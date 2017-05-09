<?php get_header();?>


<div class="container no_pd">
    <div class="row no_mg">
        <?php print_r($_GET);?>
        <?php echo 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];;?>
    </div>
</div>


<?php get_footer();?>
