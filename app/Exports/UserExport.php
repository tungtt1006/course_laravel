<?php

namespace App\Exports;

use App\Models\Classes;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class UserExport implements FromCollection, WithHeadings
{
    public $users;

    public function __construct(Classes $class)
    {
        $this->users = $class->users()->select('name', 'email', 'phone', 'address')->get();
    }

    public function headings(): array
    {
        return [
            'Tên',
            'Email',
            'Số điện thoại',
            'Địa chỉ',
        ];
    }

    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return $this->users;
    }
}
