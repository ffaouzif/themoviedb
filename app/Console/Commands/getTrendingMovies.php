<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\Movie;
use App\Models\Genre;
use App\Services\MovieService;

class getTrendingMovies extends Command
{
    private $moviesService;
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'movies:get_trending';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Get Trending Movies by day or month and save them to database';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
        $this->moviesService = new MovieService();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        // $byDayOrMonth = $this->anticipate('By day or Month ?', ['day', 'month']);
        // $language = $this->anticipate('What movies language do you want to get ?', ['en-US', 'fr']);
        $params = ['language' => 'en-US'];

        $response = $this->moviesService->getTrendingMovies($params, 'day');
        $this->fillMoviesTable($response);

        $response = $this->moviesService->getGenres();
        $this->fillGenreTable($response);        
    }

    private function fillMoviesTable($response)
    {
        if ($response->ok()) {
            $results = $response->json()['results'];

            foreach ($results as $key => $value) {

                if ( Movie::where('id', '=', $value['id'])->exists() ) {
                    continue;
                }

                $data = $value;
                $data['genre_ids'] = implode(",", $value['genre_ids']);

                if (array_key_exists('origin_country', $value)) {
                    $data['origin_country'] = implode(",", $value['origin_country']);
                }

                Movie::create($data);
            }

            $this->info('Movies successfully saved into database !');
        }
    }

    private function fillGenreTable($response)
    {
        if ($response->ok()) {
            $results = $response->json()['genres'];

            foreach ($results as $key => $value) {

                if ( Genre::where('id', '=', $value['id'])->exists() ) {
                    continue;
                }

                Genre::create($value);
            }

            $this->info('Genres successfully saved into database !');
        }
    }
}
