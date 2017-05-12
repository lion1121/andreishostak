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
            <h4 class="about_me_title"><?php echo get_cat_name(3);?></h4>
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
                            <button  class="btn btn-default see_all_works"><a href="http://andrei/portfolio/">Посмотреть мои работы</a></button>
                        <?php endif; ?>
                    </div>


                <?php }
            }; ?>
            <?php wp_reset_postdata();; ?>
        </div>
    </div>
</section>
<section class="container no_pd ">
    <div class="row no_mg">
        <div class="col-xs-12 no_pd">
            <h4 class="text-center ">Портфолио</h4>
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
</section>



<?php get_footer() ?>

