<?php

namespace App\Models;

class Post
{
    private static $blog_posts = [
        [
            "title" => "Judul Post Pertama",
            "slug" => "judul-post-pertama",
            "author" => "Afif Sauqil Arifin",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quis pariatur inventore illo similique laboriosam, dignissimos eveniet alias asperiores error beatae quasi, ab adipisci nam deleniti, sequi suscipit eligendi perspiciatis tempora sapiente deserunt? At, doloribus. Laboriosam fugit quod quia ab deleniti accusamus ratione illum, aliquam odit quos. Aut laboriosam, obcaecati tenetur, iste, ut enim amet quo necessitatibus aperiam porro optio animi? Quibusdam iste nobis minima sunt, sint odit ea error ducimus velit est vitae quisquam ab, nulla facere fugiat blanditiis sequi!"
        ],
        [
            "title" => "Judul Post Kedua",
            "slug" => "judul-post-kedua",
            "author" => "Khoiruddin Irian Dani",
            "body" => "Lorem ipsum dolor sit amet consectetur, adipisicing elit. Obcaecati beatae eum commodi. Ad ullam ab atque itaque provident eveniet vitae qui labore nemo ex, non delectus corrupti incidunt amet voluptate ratione quas voluptatibus voluptas ipsam eum. Quia at dicta eaque, deleniti veritatis explicabo laudantium alias aut eum ea quam culpa temporibus et ipsa quasi id minima magnam repudiandae! Harum nemo commodi aperiam perferendis. Voluptatibus et dolor ab quae quibusdam quo quod a aperiam, totam voluptate nobis ea. Ea blanditiis vel explicabo maiores! Dolor ipsa rem est perspiciatis laborum sed velit iusto placeat quibusdam accusantium. Illum deserunt beatae distinctio dignissimos voluptates!"
        ]
        
    ];

    public static function all()
    {
        return collect(self::$blog_posts);
    }

    public static function find($slug)
    {
        $posts = self::all();
        return $posts->firstWhere('slug', $slug);
    }

}