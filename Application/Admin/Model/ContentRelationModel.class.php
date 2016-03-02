<?php
namespace Admin\Model;
use Think\Model\RelationModel;
class ContentRelationModel extends RelationModel {
	protected $tableName = 'content';
	protected $_link = array(
		'categary' => array(
			'mapping_type' => self::BELONGS_TO,
			'foreign_key' => 'cid',
			'mapping_fields' => 'name',
			)
		);
}
 ?>