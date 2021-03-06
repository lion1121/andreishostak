<?php get_header(); ?>


<section class="container text-center no_pd portfolio_wrapper">
    <div class="row no_mg">
        <div id="blueimp-gallery" class="blueimp-gallery">
            <div class="slides"></div>
            <h3 class="title"></h3>
            <a class="prev">‹</a>
            <a class="next">›</a>
            <a class="close">×</a>
            <a class="play-pause"></a>
            <ol class="indicator"></ol>
        </div>




            <?php


            $args = array(
                'cat' => '23,21,19,22,20,18'
            );

            $query = new WP_Query($args);
            if ($query->have_posts()) {
            while ($query->have_posts()) {
            $query->the_post(); ?>

            <h3 class="text-left portfolio_page_title"><?php echo get_the_title() ?></h3>
            <p class="text-left portfolio_cat_description"><?php echo category_description($_SESSION['sub_cat_id']); ?></p>
            <div id="links">
                <?php $gallery = get_post_gallery_images($post);
                foreach ($gallery as $img) { ?>
                    <div class="gallary_img_wrapper">
                        <a class="" href="<?php echo $img ?>">
                            <img src="<?php echo $img ?>" alt="" class="img-responsive img-rounded">
                        </a>
                        <div class="img_overlay">
                            <span><i class="fa fa-eye" aria-hidden="true"></i></span>
                        </div>
                    </div>
                <?php }
                }

                } ?>
                <?php wp_reset_postdata();; ?>
        </div>
</section>


<?php get_footer() ?>
