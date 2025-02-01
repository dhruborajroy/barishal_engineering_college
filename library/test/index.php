<?php
$devices = array();

if (stripos(PHP_OS, 'WIN') !== false) {
    $arp = shell_exec("arp -a");
} else {
    $arp = shell_exec("arp -n");
}

if ($arp) {
    if (preg_match_all('/(\d+\.\d+\.\d+\.\d+)\s+([a-fA-F0-9:-]+)/', $arp, $matches, PREG_SET_ORDER)) {
        foreach ($matches as $match) {
            $devices[] = ['ip' => $match[1], 'mac' => $match[2]];
        }
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ARP Table</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.6.0/css/bootstrap.min.css">
</head>
<body>
<div class="container" style="margin-top:50px;">
    <h3 class="text-center">Connected Devices</h3>
    <table class="table table-striped table-bordered">
        <thead class="thead-dark">
            <tr>
                <th>IP Address</th>
                <th>MAC Address</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($devices as $device): ?>
                <tr>
                    <td><?php echo htmlspecialchars($device['ip']); ?></td>
                    <td><?php echo htmlspecialchars($device['mac']); ?></td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>
</body>
</html>
