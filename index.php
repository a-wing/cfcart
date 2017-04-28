<?php
// Version
define('VERSION', '1.6.0.2');

// Configuration
if (is_file('config.php')) {
	require_once('config.php');
}

// Install
if (!defined('DIR_APPLICATION')) {
	header('Location: install/index.php');
	exit;
}

define('PAY_METHOD_CALLBACK', '');
date_default_timezone_set('PRC');

// Startup
require_once(DIR_SYSTEM . 'startup.php');

start('catalog');