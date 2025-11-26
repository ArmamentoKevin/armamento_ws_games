<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Game extends Model
{
    use SoftDeletes;

    public function getRouteKeyName(): string
    {
        return 'slug';
    }

    public function author()
    {
        return $this->belongsTo(User::class, 'author_id');
    }

    public function scores()
    {
        return $this->hasMany(Score::class, 'game_id');
    }

    public function topScores() {
        return $this->scores()->orderByDesc('score')->limit(10);
    }
}