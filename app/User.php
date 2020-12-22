<?php

namespace App;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Support\Facades\Storage;

class User extends Authenticatable
{
    use Notifiable,Followable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */

    protected $guarded = [];
//    protected $fillable = [
//        'username','name','avatar', 'email', 'password',
//    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    // Or protected $guarded = [];
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    // $user->password = 'foobar'

    public function setPasswordAttribute($value) {

      $this->attributes['password'] = bcrypt($value);

    }

    public function getAvatarAttribute($image) {
        return asset('/images/avatars/' . ($image ? : '1608467314.jpg'));
    }

    public function timeline() {
        // Include all of the user's tweets
        // as well as the tweets of everyone
        // they follow .... in order desc by date

        $friends  = $this->follows()->pluck('id');

        return Tweet::whereIn('user_id',$friends)
            ->orWhere('user_id',$this->id)
            ->withLikes()
            ->latest()
            ->paginate(50);
    }

    public function tweets() {
        return $this->hasMany(Tweet::class)->latest();
    }

    public function path($append = '' ) {

        $path =  route('profile',$this->username);

        return $append ? "{$path}/{$append}" : $path;
    }
}
