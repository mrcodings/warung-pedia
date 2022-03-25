<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "transaksi".
 *
 * @property int $id
 * @property string $tanggal
 * @property int $jenis_pembayaran
 * @property int $sub_total
 * @property int $discount
 * @property int $total
 * @property string $created_at
 * @property int $created_by
 * @property string $updated_at
 * @property int $updated_by
 */
class Transaksi extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'transaksi';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['tanggal', 'jenis_pembayaran', 'sub_total', 'discount', 'total'], 'required'],
            [['tanggal', 'created_at', 'updated_at'], 'safe'],
            [['jenis_pembayaran', 'sub_total', 'discount', 'total', 'created_by', 'updated_by'], 'integer'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'tanggal' => 'Tanggal',
            'jenis_pembayaran' => 'Jenis Pembayaran',
            'sub_total' => 'Sub Total',
            'discount' => 'Discount',
            'total' => 'Total',
            'created_at' => 'Created At',
            'created_by' => 'Created By',
            'updated_at' => 'Updated At',
            'updated_by' => 'Updated By',
        ];
    }
}
