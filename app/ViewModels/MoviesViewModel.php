<?php

namespace App\ViewModels;

use Carbon\Carbon;
use Spatie\ViewModels\ViewModel;

class MoviesViewModel extends ViewModel
{
    public $trendingMovies;
    public $genres;

    public function __construct($trendingMovies, $genres)
    {
        $this->trendingMovies = $trendingMovies;
        $this->genres = $genres;
    }

    public function trendingMovies()
    {
        return $this->formatMovies($this->trendingMovies->toArray());
    }

    public function genres()
    {
        return collect($this->genres)->mapWithKeys(function ($genre) {
            return [$genre['id'] => $genre['name']];
        });
    }

    public function paginationMovies()
    {
        return $this->trendingMovies;
    }

    private function formatMovies($movies)
    {
        // dd($movies);
        return collect($movies['data'])->map(function ($movie) {
            $genresFormatted = collect($movie['genre_ids'])->mapWithKeys(function ($value) {
                return [$value => $this->genres()->get($value)];
            })->implode(', ');

            return collect($movie)->merge([
                'poster_path' => 'https://image.tmdb.org/t/p/w500/' . $movie['poster_path'],
                'vote_average' => $movie['vote_average'] * 10 . '%',
                'release_date' => isset($movie['release_date']) ? Carbon::parse($movie['release_date'])->format('M d, Y') : '',
                'genres' => $genresFormatted,
                'title' => isset($movie['title']) ? $movie['title'] : $movie['name']
            ])->only([
                'poster_path', 'id', 'genre_ids', 'title', 'vote_average', 'overview', 'release_date', 'genres',
            ]);
        });
    }
}
