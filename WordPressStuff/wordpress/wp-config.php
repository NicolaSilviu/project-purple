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
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

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
define( 'AUTH_KEY',         'VoVP5;nNaa;B3rXSMmz&?K9peYmYy cEx-t]N`I#|>gT+~VdHsmc_BkY6LPRS0}g' );
define( 'SECURE_AUTH_KEY',  'j5vg(|z[o/1{-2+~bk}ZIj=@cezNAz35hT/r9IyZ.?M`nbhYuoz$>_s%+@INel&^' );
define( 'LOGGED_IN_KEY',    '4CqZ{rZSMBPYc?t8xl1@~V4Qaxf%.{sW0H-}J=[)^G4X.!u#5rdt)%`]S^_H6_nS' );
define( 'NONCE_KEY',        'BCs{%]o*t`EW`hBjHY5WQzZdYc*FmOelwR/?s8pN%v3`9!t8mMoCjC[G~x-f=E0[' );
define( 'AUTH_SALT',        'kW!8pl3z<RG4y>=:ZQ>l 95cAgQdmFQ<;=J>VLf,_fi!wg<+%1&xSUFMyB|fN0W@' );
define( 'SECURE_AUTH_SALT', 'aH.pPvS$dh+oMI{T>pA9MaqSg*0OV7Gdfsd_oB,XTjuShG|6,|4bo0QP-xt#ykA&' );
define( 'LOGGED_IN_SALT',   '2[6!yiBxe!<XTeH;{G8~48^%$R>E[for|_Ka-+j{Y>pTNWIQgiqr3 wP;6nk,=KG' );
define( 'NONCE_SALT',       'B6C,4AOCdGd%ZVlJ)KGIYqDms!#Cq VD{hjrk{4cAJQ;F(){TF}IEN3WS-h*;i%t' );

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
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
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
