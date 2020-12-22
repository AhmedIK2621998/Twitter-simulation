<?php


function current_user() {

    return auth()->user();
}

function saveImages($avatar,$folder){

    // save photo in folder

    $file_extension = $avatar->getClientOriginalExtension();

    $file_name = time().'.'.$file_extension;

    $path = $folder;

    $avatar->move($path,$file_name);

    return $file_name;
}
