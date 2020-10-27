<?php


// HTTP
define('HTTP_SERVER', 'http://localhost/snapshoppy/');

// HTTPS
define('HTTPS_SERVER', 'https://localhost/snapshoppy/');

// DIR
define('DIR_APPLICATION', '/opt/lampp/htdocs/snapshoppy/catalog/');
define('DIR_SYSTEM', '/opt/lampp/htdocs/snapshoppy/system/');
define('DIR_IMAGE', '/opt/lampp/htdocs/snapshoppy/image/');
define('DIR_STORAGE', '/opt/lampp/htdocs/snapshoppy/storage/');

// define('DIR_APPLICATION', '/home/websiteseoworks/public_html/test/test/catalog/');
// define('DIR_SYSTEM', '/home/websiteseoworks/public_html/test/test/system/');
// define('DIR_IMAGE', '/home/websiteseoworks/public_html/test/test/image/');
// define('DIR_STORAGE', '/home/websiteseoworks/public_html/test/test/storage/');
define('DIR_LANGUAGE', DIR_APPLICATION . 'language/');
define('DIR_TEMPLATE', DIR_APPLICATION . 'view/theme/');
define('DIR_CONFIG', DIR_SYSTEM . 'config/');
define('DIR_CACHE', DIR_STORAGE . 'cache/');
define('DIR_DOWNLOAD', DIR_STORAGE . 'download/');
define('DIR_LOGS', DIR_STORAGE . 'logs/');
define('DIR_MODIFICATION', DIR_STORAGE . 'modification/');
define('DIR_SESSION', DIR_STORAGE . 'session/');
define('DIR_UPLOAD', DIR_STORAGE . 'upload/');

// DB
define('DB_DRIVER', 'mysqli');
define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_DATABASE', 'snapp');
define('DB_PORT', '3306');
define('DB_PREFIX', 'oc_');