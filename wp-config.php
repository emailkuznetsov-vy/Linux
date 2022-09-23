<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'wordpressuser' );

/** Database password */
define( 'DB_PASSWORD', 'Testpass1$' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         ',pv+K/KZihN[L&~Q8yL-Ks),A2Vu{rA$>iiZ.fw:Sl`DgLc, I:)b?*Dg{H3m<T ' );
define( 'SECURE_AUTH_KEY',  '9bkq4$tmA9[vA0,.wjfiy;]F%UaY/Cm*fnQ)?<gO}wnXjU-er2dBm;?f-?y uyK4' );
define( 'LOGGED_IN_KEY',    ']bz$2f{8o%Z1z=vpLCz(LYYa%vI@Hp4vKm|@K=$dv-?,:&T^M}0!1d4gy2|O5qAD' );
define( 'NONCE_KEY',        '|_aKNeG^X/xQ; p$h(?uu7IwJ)4L:=Z)lm;A?Mnb%#J!RhF:6u-G%qf^kR*z>^g]' );
define( 'AUTH_SALT',        'T(0*O-X5ubFu |p<_21vSz5TDx b?99;F:egxccdr&9n6w{-YGM[V; ?ihy/EmvR' );
define( 'SECURE_AUTH_SALT', 'wN4hQC0$GojI)^)=$I2!GczpbGaruDd-J@eM` ;xO{XBEq;jE>op_I$V*)/I(smP' );
define( 'LOGGED_IN_SALT',   '(5<wRIoL[V1!ts#Tf;WHg|H$}&q)g/F}/?,?576+z3^z_*(NcBNzE8/8[P4x.pOH' );
define( 'NONCE_SALT',       'oq!m,%:$]--%gNN+R{0MRY:lwvv3.Y2D*;h]-fY1M1V7xg7MrfznC|,{@eB>6`0[' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
