<!doctype html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Photographer Andrei Shostak</title>
    <?php wp_head(); ?>
</head>
<body>
<header class="main_menu_wrapper">
    <div class="container no_pd">
        <div class="col-xs-3 no_pd logo_box">
            <?php $logo = get_custom_logo();?>
            <?php if($logo):?>
                <?php echo get_custom_logo(0);?>
            <?php else:?>
                <a href="http://andrei/"><img src="<?php echo get_template_directory_uri(); ?>/img/default_logo.png" alt=""></a>
            <?php endif;?>
        </div>
        <nav class="col-xs-9 no_pd">
            <?php wp_nav_menu(

                array(
                    'container' => '',
                    'menu_class' => 'menu',
                    'theme_location' => 'primary',
                    'walker' => new Walker_Nav_Primary(),
                )

            ); ?>
        </nav>
    </div>
</header>