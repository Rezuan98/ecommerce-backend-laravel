<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\ProductVarient;
use App\Models\GalleryImage;

class ProductViewController extends Controller
{
    public function productDetails($id)
    {
        $product = Product::with(['category', 'galleryImages', 'variants.size', 'variants.color'])->find($id);
    
        // If needed, you can also include variants like this:
        $variants = ProductVarient::where('product_id', $product->id)->get();
    
        return view('frontend.pages.product_details', compact('product', 'variants'));
    }
    

    public function categoryProducts(Request $request, $id)
    {
        // Start with base query
        $query = Product::with(['category', 'galleryImages', 'variants.size', 'variants.color'])
                       ->where('category_id', $id)
                       ->distinct();
    
        // Apply price filter if provided
        if ($request->filled('min_price') && $request->filled('max_price')) {
            $query->whereBetween('sale_price', [
                (float)$request->min_price, 
                (float)$request->max_price
            ]);
        }
    
        // Apply sorting
        if ($request->filled('sort')) {
            switch ($request->sort) {
                case 'price_low':
                    $query->orderBy('sale_price', 'asc');
                    break;
                case 'price_high':
                    $query->orderBy('sale_price', 'desc');
                    break;
                case 'popular':
                    $query->latest(); // You can modify this based on your popularity criteria
                    break;
                case 'newest':
                default:
                    $query->latest('created_at');
                    break;
            }
        } else {
            // Default sorting
            $query->latest('created_at');
        }
    
        // Apply availability filter if provided
        if ($request->filled('in_stock')) {
            $query->whereHas('variants', function($q) {
                $q->where('stock_quantity', '>', 0);
            });
        }
    
        // Paginate results
        $product = $query->paginate(10)->withQueryString();
    
        // Handle AJAX request
        if ($request->ajax()) {
            return response()->json([
                'html' => view('frontend.pages.category_product_partial', compact('product'))->render(),
            ]);
        }
    
        // For non-AJAX requests, return full page
        return view('frontend.pages.category_product_page', compact('product', 'id'));
    }

    
    


    
    

//     public function quickView($id)
// {
//     $product = Product::with(['variants.color', 'variants.size', 'galleryImages'])
//                      ->findOrFail($id);

//     // Calculate final price
//     $sale_price = $product->sale_price;
//     $final_price = $sale_price;
    
//     if ($product->discount_amount > 0) {
//         if ($product->discount_type == 'flat') {
//             $final_price = $sale_price - $product->discount_amount;
//         } elseif ($product->discount_type == 'percentage') {
//             $discount_value = ($sale_price * $product->discount_amount) / 100;
//             $final_price = $sale_price - $discount_value;
//         }
//     }

//     return view('frontend.pages.quick-view', compact('product', 'final_price'));
// }
}
