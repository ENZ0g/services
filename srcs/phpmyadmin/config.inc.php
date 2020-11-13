<?php

declare(strict_types=1);

$cfg['blowfish_secret'] = ')(oIkjHY^%43@#$#@!1qaswEDFtr$%gb';

$i = 0;

$i++;

$cfg['Servers'][$i]['auth_type'] = 'cookie';
$cfg['Servers'][$i]['host'] = getenv('WP_DB_HOST');
$cfg['Servers'][$i]['compress'] = false;
$cfg['Servers'][$i]['AllowNoPassword'] = false;
$cfg['Servers'][$i]['AllowRoot'] = false;

$cfg['UploadDir'] = '';
$cfg['SaveDir'] = '';