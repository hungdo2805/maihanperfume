<?php
namespace SCart\Core\Front\Models;

use SCart\Core\Front\Models\ShopProduct;
use Illuminate\Database\Eloquent\Model;
use SCart\Core\Front\Models\ModelTrait;


class ShopBrand extends Model
{
    use ModelTrait;

    public $timestamps = false;
    public $table = SC_DB_PREFIX.'shop_brand';
    protected $guarded = [];
    private static $getList = null;
    protected $connection = SC_CONNECTION;


    public static function getListAll()
    {
        if (self::$getList === null) {
            self::$getList = self::get()->keyBy('id');
        }
        return self::$getList;
    }

    public function products()
    {
        return $this->hasMany(ShopProduct::class, 'brand_id', 'id');
    }

    protected static function boot()
    {
        parent::boot();
        // before delete() method call this
        static::deleting(function ($brand) {
        });
    }

    /**
     * [getUrl description]
     * @return [type] [description]
     */
    public function getUrl()
    {
        return sc_route('brand.detail', ['alias' => $this->alias]);
    }

    /*
    Get thumb
    */
    public function getThumb()
    {
        return sc_image_get_path_thumb($this->image);
    }

    /*
    Get image
    */
    public function getImage()
    {
        return sc_image_get_path($this->image);

    }

//Scort
    public function scopeSort($query, $sortBy = null, $sortOrder = 'asc')
    {
        $sortBy = $sortBy ?? 'sort';
        return $query->orderBy($sortBy, $sortOrder);
    }
    

    /**
     * Get page detail
     *
     * @param   [string]  $key     [$key description]
     * @param   [string]  $type  [id, alias]
     *
     */
    public function getDetail($key, $type = null)
    {
        if(empty($key)) {
            return null;
        }
        if ($type === null) {
            $data = $this->where('id', (int) $key);
        } else {
            $data = $this->where($type, $key);
        }
            $data = $data->where('status', 1);
        return $data->first();
    }


    /**
     * Start new process get data
     *
     * @return  new model
     */
    public function start() {
        return new ShopBrand;
    }

    /**
     * build Query
     */
    public function buildQuery() {
        $query = $this->where('status', 1);
        
        if (count($this->sc_moreWhere)) {
            foreach ($this->sc_moreWhere as $key => $where) {
                if(count($where)) {
                    $query = $query->where($where[0], $where[1], $where[2]);
                }
            }
        }
        if ($this->sc_random) {
            $query = $query->inRandomOrder();
        } else {
            $ckeckSort = false;
            if (is_array($this->sc_sort) && count($this->sc_sort)) {
                foreach ($this->sc_sort as  $rowSort) {
                    if (is_array($rowSort) && count($rowSort) == 2) {
                        if ($rowSort[0] == 'sort') {
                            $ckeckSort = true;
                        }
                        $query = $query->sort($rowSort[0], $rowSort[1]);
                    }
                }
            }
            //Use field "sort" if haven't above
            if (!$ckeckSort) {
                $query = $query->orderBy($this->getTable().'.sort', 'asc');
            }
            //Default, will sort id
            $query = $query->orderBy($this->getTable().'.id', 'desc');
        }

        return $query;
    }
}
