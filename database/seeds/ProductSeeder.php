<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('products')->insert([
            [
                'name' => 'SASS',
                'categories_id' => 1,
                'certificates_id' => 1,
                'description' => 'Trong khóa này chúng ta sẽ cùng nhau xây dựng giao diện 2 trang web là The Band & Shopee.',
                'content' => '<h2>&nbsp;</h2>
                    <h2><strong>What you&#39;ll learn</strong></h2>
                    <ul>
                        <li>
                        <p>Learn HTML5 from scratch.</p>
                        </li>
                        <li>
                        <p>Learn CSS3 from scratch.</p>
                        </li>
                        <li>
                        <p>Create responsive real world projects from scratch.</p>
                        </li>
                        <li>
                        <p>Learn CSS Grid and Flexbox Layout Modules.</p>
                        </li>
                        <li>
                        <p>Learn where to get free images, custom fonts.</p>
                        </li>
                        <li>
                        <p>Learn how to work with font-awesome icons</p>
                        </li>
                        <li>
                        <p>Learn where to get custom color palettes.</p>
                        </li>
                    </ul>',
                'time_start' => date("Y-m-d H:i:s"),
                'time_end' => date("Y-m-d H:i:s"),
                'sessions' => 72,
                'price' => 306000,
                'display' => 1,
                'hot' => 0
            ],
            [
                'name' => 'Tailwind',
                'categories_id' => 1,
                'certificates_id' => 1,
                'description' => 'Trong khóa này chúng ta sẽ cùng nhau xây dựng giao diện 2 trang web là The Band & Shopee.',
                'content' => '<h2>&nbsp;</h2>
                    <h2><strong>What you&#39;ll learn</strong></h2>
                    <ul>
                        <li>
                        <p>Learn HTML5 from scratch.</p>
                        </li>
                        <li>
                        <p>Learn CSS3 from scratch.</p>
                        </li>
                        <li>
                        <p>Create responsive real world projects from scratch.</p>
                        </li>
                        <li>
                        <p>Learn CSS Grid and Flexbox Layout Modules.</p>
                        </li>
                        <li>
                        <p>Learn where to get free images, custom fonts.</p>
                        </li>
                        <li>
                        <p>Learn how to work with font-awesome icons</p>
                        </li>
                        <li>
                        <p>Learn where to get custom color palettes.</p>
                        </li>
                    </ul>',
                'time_start' => date("Y-m-d H:i:s"),
                'time_end' => date("Y-m-d H:i:s"),
                'sessions' => 72,
                'price' => 360000,
                'display' => 1,
                'hot' => 0
            ],
            [
                'name' => 'ReactJS',
                'categories_id' => 1,
                'certificates_id' => 1,
                'description' => 'Trong khóa này chúng ta sẽ cùng nhau xây dựng giao diện 2 trang web là The Band & Shopee.',
                'content' => '<h2>&nbsp;</h2>
                    <h2><strong>What you&#39;ll learn</strong></h2>
                    <ul>
                        <li>
                        <p>Learn HTML5 from scratch.</p>
                        </li>
                        <li>
                        <p>Learn CSS3 from scratch.</p>
                        </li>
                        <li>
                        <p>Create responsive real world projects from scratch.</p>
                        </li>
                        <li>
                        <p>Learn CSS Grid and Flexbox Layout Modules.</p>
                        </li>
                        <li>
                        <p>Learn where to get free images, custom fonts.</p>
                        </li>
                        <li>
                        <p>Learn how to work with font-awesome icons</p>
                        </li>
                        <li>
                        <p>Learn where to get custom color palettes.</p>
                        </li>
                    </ul>',
                'time_start' => date("Y-m-d H:i:s"),
                'time_end' => date("Y-m-d H:i:s"),
                'sessions' => 72,
                'price' => 400000,
                'display' => 1,
                'hot' => 0
            ],
            [
                'name' => 'VueJS',
                'categories_id' => 1,
                'certificates_id' => 1,
                'description' => 'Trong khóa này chúng ta sẽ cùng nhau xây dựng giao diện 2 trang web là The Band & Shopee.',
                'content' => '<h2>&nbsp;</h2>
                    <h2><strong>What you&#39;ll learn</strong></h2>
                    <ul>
                        <li>
                        <p>Learn HTML5 from scratch.</p>
                        </li>
                        <li>
                        <p>Learn CSS3 from scratch.</p>
                        </li>
                        <li>
                        <p>Create responsive real world projects from scratch.</p>
                        </li>
                        <li>
                        <p>Learn CSS Grid and Flexbox Layout Modules.</p>
                        </li>
                        <li>
                        <p>Learn where to get free images, custom fonts.</p>
                        </li>
                        <li>
                        <p>Learn how to work with font-awesome icons</p>
                        </li>
                        <li>
                        <p>Learn where to get custom color palettes.</p>
                        </li>
                    </ul>',
                'time_start' => date("Y-m-d H:i:s"),
                'time_end' => date("Y-m-d H:i:s"),
                'sessions' => 72,
                'price' => 400000,
                'display' => 1,
                'hot' => 0
            ],
            [
                'name' => 'Angular',
                'parent_id' => 1,
                'price' => 500000,
                'description' => Str::random(255),
                'content' => '',
                'display' => 1
            ],
            [
                'name' => 'PHP',
                'parent_id' => 2,
                'price' => 300000,
                'description' => Str::random(255),
                'content' => '',
                'display' => 1
            ],
            [
                'name' => 'NodeJS',
                'parent_id' => 2,
                'price' => 300000,
                'description' => Str::random(255), 
                'content' => '', 
                'display' => 1
            ],
            [
                'name' => 'Python', 
                'parent_id' => 2, 
                'price' => 300000, 
                'description' => Str::random(255), 
                'content' => '', 
                'display' => 1
            ],
            [
                'name' => 'Java', 
                'parent_id' => 2, 
                'price' => 300000, 
                'description' => Str::random(255), 
                'content' => '', 
                'display' => 1
            ],
            [
                'name' => 'Manual Test', 
                'parent_id' => 3, 
                'price' => 300000, 
                'description' => Str::random(255), 
                'content' => '', 
                'display' => 1
            ],
            [
                'name' => 'Automatic Test', 
                'parent_id' => 3, 
                'price' => 300000, 
                'description' => Str::random(255), 
                'content' => '', 
                'display' => 1
            ],
            [
                'name' => 'SQL Server', 
                'parent_id' => 4, 
                'price' => 300000, 
                'description' => Str::random(255), 
                'content' => '', 
                'display' => 1
            ],
            [
                'name' => 'My Sql', 
                'parent_id' => 4, 
                'price' => 300000, 
                'description' => Str::random(255), 
                'content' => '', 
                'display' => 1
            ],
            [
                'name' => 'Postgresql', 
                'parent_id' => 4, 
                'price' => 300000, 
                'description' => Str::random(255), 
                'content' => '', 
                'display' => 1
            ],
            [
                'name' => 'Oracle', 
                'parent_id' => 4, 
                'price' => 300000, 
                'description' => Str::random(255), 
                'content' => '', 
                'display' => 1
            ],
        ]);
    }
}
