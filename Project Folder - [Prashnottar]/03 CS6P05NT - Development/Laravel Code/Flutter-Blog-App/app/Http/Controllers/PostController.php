<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\User;
use Illuminate\Http\Request;

class PostController extends Controller
{
    //get all posts

    public function index()
    {
        return response([
            'posts' => Post::orderBy('created_at', 'desc')->with('user:id,name,image')->withCount('comments', 'likes')
                ->with('likes', function ($like) {
                    return $like->where('user_id', auth()->user()->id)
                        ->select('id', 'user_id', 'post_id')->get();
                })
                ->get(),
        ], 200);
    }
// get single post

    public function show($id)
    {
        return response([
            'post' => Post::where('id', $id)->withCount('comments', 'answers', 'likes')->get(),
        ], 200);
    }

// create a post

    public function store(Request $request)
    {
        // validate fields
        $attrs = $request->validate([
            'body' => 'required|string',
        ]);

        $image = $this->saveImage($request-> image, 'posts');
        $post = Post::create([
            'body' => $attrs['body'],
            'user_id'=> auth()->user()->id,
            'image' => $image
        ]);

        //for now skipfor post

        return response([
            'message' => 'post created.',
            'post' => $post,
        ], 200);
    }

    // Update a post

    public function update(Request $request, $id)
    {
        $post = Post::find($id);
        if (!$post) {
            return response([
                'message' => 'Post not found.',
            ], 403);
        }

        if ($post->user_id != auth()->user()->id) {
            return response([
                'message' => 'Permission denied.',
            ], 403);
        }

        // validate fields
        $attrs = $request->validate([
            'body' => 'required|string',
        ]);

        $post->update([
            'body' => $attrs['body'],
        ]);
        //for now skipfor post image

        return response([
            'message' => 'post updated.',
            'post' => $post,
        ], 200);
    }

    //delete a post

    public function destroy($id)
    {
        $post = Post::find($id);
        if (!$post) {
            return response([
                'message' => 'Post not found.',
            ], 403);
        }

        if ($post->user_id != auth()->user()->id) {
            return response([
                'message' => 'Permission denied.',
            ], 403);
        }
        $post->comments()->delete();
        $post->answers()->delete();
        $post->likes()->delete();
        $post->delete();

        return response([
            'message' => 'post deleted.',
            'post' => $post,
        ], 200);

    }
}
