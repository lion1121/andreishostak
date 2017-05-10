<?php
require get_template_directory() . '/inc/function-menu.php';
require get_template_directory() . '/inc/function-walker.php';
/*
====================================================
Include scripts
====================================================
*/
function andreishostak_script_enqueue()
{
    wp_enqueue_style('font-awesome', get_template_directory_uri() . '/font-awesome-4.7.0/css/font-awesome.css', array(), '4.7.0', 'all');
    wp_enqueue_style('bootstrap', get_template_directory_uri() . '/styles/bootstrap.css', array(), '1.0.0', 'all');
    wp_enqueue_style('slick', get_template_directory_uri() . '/slick-1.6.0/slick/slick.css', array(), '1.6.0', 'all');
    wp_enqueue_style('slick_theme', get_template_directory_uri() . '/slick-1.6.0/slick/slick-theme.css', array(), '1.6.0', 'all');
    wp_enqueue_style('custom_style', get_template_directory_uri() . '/styles/main.css', array(), '1.0.0', 'all');
    wp_enqueue_script('slick_js', get_template_directory_uri() . '/slick-1.6.0/slick/slick.js', array('jquery'), '1.0.0', true);
    wp_enqueue_script('custom_js', get_template_directory_uri() . '/js/main.js', array('jquery'), '1.0.0', true);

}

add_action('wp_enqueue_scripts', 'andreishostak_script_enqueue');
/*
====================================================
Activate CDN Jquery
====================================================
*/
function shapeSpace_include_custom_jquery()
{

    wp_deregister_script('jquery');
    wp_enqueue_script('jquery', 'https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js', array(), null, true);

}

add_action('wp_enqueue_scripts', 'shapeSpace_include_custom_jquery');
/*
	 ====================================================
		Activate Google Fonts
	 ====================================================
 */
function load_fonts() {
    wp_register_style('et-googleFonts', 'https://fonts.googleapis.com/css?family=Roboto');
    wp_enqueue_style( 'et-googleFonts');
    wp_register_style('et-googleFonts', 'https://fonts.googleapis.com/css?family=Open+Sans&amp;subset=cyrillic');
    wp_enqueue_style( 'et1-googleFonts');
}
add_action('wp_print_styles', 'load_fonts');
/*
====================================================
Activate custom background
====================================================
 */
add_theme_support('custom-background');

/*
	 ====================================================
		Activate post thumbnails
	 ====================================================
 */
add_theme_support('post-thumbnails');
/*
	 ====================================================
		Activate ability to change logo
	 ====================================================
 */
add_theme_support( 'custom-logo' );

/*
	 ====================================================
		Activate search form
	 ====================================================
 */
add_theme_support('html5', array('search-form'));
/*
	 ====================================================
		Activate post formats
	 ====================================================
 */

add_theme_support('post-formats', array('aside', 'image', 'video'));

/*
	 ====================================================
		Activate redirect to portfolio page from portfolion menu
	 ====================================================
 */
define('BASE', 'http://andrei/');
function openPortfolio() {

    $args = array('child_of' => 5);
    $categories = get_categories( $args );
    foreach($categories as $category) {
        $portfolioSubCategories[] = $category->category_nicename;

    }
    session_start();
    $url = preg_match('/category\/portfolio/',$_SERVER['REQUEST_URI']);
    if($url == 1 AND preg_match('/reklama/',$_SERVER['REQUEST_URI']) == 1 ) {
        $_SESSION["sub_cat_name"] = 'reklama';
        header("Location:" . 'http://' . $_SERVER['HTTP_HOST'] . '/portfolio/');
        exit();
    }
    if($url == 1 AND preg_match('/reportazhi/',$_SERVER['REQUEST_URI']) == 1 ) {
        $_SESSION["sub_cat_name"] = 'reportazhi';
        header("Location:" . 'http://' . $_SERVER['HTTP_HOST'] . '/portfolio/');
        exit();
    }
    if($url == 1 AND preg_match('/svadba/',$_SERVER['REQUEST_URI']) == 1 ) {
        $_SESSION["sub_cat_name"] = 'svadba';
        header("Location:" . 'http://' . $_SERVER['HTTP_HOST'] . '/portfolio/');
        exit();
    }
    if($url == 1 AND preg_match('/semejnye/',$_SERVER['REQUEST_URI']) == 1 ) {
        $_SESSION["sub_cat_name"] = 'semejnye';
        header("Location:" . 'http://' . $_SERVER['HTTP_HOST'] . '/portfolio/');
        exit();
    }
    if($url == 1 AND preg_match('/studiya/',$_SERVER['REQUEST_URI']) == 1 ) {
        $_SESSION["sub_cat_name"] = 'studiya';
        header("Location:" . 'http://' . $_SERVER['HTTP_HOST'] . '/portfolio/');
        exit();
    }
    if($url == 1 AND preg_match('/fotosessii/',$_SERVER['REQUEST_URI']) == 1 ) {
        $_SESSION["sub_cat_name"] = 'fotosessii';
        header("Location:" . 'http://' . $_SERVER['HTTP_HOST'] . '/portfolio/');
        exit();
    }
}
openPortfolio();


