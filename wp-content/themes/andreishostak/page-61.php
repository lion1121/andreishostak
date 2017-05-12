<?php get_header(); ?>


<div class="container no_pd">
    <div class="row no_mg">
        <?php print_r($_GET); ?>
        <?php echo 'http://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];; ?>
    </div>
</div>
<div class="container">
    <div class="row no_mg">
        <?php
        $args = array(
            'cat' => '18'
        );

        $query = new WP_Query($args);
        if ($query->have_posts()) {
            while ($query->have_posts()) {
                $query->the_post();
                $images = get_attached_media('image', $post->ID);

                $gallery = get_post_gallery_images($post);
                foreach ($gallery as $img) { ?>
                    <div class="col-xs-3">
                        <img src="<?php echo $img ?>" alt="" class="img-responsive">
                    </div>
                <?php }
            }
        }

        ?>

        <?php wp_reset_postdata();; ?>

    </div>
</div>


<?php get_footer(); ?>
