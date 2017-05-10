<?php get_header(); ?>

<div class="container-fluid no_pd main_slider">
    <div class="slider ">

        <?php
        $args = array(
            'cat' => '2'
        );

        $query = new WP_Query($args);
        if ($query->have_posts()) {
            while ($query->have_posts()) {
                $query->the_post();
                $images = get_attached_media('image', $post->ID);
                foreach ($images as $image) { ?>
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
                        <img src="<?php echo wp_get_attachment_image_src($image->ID, 'full')[0]; ?>" alt="">
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
</div>
<div class="container no_pd">
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
</div>
<div class="container no_pd">
    <div class="row no_mg">
        <div class="col-xs-12 no_pd">
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
                            <h4 class="about_me_title"><?php echo get_the_title(); ?></h4>
                            <div class="about_me_text"><?php echo get_the_content(); ?></div>
                            <button  class="btn btn-default see_all_works"><a href="#">Посмотреть мои работы</a></button>
                        <?php endif; ?>
                    </div>


                <?php }
            }; ?>
            <?php wp_reset_postdata();; ?>
        </div>
    </div>
</div>
<div class="container no_pd">
    <div class="row no_mg">
        <div class="col-xs-12 no_pd">
        <?php wp_nav_menu(

            array(
                'container' => '',
                'menu_class' => 'menu',
                'theme_location' => 'portfolio',

            )

        ); ?>
        </div>
    </div>
</div>
<?php

$args = array('child_of' => 5);
$categories = get_categories( $args );
foreach($categories as $category) {
    $portfolioSubCategories[] = $category->category_nicename;

}
echo '<pre>';
print_r($portfolioSubCategories);
echo '</pre>';

;?>
<?php

echo '<pre>';
echo 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];
echo '</pre>';

;?>


<?php get_footer() ?>

