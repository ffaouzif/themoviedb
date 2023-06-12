<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Livewire\WithPagination;
use App\Models\Movie;


class MoviePagination extends Component
{
    public function render()
    {
        return view('livewire.movie-pagination');

        return view('livewire.movie-pagination', [
            'movies' => Movie::paginate(10)
        ]);
    }
}
