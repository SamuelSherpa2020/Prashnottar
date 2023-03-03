<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\Answer;

class AnswerController extends Controller
{
    
    // get all answers of a post
    public function index($id)
    {
        $post = Post::find($id);
        if (!$post) {
            return response([
                'message' => 'Post not found.',
            ], 403);
        }

        return response([
            'answers' => $post->answers()->with('user:id,name,image')->get(),
        ], 200);
    }

    //create a answer
    public function store(Request $request, $id)
    {
        $post = Post::find($id);
        if (!$post) {
            return response([
                'message' => 'Post not found.',
            ], 403);
        }

        //validate fields
        $attrs = $request->validate([
            'answer' => 'required|string',
        ]);

        Answer::create([
            'answer'=>$attrs['answer'],
            'post_id' => $id,
            'user_id' => auth()->user()->id,
        ]);

        return response([
            'message' => 'Answer created.',
        ], 200);
    }
// update a answer

    public function update(Request $request, $id)
    {
        $answer = Answer::find($id);

        if (!$answer) {
            return response([
                'message' => 'Answer not found.',
            ], 403);
        }
        if ($answer->user_id != auth()->user()->id) {
            return response([
                'message' => 'Permission denied.',
            ], 403);
        }

        //validate fields
        $attrs = $request->validate([
            'answer' => 'required|string',
        ]);

        $answer->update([
            'answer' => $attrs['answer'],
        ]);

        return response([
            'message' => 'answer updated.',
        ], 200);

    }

    //delete a answer
    public function destroy($id)
    {
        $answer = Answer::find($id);

        if (!$answer) {
            return response([
                'message' => 'Answer not found.',
            ], 403);
        }
        if ($answer->user_id != auth()->user()->id) {
            return response([
                'message' => 'Permission denied.',
            ], 403);
        }

        $answer->delete();
        return response([
            'message' => 'Answer deleted'
        ],200);
    }
}
