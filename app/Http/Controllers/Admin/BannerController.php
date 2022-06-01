<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Banner;
use App\Http\Requests\Admin\BannerRequest;
use Illuminate\Support\Facades\Storage;

class BannerController extends Controller
{
    public function index()
    {
        return view('admin.banner.read', [
            'banners' => Banner::orderBy('created_at', 'desc')->paginate(10)
        ]);
    }

    public function create()
    {
        return view('admin.banner.create-update');
    }

    public function store(BannerRequest $request)
    {
        $request->validate(['photo' => 'required|image']);
        $photoName = time() . '_' . str_replace(' ', '', $request->name) . '.' . $request->photo->extension();
        $banner = Banner::create([
            'name' => $request->name,
            'display' => $request->display,
            'photo' => '/storage/img/banners/' . $photoName,
        ]);

        if ($banner) {
            $request->photo->storeAs('img/banners', $photoName, 'public');
            return redirect()->route('banners.index');
        }
        return view('admin.banner.create-update');
    }

    public function edit(Banner $banner)
    {
        return view('admin.banner.create-update', compact('banner'));
    }

    public function update(BannerRequest $request, Banner $banner)
    {
        $arr = [
            'name' => $request->name,
            'display' => $request->display,
        ];

        if ($request->hasFile('photo')) {
            $nameImg = substr($banner->photo, 9);
            $photoName = time() . '_' . str_replace(' ', '', $request->name) . '.' . $request->photo->extension();
            $arr['photo'] = '/storage/img/products/' . $photoName;
        }

        $rowUpdated = $banner->update($arr);
        if (!$rowUpdated) {
            return redirect()->back()->withInput();
        }

        if ($request->hasFile('photo') && Storage::disk('public')->exists($nameImg)) {
            Storage::disk('public')->delete($nameImg);
            $request->photo->storeAs('img/banners', $photoName, 'public');
        }
        return redirect()->route('banners.index');
    }

    public function destroy(Banner $banner)
    {
        if ($banner->delete()) {
            return redirect()->route('banners.index');
        }
        return redirect()->route("403");
    }
}
