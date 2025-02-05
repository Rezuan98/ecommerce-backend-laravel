<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;
use App\Models\Order;

class UserController extends Controller
{


    public function UserProfile()
    {
        $user = Auth::user();
        
        // Get orders statistics
        $totalOrders = Order::where('user_id', $user->id)->count();
        $activeOrders = Order::where('user_id', $user->id)
                            ->whereIn('order_status', ['pending', 'processing', 'shipped'])
                            ->count();
        $totalSpent = Order::where('user_id', $user->id)
                          ->where('payment_status', 'paid')
                          ->sum('total');

        // Get recent orders
        $recentOrders = Order::where('user_id', $user->id)
                            ->latest()
                            ->take(5)
                            ->get();

        return view('frontend.user.user_profile', compact('user', 'totalOrders', 'activeOrders', 'totalSpent', 'recentOrders'));
    }

    public function UpdateUserProfile(Request $request)
{
    $user = Auth::user();

    // Validate the request
    $request->validate([
        'name' => 'required|string|max:255',
        'email' => 'required|email|unique:users,email,'.$user->id,
        'phone' => 'required|string|max:20',
        'address' => 'required|string|max:255',
        'image' => 'nullable|image|mimes:jpeg,png,jpg|max:2048',
        
    ]);

    try {
        // Handle image upload if provided
        if ($request->hasFile('image')) {
            // Delete old image if exists
            if ($user->image) {
                Storage::delete('userimages/' . $user->image);
            }
            
            // Store new image
            $imageName = time() . '.' . $request->image->extension();
            $request->image->storeAs('userimages', $imageName);
            $user->image = $imageName;
        }

        // Update basic information
        $user->name = $request->name;
        $user->email = $request->email;
        $user->phone = $request->phone;
        $user->address = $request->address;

       

        $user->save();

        return redirect()->back()->with('success', 'Profile updated successfully');

    } catch (\Exception $e) {
        return redirect()->back()->with('error', 'Something went wrong! Please try again.');
    }
}

public function UpdateUserPassword(Request $request)
{
    // ... validation code ...

    $user = auth()->user();
    
    if (!Hash::check($request->current_password, $user->password)) {
        return back()->with('password_error', 'Current password is incorrect');
    }

    $newHashedPassword = Hash::make($request->password);
    
    // Debug check (remove in production)
  

    $user->password = $newHashedPassword;
    $user->save();

    return back()->with('password_success', 'Password changed successfully');
}


public function changePasswordForm()
{
    return view('back-end.password.change_password');
}
public function updatePassword(Request $request)
{
    $request->validate([
        'current_password' => 'required',
        'password' => 'required|string|min:8|confirmed',
    ]);

    $user = auth()->user();

    if (!Hash::check($request->current_password, $user->password)) {
        return back()->with('error', 'Current password is incorrect');
    }

    $user->password = Hash::make($request->password);
    $user->save();

    return back()->with('success', 'Password changed successfully');
}




 

}
