<?php
define('WP_CACHE', true);
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'u982728152_9TuHZ' );

/** MySQL database username */
define( 'DB_USER', 'u982728152_ImKmA' );

/** MySQL database password */
define( 'DB_PASSWORD', 'EcjPiy9RW6' );

/** MySQL hostname */
define( 'DB_HOST', 'mysql' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          'EK eu,E_p=0unL3a@lnN!8K,NKSuFf/%}63nJj_t%Y^k*r!sNYKfH:SL:JIF#v$o' );
define( 'SECURE_AUTH_KEY',   'ON6[Sb`4Ubg&>:jb`q]5[[PZs(f$:-$w[#N*nS1f!1zlb|p4QBCjw,z$(TW zP|p' );
define( 'LOGGED_IN_KEY',     'wZ#mgI @%dqh9ic.e%lh*a?EcAWLg+FiZal}b%Lr%*OMpc6XpJSv-a!~(qO}Q4>s' );
define( 'NONCE_KEY',         '7NB5tFY(ApO]7rc)+J6vF2Zo(H&3 b?>_wBfN?>hJF.L5M<*ufSpNU?7D{Y:0-06' );
define( 'AUTH_SALT',         '2Y`E/?OI24z}k?9]0q&f)ikRUAklXe yX{M1e1b#e1/T*vgu9`Ur:(M@cc&xbjHp' );
define( 'SECURE_AUTH_SALT',  'x+zDd$rh^Q+Q-]X)K,BZtNZ*;5=uBD,}c6lBc=9>bemyysTqV*T5XAqo=)tvQ*|J' );
define( 'LOGGED_IN_SALT',    'IRDs8.7viyXsZNFkzVjk^_*W]bL5NSS{2_Hp/~|B{OR<l9d#8#K6N-wT6frX=9by' );
define( 'NONCE_SALT',        'XvRE<tesAGKET/C[-r3.Jn:KngE>z54-pDl6~{/4AK`ksr|& :(N>]N6eay;Lv!7' );
define( 'WP_CACHE_KEY_SALT', 'al;I|Rm*}+3LT0 O4V($(|-I=f%#]?..NyQT.R%MHf7A`^!/h~4t $G*vi!y ?!M' );

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
