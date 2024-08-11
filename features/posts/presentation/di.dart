// ignore_for_file: unused_import

import '../data/data_source/post_remote_data.dart';
import '../data/repository/post_repository_imp.dart';
import '../domain/entity/post.dart';
import '../domain/usecases/add_post.dart';
import '../domain/usecases/delete_post.dart';
import '../domain/usecases/get_all_posts.dart';
import '../domain/usecases/get_post.dart';
import '../domain/usecases/update_post.dart';
import 'states.dart';

PostRepositoryImp postRepositoryImp = PostRepositoryImp(PostRemoteData());
//usecases
//GetAllPosts getAllposts = GetAllPosts(PostRepositoryImp(PostRemoteData()));

GetPost getPost = GetPost(postRepositoryImp);
GetAllPosts getAllPosts = GetAllPosts(postRepositoryImp);
AddPost addPost = AddPost(postRepositoryImp);
UpdatePost updatePost = UpdatePost(postRepositoryImp);
DeletePost deletePost = DeletePost(postRepositoryImp);

//states

GetPostState getPostState = GetPostState();
GetAllPostsState getAllPostsState = GetAllPostsState();
AddPostState addPostState = AddPostState();
UpdatePostState updatePostState = UpdatePostState();
DeletePostState deletePostState = DeletePostState();
