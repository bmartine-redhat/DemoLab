<?php

  // example: http://<IP_server/add_ip.php?ip=192.168.1.2

  file_put_contents('/tmp/inventory.txt', $_GET["ip"]."\n", FILE_APPEND);
  echo "OK";
?>
