<?php
session_start();

include('../config/config.php');
include('../lib/app.lib.php');

userIsConnected();

$vue='home';
$title = 'Admin - Alvian';

include('tpl/layout.phtml');