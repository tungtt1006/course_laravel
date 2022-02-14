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
        // <h2>&nbsp;</h2>
        // <h2><strong>What you&#39;ll learn</strong></h2>
        // <ul>
        //     <li>
        //     <p>Learn HTML5 from scratch.</p>
        //     </li>
        //     <li>
        //     <p>Learn CSS3 from scratch.</p>
        //     </li>
        //     <li>
        //     <p>Create responsive real world projects from scratch.</p>
        //     </li>
        //     <li>
        //     <p>Learn CSS Grid and Flexbox Layout Modules.</p>
        //     </li>
        //     <li>
        //     <p>Learn where to get free images, custom fonts.</p>
        //     </li>
        //     <li>
        //     <p>Learn how to work with font-awesome icons</p>
        //     </li>
        //     <li>
        //     <p>Learn where to get custom color palettes.</p>
        //     </li>
        // </ul>
        DB::table('products')->insert([
            [
                'name' => 'SASS',
                'categories_id' => 1,
                'certificates_id' => 1,
                'description' => 'Trong khóa này chúng ta sẽ cùng nhau xây dựng giao diện 2 trang web là The Band & Shopee.',
                'content' => 'Hello world',
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
                'content' => 'Hello world',
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
                'content' => 'Hello world',
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
                'content' => 'Hello world',
                'time_start' => date("Y-m-d H:i:s"),
                'time_end' => date("Y-m-d H:i:s"),
                'sessions' => 72,
                'price' => 400000,
                'display' => 1,
                'hot' => 0
            ],
            [
                'name' => 'Angular',
                'categories_id' => 1,
                'certificates_id' => 1,
                'description' => 'Trong khóa này chúng ta sẽ cùng nhau xây dựng giao diện 2 trang web là The Band & Shopee.',
                'content' => 'Hello world',
                'time_start' => date("Y-m-d H:i:s"),
                'time_end' => date("Y-m-d H:i:s"),
                'sessions' => 72,
                'price' => 500000,
                'display' => 1,
                'hot' => 0
            ],
            [
                'name' => 'PHP',
                'categories_id' => 2,
                'certificates_id' => 1,
                'description' => 'Trong khóa này chúng ta sẽ cùng nhau xây dựng giao diện 2 trang web là The Band & Shopee.',
                'content' => 'Hello world',
                'time_start' => date("Y-m-d H:i:s"),
                'time_end' => date("Y-m-d H:i:s"),
                'sessions' => 72,
                'price' => 300000,
                'display' => 1,
                'hot' => 0
            ],
            [
                'name' => 'NodeJS',
                'categories_id' => 2,
                'certificates_id' => 1,
                'description' => 'Trong khóa này chúng ta sẽ cùng nhau xây dựng giao diện 2 trang web là The Band & Shopee.',
                'content' => 'Hello world',
                'time_start' => date("Y-m-d H:i:s"),
                'time_end' => date("Y-m-d H:i:s"),
                'sessions' => 72,
                'price' => 300000,
                'display' => 1,
                'hot' => 0
            ],
            [
                'name' => 'Python',
                'categories_id' => 2,
                'certificates_id' => 1,
                'description' => 'Trong khóa này chúng ta sẽ cùng nhau xây dựng giao diện 2 trang web là The Band & Shopee.',
                'content' => 'Hello world',
                'time_start' => date("Y-m-d H:i:s"),
                'time_end' => date("Y-m-d H:i:s"),
                'sessions' => 72,
                'price' => 350000,
                'display' => 1,
                'hot' => 0
            ],
            [
                'name' => 'Java',
                'categories_id' => 2,
                'certificates_id' => 1,
                'description' => 'Trong khóa này chúng ta sẽ cùng nhau xây dựng giao diện 2 trang web là The Band & Shopee.',
                'content' => 'Hello world',
                'time_start' => date("Y-m-d H:i:s"),
                'time_end' => date("Y-m-d H:i:s"),
                'sessions' => 72,
                'price' => 375000,
                'display' => 1,
                'hot' => 0
            ],
            [
                'name' => 'Manual Test',
                'categories_id' => 3,
                'certificates_id' => 1,
                'description' => 'Trong khóa này chúng ta sẽ cùng nhau xây dựng giao diện 2 trang web là The Band & Shopee.',
                'content' => 'Hello world',
                'time_start' => date("Y-m-d H:i:s"),
                'time_end' => date("Y-m-d H:i:s"),
                'sessions' => 72,
                'price' => 200000,
                'display' => 1,
                'hot' => 0
            ],
            [
                'name' => 'Automatic Test',
                'categories_id' => 3,
                'certificates_id' => 1,
                'description' => 'Trong khóa này chúng ta sẽ cùng nhau xây dựng giao diện 2 trang web là The Band & Shopee.',
                'content' => 'Hello world',
                'time_start' => date("Y-m-d H:i:s"),
                'time_end' => date("Y-m-d H:i:s"),
                'sessions' => 72,
                'price' => 275000,
                'display' => 1,
                'hot' => 0
            ],
            [
                'name' => 'SQL Server',
                'categories_id' => 4,
                'certificates_id' => 1,
                'description' => 'Trong khóa này chúng ta sẽ cùng nhau xây dựng giao diện 2 trang web là The Band & Shopee.',
                'content' => 'Hello world',
                'time_start' => date("Y-m-d H:i:s"),
                'time_end' => date("Y-m-d H:i:s"),
                'sessions' => 72,
                'price' => 200000,
                'display' => 1,
                'hot' => 0
            ],
            [
                'name' => 'My Sql',
                'categories_id' => 4,
                'certificates_id' => 1,
                'description' => 'Trong khóa này chúng ta sẽ cùng nhau xây dựng giao diện 2 trang web là The Band & Shopee.',
                'content' => 'Hello world',
                'time_start' => date("Y-m-d H:i:s"),
                'time_end' => date("Y-m-d H:i:s"),
                'sessions' => 72,
                'price' => 200000,
                'display' => 1,
                'hot' => 0
            ],
            [
                'name' => 'Postgresql',
                'categories_id' => 4,
                'certificates_id' => 1,
                'description' => 'Trong khóa này chúng ta sẽ cùng nhau xây dựng giao diện 2 trang web là The Band & Shopee.',
                'content' => 'Hello world',
                'time_start' => date("Y-m-d H:i:s"),
                'time_end' => date("Y-m-d H:i:s"),
                'sessions' => 72,
                'price' => 200000,
                'display' => 1,
                'hot' => 0
            ],
            [
                'name' => 'Oracle',
                'categories_id' => 4,
                'certificates_id' => 1,
                'description' => 'Trong khóa này chúng ta sẽ cùng nhau xây dựng giao diện 2 trang web là The Band & Shopee.',
                'content' => 'Hello world',
                'time_start' => date("Y-m-d H:i:s"),
                'time_end' => date("Y-m-d H:i:s"),
                'sessions' => 5000,
                'price' => 200000,
                'display' => 1,
                'hot' => 0
            ],
        ]);
    }
}
