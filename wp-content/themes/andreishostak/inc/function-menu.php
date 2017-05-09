<?php

/*
	 ====================================================
		Activate main top menu
	 ====================================================
 */

function andreishostak_theme_setup() {

    add_theme_support('menus');

    register_nav_menu('primary','Primary header navigation');

}
add_action('init','andreishostak_theme_setup');

/*
	 ====================================================
		Activate portfolio menu
	 ====================================================
 */

function andreishostak_theme_portfolio_setup() {

    add_theme_support('menus');

    register_nav_menu('portfolio','Primary portfolio navigation');

}
add_action('init','andreishostak_theme_portfolio_setup');

