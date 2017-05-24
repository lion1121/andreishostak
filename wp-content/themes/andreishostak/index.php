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
        <div class="col-xs-12 no_pd" id="menu-item-299Section">

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
        <div class="col-xs-12 last_img_gallary_box no_pd" id="menu-item-300Section">
            <h4 class="text-center portfolio_title">Портфолио</h4>
            <p class="text-center portfolio_description">Здесь предоставлены некоторые из моих работ, подробнее смотрите
                в категориях.</p>
            <i class="fa fa-circle"></i>
            <div class="center-block clearfix portfolio_menu_wrapper">
                <?php wp_nav_menu(

                    array(
                        'container' => '',
                        'menu_class' => 'portfolio_menu nav nav-menu',
                        'theme_location' => 'portfolio',
                        'walker' => new Walker_Nav_Primary(),
                    )

                ); ?>
            </div>
        </div>
    </div>
    <div class="row no_mg">
        <div class="tab-content">
            <div id="blueimp-gallery" class="blueimp-gallery">
                <div class="slides"></div>
                <h3 class="title"></h3>
                <a class="prev">‹</a>
                <a class="next">›</a>
                <a class="close">×</a>
                <a class="play-pause"></a>
                <ol class="indicator"></ol>
            </div>
            <div id="links" class="links">
            <?php

            $args = array(
                'cat' => '27,20,22,19,21,23',
                'numberposts' => -1
            );
            $posts = get_posts($args);

            foreach ($posts as $post) {
                setup_postdata($post); ?>
                <div class="tab-pane fade" id="<?php the_ID()?>">

                    <?php $imgUrl = get_post_gallery_images($post); ?>
                    <?php foreach ($imgUrl as $img): ; ?>

                    <div class="last_img_gallary_wrapper">-->
                        <a class="" href="<?php echo $img ?>">
                            <img src="<?php echo $img ?>" alt="" class="img-responsive ">
                        </a>
                        <div class="img_overlay">
                            <span><i class="fa fa-eye" aria-hidden="true"></i></span>
                        </div>
                    </div>
                    <?php endforeach;?>
                </div>

            <?php };?>
            </div>
        </div>
        <?php wp_reset_postdata();; ?>
    </div>
</section>
<section class="container no_pd price_list_box" id="menu-item-301Section">
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
                                <span><?php echo $value['price'][0]; ?></span>
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
    <div class="container no_pd " id="menu-item-302Section">
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
                    $gallery = get_post_gallery_images($post);
                    $posts = get_post($post->ID);
                    $imageId = $posts->post_content;
                    preg_match_all('/[0-9]{3}/', $imageId, $imageArrayId);
                    foreach ($imageArrayId[0] as $imgcaprion) { ?>
                        <div class="partner_box_img ">
                            <a href="<?php echo wp_get_attachment_caption($imgcaprion); ?>" target="_blank">
                                <img class="img-responsive"
                                     src="<?php echo wp_get_attachment_image_src($imgcaprion)[0]; ?>" alt="">
                            </a>
                        </div>
                    <?php }
                }
            }

            ?>

            <?php wp_reset_postdata();; ?>
        </div>
    </div>
    <div class="container contacts_box" id="menu-item-303Section">
        <div class="row">
            <h4 class="text-center portfolio_title ">contacts</h4>
            <i class="fa fa-circle contacit_dot"></i>

        </div>
        <div class="row no_mg">
            <div class="col-xs-12 col-sm-6 adress_info">
                <div class="widget_wrapper">
                    <?php dynamic_sidebar('sidebar-1') ?>
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 contact_form_box">
                <form role="form" id="contactForm" method="post">

                    <div class="form-group col-sm-12">
                        <label for="name" class="h4">Ваше имя</label>
                        <input type="text" name="name" class="form-control" id="name" placeholder="Введите Ваше имя" required>
                    </div>
                    <div class="form-group col-sm-12">
                        <label for="email" class="h4">Email</label>
                        <input type="email" name="email" class="form-control" id="email" placeholder="Введите Ваш email"
                               required>
                    </div>
                    <div class="form-group col-xs-12">
                        <label for="message" class="h4 ">Сообщение</label>
                        <textarea id="message" name="message" class="form-control" rows="5"
                                  placeholder="Напишите Ваше сообщение" required></textarea>
                    </div>
                    <button type="submit" id="form-submit" class="btn btn-success btn-lg pull-right ">Отправить</button>
                    <div id="msgSubmit" class="h3 text-center hidden">Сообщение отправлено, я с Вами свяжусь!</div>
                </form>

            </div>


        </div>
    </div>
</section>

<?php get_footer() ?>

