<?php
//namespace App\Config;
require_once "ConfigLocal.php";
define('DIR_ROOT', dirname(dirname(__DIR__)).'/');
define('TEMPLATES_URL', DIR_ROOT.'includes/templates');
define('FUNCIONES_URL', DIR_ROOT.'funciones/funciones.php');
define('LIMITE_ANUNCIOS_INDEX', 3);
define('TRUNCATE_LIMIT', 80);

if(!isset($_SESSION)) {
    session_start();
}
ini_set('display_errors', 1);

ini_set('display_startup_errors', 1);

error_reporting(E_ALL);

class Config {
	const CONSTANTE_PRUEBA = 'Prueba de constante en clase';
	/**
	 * Carpeta de imágenes para PHP
	 */
	const CARPETA_IMAGENES = DIR_ROOT."/public/build/imagenes/";
	/**
	 * Carpeta de imágenes para la vista
	 */
	const CARPETA_IMAGENES_VIEW = '/build/imagenes/';
	/**
	 * Precio mínimo de una vivienda
	 */
	const MIN_PRICE_VALUE = 0;
	/**
	 * Precio máximo de una vivienda
	 */
	const MAX_PRICE_VALUE = 99999999.99;
	/**
	 * Host de la base de datos
	 */
	const DB_HOST = ConfigLocal::DB_HOST;
	/**
	 * Usuario de la base de datos
	 */
	const DB_USER = ConfigLocal::DB_USER;
	/**
	 * Password del usuario de la base de datos
	 */
	const DB_PASSWORD = ConfigLocal::DB_PASSWORD;
	/**
	 * Nombre de la base de datos
	 */
	const DB_NAME = ConfigLocal::DB_NAME;
	/**
	 * URL del Portfolio
	 */
	const PORTFOLIO = ConfigLocal::PORTFOLIO;
}