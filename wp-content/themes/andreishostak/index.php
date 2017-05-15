<?php get_header(); ?>

<section class="container-fluid no_pd main_slider">
    <div class="slider ">

        <?php
        $args = array(
            'cat' => '2'
        );

        $query = new WP_Query($args);
        if ($query->have_posts()) {
            while ($query->have_posts()) {
                $query->the_post();

                $gallery = get_post_gallery_images($post);
                foreach ($gallery as $img) { ?>
                    <div class="slider-img-wrapper">
                        <div class="name_occupation_box">
                            <h3>
                                Andrey Shostak
                            </h3>
                            <p>
                                <i class="fa fa-circle" aria-hidden="true"></i>
                            </p>
                            <h4>Photography</h4>
                        </div>
                        <img src="<?php echo $img ?>" alt="" class="img-responsive">
                        <div class="slider_left_triangle"></div>
                        <div class="camera_box"><i class="fa fa-camera-retro"></i></div>
                        <div class="slider_right_triangle"></div>
                    </div>

                <?php }
            }
        }

        ?>

        <?php wp_reset_postdata();; ?>

    </div>
</section>
<section class="container no_pd">
    <div class="row no_mg">
        <?php
        $args = array_reverse(array(
            'cat' => '8'
        ));

        $query = new WP_Query($args);
        if ($query->have_posts()) {
            while ($query->have_posts()) {
                $query->the_post(); ?>
                <div class="col-xs-12 col-sm-3  services_list">
                    <div><?php echo get_the_post_thumbnail(); ?></div>
                    <h4 class="services_name"><?php echo get_the_title(); ?></h4>
                    <div class="service_description"><?php echo get_the_content(); ?></div>
                </div>
            <?php }
        }; ?>
        <?php wp_reset_postdata();; ?>

    </div>
</section>
<section class="container no_pd">
    <div class="row no_mg">
        <div class="col-xs-12 no_pd">

            <h4 class="main_title"><?php echo get_cat_name(3); ?></h4>
            <?php
            $args = array_reverse(array(
                'cat' => '3'
            ));

            $query = new WP_Query($args);
            if ($query->have_posts()) {
                while ($query->have_posts()) {
                    $query->the_post(); ?>

                    <div class="col-xs-12 col-sm-6 my_image_box">
                        <?php if (has_post_thumbnail()):; ?>
                            <?php echo get_the_post_thumbnail(); ?>
                        <?php endif; ?>
                    </div>
                    <div class="col-xs-12 col-sm-6">
                        <?php if (!has_post_thumbnail()):; ?>
                            <div class="about_me_text"><?php echo get_the_content(); ?></div>
                            <button class="btn btn-default see_all_works"><a href="http://andrei/portfolio/">Посмотреть
                                    мои работы</a></button>
                        <?php endif; ?>
                    </div>


                <?php }
            }; ?>
            <?php wp_reset_postdata();; ?>
        </div>
    </div>
</section>
<section class="container_fluid no_pd ">
    <div class="row no_mg">
        <div class="col-xs-12 last_img_gallary_box no_pd">
            <h4 class="text-center portfolio_title">Портфолио</h4>
            <p class="text-center portfolio_description">Здесь предоставлены некоторые из моих работ, подробнее смотрите
                в категориях.</p>
            <i class="fa fa-circle"></i>
            <div class="center-block clearfix portfolio_menu_wrapper">
                <?php wp_nav_menu(

                    array(
                        'container' => '',
                        'menu_class' => 'portfolio_menu',
                        'theme_location' => 'portfolio',

                    )

                ); ?>
            </div>
        </div>
    </div>
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
            'cat' => '24'
        );

        $query = new WP_Query($args);
        if ($query->have_posts()) {
        while ($query->have_posts()) {
        $query->the_post();
        $gallery = get_post_gallery_images($post); ?>
        <div id="links">

            <?php foreach ($gallery as $img) { ?>
                <div class="last_img_gallary_wrapper">
                    <a class="" href="<?php echo $img ?>">
                        <img src="<?php echo $img ?>" alt="" class="img-responsive ">
                    </a>
                    <div class="img_overlay">
                        <span><i class="fa fa-eye" aria-hidden="true"></i></span>
                    </div>
                </div>
            <?php }
            }

            } ?>
        </div>


        <?php wp_reset_postdata();; ?>


    </div>

</section>
<section class="container no_pd price_list_box">
    <div class="row">
        <h4 class="portfolio_title text-center">ЦЕНЫ НА УСЛУГИ</h4>
        <p class="portfolio_description text-center">Может меняться в зависимости от сезона, актуальные цены и цены на
            рекламную съемку уточняйте по телефону.</p>
        <i class="fa fa-circle price_dot"></i>

    </div>
    <div class="row no_mg">

        <?php

        $args = array(
            'cat' => '25',
            'orderby' => 'ID',
            'order' => 'ASC'
        );

        $query = new WP_Query($args);
        if ($query->have_posts()) {
            while ($query->have_posts()) {
                $query->the_post();
                if (get_post_meta($post->ID, '', true)) {

                    $value = get_post_meta($post->ID, '', true); ?>

                    <div class="col-xs-12 col-sm-4">
                        <div class="price_wrapper">
                            <div class="price_name_box">
                                <h5 class="price_title"><?php echo get_the_title();; ?></h5>
                            </div>
                            <div class="price_outter_circle">

                            </div>
                            <div class="price_inner_circle">
                                <span><?php echo $value['price'][0];?></span>
                            </div>
                            <div class="price_description_box">
                                <p class="price_description_text"><?php echo get_the_content(); ?></p>
                            </div>
                        </div>
                    </div>

                <?php }
            }
        }; ?>
        <?php wp_reset_postdata();; ?>


    </div>
</section>
<section class="container-fluid cooperations">
    <div class="container no_pd ">
        <div class="row">
            <h4 class="portfolio_title text-center">Сотрудничество с компаниями</h4>

            <i class="fa fa-circle price_dot"></i>

        </div>
        <div class="row no_mg">
            <?php


            $args = array(
                'cat' => '26'
            );

            $query = new WP_Query($args);
            if ($query->have_posts()) {
            while ($query->have_posts()) {
            $query->the_post();
            $gallery = get_post_gallery_images($post); ?>

                <?php foreach ($gallery as $img) { ?>

                    <div class="last_img_gallary_wrapper">
                        <span><?php echo get_post($post)->post_title;?></span>
                        <a class="" href="#">
                            <img src="<?php echo $img ?>" alt="" class="img-responsive ">
                        </a>
                    </div>
                <?php }
                }

                } ?>


            <?php wp_reset_postdata();; ?>
        </div>
    </div>
</section>
<?php get_footer() ?>

