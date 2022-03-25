<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "transaksi_detail".
 *
 * @property int $id
 * @property int $transaksi_id
 * @property int $barang_id
 * @property int $qty
 * @property int $harga
 * @property int $total
 * @property string $created_at
 * @property int $created_by
 * @property string $updated_at
 * @property int $updated_by
 */
class TransaksiDetail extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'transaksi_detail';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['transaksi_id', 'barang_id', 'qty', 'harga', 'total'], 'required'],
            [['transaksi_id', 'barang_id', 'qty', 'harga', 'total', 'created_by', 'updated_by'], 'integer'],
            [['created_at', 'updated_at'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'transaksi_id' => 'Transaksi ID',
            'barang_id' => 'Barang ID',
            'qty' => 'Qty',
            'harga' => 'Harga',
            'total' => 'Total',
            'created_at' => 'Created At',
            'created_by' => 'Created By',
            'updated_at' => 'Updated At',
            'updated_by' => 'Updated By',
        ];
    }
}
