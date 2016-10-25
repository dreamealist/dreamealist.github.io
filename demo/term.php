<?php
header('Content-type:application/json');

$term = array(
	'Femur' => array(
		'definition' => 'Lower thigh',
		'disease' => 'Bone Cancer'
)
	);
$return = array('exists' => false);

if(isset($_GET['definition'])) {
	$name = trim($_GET['definition']);
	if(isset($term[$definition])) {
		$return['exist'] = true;
		$return['information'] = $term[$definition]
	}
}

echo json_encode($return);
