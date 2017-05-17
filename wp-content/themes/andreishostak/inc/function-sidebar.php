<?php
/*
====================================================
Sidebar function
====================================================
*/
function respectplus_widget_setup() {
    register_sidebar(array(
        'name' => 'Sidebar',
        'id' => 'sidebar-1',
        'class' => 'custom',
        'description' => 'Contacts info',
        'before_widget' => '<div id="%1$s" class="adress_info_widget widget %2$s">',
        'after_widget' => '</div>',
        'before_title' => '<span class="widget-title">',
        'after_title' => '</span>',
    ));
}
/*
	 ====================================================
		Activate sidebar
	 ====================================================
 */
add_action('widgets_init','respectplus_widget_setup');