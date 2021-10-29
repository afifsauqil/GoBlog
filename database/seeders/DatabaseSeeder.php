<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {

        User::create([
            'name' => 'Administrator',
            'username' => 'administrator',
            'email' => 'admin@gmail.com',
            'password' => bcrypt('admin'),
            'is_admin' => 1
        ]);

        User::create([
            'name' => 'Author Account',
            'username' => 'guest-author',
            'email' => 'author@gmail.com',
            'password' => bcrypt('author')
        ]);

        // User::factory(3)->create();

        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming'
        ]);

        Category::create([
            'name' => 'DevOps',
            'slug' => 'devops'
        ]);

        Category::create([
            'name' => 'Cloud Computing',
            'slug' => 'cloud-computing'
        ]);

        Category::create([
            'name' => 'Operating System',
            'slug' => 'operating-system'
        ]);

        Category::create([
            'name' => 'Artificial Intelligence',
            'slug' => 'artificial-intelligence'
        ]);

        Category::create([
            'name' => 'Data Science',
            'slug' => 'data-science'
        ]);

        Category::create([
            'name' => 'Internet Of Things',
            'slug' => 'iot'
        ]);

        Category::create([
            'name' => 'Technology',
            'slug' => 'technology'
        ]);

        Category::create([
            'name' => 'Culture',
            'slug' => 'culture'
        ]);

        Category::create([
            'name' => 'Geography',
            'slug' => 'geography'
        ]);

        Category::create([
            'name' => 'Anime',
            'slug' => 'anime'
        ]);

        Category::create([
            'name' => 'Scout',
            'slug' => 'scout'
        ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'personal'
        ]);

        // Post::factory(20)->create();

        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug' => 'judul-pertama',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque quis, excepturi vitae provident eius dolores accusantium minima architecto aliquam aspernatur at voluptatem voluptates natus! Animi est tenetur consectetur alias accusamus ex soluta, vitae nulla ducimus quasi. Sit, perferendis enim. Perferendis omnis, maxime expedita consectetur officia accusantium quae voluptates asperiores, dolores velit mollitia dolorem nulla sint cumque at alias laboriosam aliquid dolor assumenda laborum incidunt? Vel corrupti neque porro sunt, distinctio enim. Necessitatibus, unde? Asperiores in voluptatem, excepturi dicta facilis suscipit eligendi natus cum ab? Quod adipisci ullam ab hic saepe veritatis nisi, ipsum, cupiditate deserunt vitae iure, fugit ea quas.',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Kedua',
        //     'slug' => 'judul-kedua',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque quis, excepturi vitae provident eius dolores accusantium minima architecto aliquam aspernatur at voluptatem voluptates natus! Animi est tenetur consectetur alias accusamus ex soluta, vitae nulla ducimus quasi. Sit, perferendis enim. Perferendis omnis, maxime expedita consectetur officia accusantium quae voluptates asperiores, dolores velit mollitia dolorem nulla sint cumque at alias laboriosam aliquid dolor assumenda laborum incidunt? Vel corrupti neque porro sunt, distinctio enim. Necessitatibus, unde? Asperiores in voluptatem, excepturi dicta facilis suscipit eligendi natus cum ab? Quod adipisci ullam ab hic saepe veritatis nisi, ipsum, cupiditate deserunt vitae iure, fugit ea quas.',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Ketiga',
        //     'slug' => 'judul-ketiga',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque quis, excepturi vitae provident eius dolores accusantium minima architecto aliquam aspernatur at voluptatem voluptates natus! Animi est tenetur consectetur alias accusamus ex soluta, vitae nulla ducimus quasi. Sit, perferendis enim. Perferendis omnis, maxime expedita consectetur officia accusantium quae voluptates asperiores, dolores velit mollitia dolorem nulla sint cumque at alias laboriosam aliquid dolor assumenda laborum incidunt? Vel corrupti neque porro sunt, distinctio enim. Necessitatibus, unde? Asperiores in voluptatem, excepturi dicta facilis suscipit eligendi natus cum ab? Quod adipisci ullam ab hic saepe veritatis nisi, ipsum, cupiditate deserunt vitae iure, fugit ea quas.',
        //     'category_id' => 2,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Keempat',
        //     'slug' => 'judul-keempat',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque quis, excepturi vitae provident eius dolores accusantium minima architecto aliquam aspernatur at voluptatem voluptates natus! Animi est tenetur consectetur alias accusamus ex soluta, vitae nulla ducimus quasi. Sit, perferendis enim. Perferendis omnis, maxime expedita consectetur officia accusantium quae voluptates asperiores, dolores velit mollitia dolorem nulla sint cumque at alias laboriosam aliquid dolor assumenda laborum incidunt? Vel corrupti neque porro sunt, distinctio enim. Necessitatibus, unde? Asperiores in voluptatem, excepturi dicta facilis suscipit eligendi natus cum ab? Quod adipisci ullam ab hic saepe veritatis nisi, ipsum, cupiditate deserunt vitae iure, fugit ea quas.',
        //     'category_id' => 2,
        //     'user_id' => 2
        // ]);
    }
}
