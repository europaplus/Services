<?php

$cfg['blowfish_secret'] = ''; /* YOU MUST FILL IN THIS FOR COOKIE AUTH! */

$i = 0;

$i++;
$cfg['Servers'][$i]['auth_type'] = 'cookie';
$cfg['Servers'][$i]['compress'] = false;
$cfg['Servers'][$i]['AllowNoPassword'] = true;

$cfg['Servers'][$i]['port'] = '3306';
$cfg['Servers'][$i]['host'] = 'wordpress-mysql';
$cfg['Servers'][$i]['user'] = 'new';
$cfg['Servers'][$i]['password'] = '';

$cfg['UploadDir'] = '';
$cfg['SaveDir'] = '';
$cfg['TempDir'] = '/tmp';
