<?php
if ($argc < 3) {
    echo "Usage: php crop_square.php <src_file> <dst_file> [target_size]\n";
    exit(1);
}

$src = $argv[1];
$dst = $argv[2];
$size = isset($argv[3]) ? intval($argv[3]) : 1000;

if (!file_exists($src)) {
    echo "Error: Source file does not exist: $src\n";
    exit(1);
}

$info = getimagesize($src);
if (!$info) {
    echo "Error: Cannot get image size from $src\n";
    exit(1);
}

$mime = $info['mime'];
switch ($mime) {
    case 'image/jpeg':
    case 'image/jpg':
        $img = imagecreatefromjpeg($src);
        break;
    case 'image/png':
        $img = imagecreatefrompng($src);
        break;
    case 'image/webp':
        $img = imagecreatefromwebp($src);
        break;
    default:
        echo "Error: Unsupported mime: $mime\n";
        exit(1);
}

if (!$img) {
    echo "Error: Failed to load image $src\n";
    exit(1);
}

$w = imagesx($img);
$h = imagesy($img);
$min = min($w, $h);
$x = intval(($w - $min) / 2);
$y = intval(($h - $min) / 2);

$thumb = imagecreatetruecolor($size, $size);

// Fill with white background in case of transparent png
$white = imagecolorallocate($thumb, 255, 255, 255);
imagefill($thumb, 0, 0, $white);

imagecopyresampled($thumb, $img, 0, 0, $x, $y, $size, $size, $min, $min);

$dstDir = dirname($dst);
if (!is_dir($dstDir)) {
    mkdir($dstDir, 0777, true);
}

imagejpeg($thumb, $dst, 92);
imagedestroy($img);
imagedestroy($thumb);

echo "Successfully wrote $dst ($size x $size)\n";
