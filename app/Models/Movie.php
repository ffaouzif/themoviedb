<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Casts\Attribute;

class Movie extends Model
{
    use HasFactory;

    public $timestamps = true;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'id',
        'adult',
        'backdrop_path',
        'title',
        'name',
        'original_language',
        'original_title',
        'overview',
        'poster_path',
        'media_type',
        'genre_ids',
        'popularity',
        'release_date',
        'first_air_date',
        'video',
        'vote_average',
        'vote_count',
        'origin_country'
    ];

    /**
     * Get the user's first name.
     *
     * @return \Illuminate\Database\Eloquent\Casts\Attribute
     */
    protected function genreIds(): Attribute
    {
        return Attribute::make(
            get: fn ($value) => explode(",", $value),
        );
    }
}
