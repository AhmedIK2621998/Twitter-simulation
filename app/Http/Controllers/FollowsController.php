<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use phpDocumentor\Reflection\Element;

class FollowsController extends Controller
{
    public function store(User $user) {
        auth()
            ->user()
            ->toggleFollow($user);

        return back();
    }

}
