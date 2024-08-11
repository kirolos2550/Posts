// ignore_for_file: unused_local_variable, unused_import

import 'dart:io';

import '../domain/entity/post.dart';
import '../domain/usecases/update_post.dart';
import 'di.dart';
import 'msgs.dart';

sealed class PostStates {}

class AddPostState extends PostStates {
  void call() {
    recieverMsg('the title of the post');
    String title = stdin.readLineSync()!; // the ! ?
    recieverMsg('the body of the post');
    String body = stdin.readLineSync()!;
    addPost(Post(title: title, body: body));
    endTaskMsg();
  }
}

class DeletePostState extends PostStates {
  void call() {
    recieverMsg('the id of the post you want to delete');
    int id = int.parse(stdin.readLineSync()!);
    deletePost(id);
    endTaskMsg();
  }
}

class GetAllPostsState extends PostStates {
  void call() {
    getAllPosts().forEach((post) {
      print('''
Post id: ${post.id}
Post Title:${post.title}
Post Body:${post.body}

*************************************************************


''');
    });
  }
}

class GetPostState extends PostStates {
  void call() {
    recieverMsg('the id no. of the post');
    int id = int.parse(stdin.readLineSync()!);
    Post post = getPost(id);
    print('''
Post id: ${post.id}
Post Title:${post.title}
Post Body:${post.body}

''');
    endTaskMsg();
  }
}

class UpdatePostState extends PostStates {
  void call() {
    recieverMsg('the id no. of the post');
    int id = int.parse(stdin.readLineSync()!);
    Post post = getPost(id);
    recieverMsg('the new title of the post');
    String title = stdin.readLineSync()!;
    recieverMsg('the new body of the post');
    String body = stdin.readLineSync()!;
    updatePost(Post(title: title, body: body,id: id));
    endTaskMsg();
  }
}
