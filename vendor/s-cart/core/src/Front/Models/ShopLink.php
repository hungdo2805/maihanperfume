<?php
#S-Cart/Core/Front/Models/ShopLink.php
namespace SCart\Core\Front\Models;

use Illuminate\Database\Eloquent\Model;

class ShopLink extends Model
{
    public $timestamps = false;
    public $table = SC_DB_PREFIX.'shop_link';
    protected $guarded = [];
    protected $connection = SC_CONNECTION;
    protected static $getGroup = null;

    public static function getGroup()
    {
        if (!self::$getGroup) {
            self::$getGroup = self::where('status', 1)
                ->where('store_id', config('app.storeId'))
                ->orderBy('sort', 'asc')
                ->orderBy('id', 'desc')
                ->get()->groupBy('group');
        }
        return self::$getGroup;
    }
}
