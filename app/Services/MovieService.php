<?php

namespace App\Services;

use Illuminate\Support\Facades\Http;


class MovieService
{
  public $token;
  public $endpoint;

  public function __construct()
  {
    $this->token = config()->get('services.tmdb.token');
    $this->endpoint = config()->get('services.tmdb.endpoint');
  }

  public function getTrendingMovies($params = array(), $dayOrMonth = 'day')
  {
    return Http::withToken($this->token)
      ->withUrlParameters($params)
      ->get($this->endpoint . 'trending/all/' . $dayOrMonth);
  }

  public function getGenres()
  {
    return Http::withToken($this->token)
      ->get($this->endpoint . 'genre/movie/list');
  }
}
