<x-app>
    <header class="mb-6 relative">
        <div class="relative">
            <img
                 src="{{url('images/default-profile-banner.jpg')}}"
                 alt=""
                 class="mb-2"
            >

            <img
            src="{{$user->avatar}}"
            alt=""
            class="rounded-full mr-2 absolute bottom-0 transform -translate-x-1/2 translate-y-1/2"
            style="left: 50%; width: 140px;height: 140px;"
        >
        </div>

            {{-- diffForHumans() To show the time by englis or word     --}}

        <div class="flex justify-between items-center mb-6">

            <div style="max-width: 270px">

                <h2 class="font-bold text-2xl mb-0">{{ $user->name }}</h2>
                <p class="text-sm">Joined {{ $user->created_at->diffForHumans() }}</p>

            </div>

            <div class="flex">

                @can('edit',$user)

                     <a href="{{ $user->path('edit') }}"
                        class="rounded-full border border-gray-300 py-2 px-4 text-black text-xs mr-2"

                     >
                       Edit Profile

                     </a>

                @endcan

              <x-follow-button :user="$user"></x-follow-button>

            </div>
        </div>

            <p class="text-sm">
                Computer programming is the process of designing and
                building an executable computer program to accomplish a specific computing
                result or to perform a specific task. Programming involves tasks such as: analysis,
                processing unit. The purpose of programming is to find a sequence of
            </p>

    </header>

    @include('_timeline',[
        'tweets'=>$user->tweets
    ])
</x-app>
