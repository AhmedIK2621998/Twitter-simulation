<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Validation\Rule;
use Illuminate\Http\Request;

class ProfilesController extends Controller
{

    public function show(User $user) {

        return view('profiles.show',[
            'user' => $user,
            'tweets' => $user->tweets()
        ]);

    }

    public function edit(User $user) {

        return view('profiles.edit',compact('user'));

    }

    public function update(User $user) {

        $filepath  = saveImages(request()->avatar,'images/avatars');

        $user -> update([
            'avatar'=>$filepath
        ]);

        $attributes = request()->validate([

            'username'    => ['string','required','max:255','alpha_dash', Rule::unique('users')->ignore($user)], // علشان اليوزرنيم عادي لو بقي نفس الاسم
            'name'        => ['string','required','max:255'],
            'avatar'      => ['required','file'],
            'email'       => ['string','required','max:255',Rule::unique('users')->ignore($user)],
            'password'    => ['string','required','min:8','max:255','confirmed'],
        ]);

        $user->update($attributes);

        return redirect($user->path());
    }
}
