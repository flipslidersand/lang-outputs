<?php
preg_match_all('/[a-z]+/', strtolower(stream_get_contents(STDIN)), $m);
$counts = array_count_values($m[0]);
uksort($counts, fn($a, $b) => $counts[$b] <=> $counts[$a] ?: strcmp($a, $b));
foreach (array_slice($counts, 0, 3, true) as $w => $n) {
    echo "$w $n\n";
}
