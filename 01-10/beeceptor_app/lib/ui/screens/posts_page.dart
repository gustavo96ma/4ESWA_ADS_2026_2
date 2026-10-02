import 'package:beeceptor_app/providers/posts_provider.dart';
import 'package:beeceptor_app/ui/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PostsPage extends StatelessWidget {
  const PostsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(title: 'Posts Page'),
      ),
      body: Consumer<PostsProvider>(
        builder: (context, provider, child) {
          if (provider.isLoading) {
            return Center(child: CircularProgressIndicator());
          }

          if (provider.error != null) {
            return Center(
              child: Padding(
                padding: EdgeInsetsGeometry.all(16),
                child: Column(
                  children: [Icon(Icons.error_outline), Text(provider.error!)],
                ),
              ),
            );
          }

          return ListView.builder(
            itemCount: provider.posts.length,
            itemBuilder: (context, index) {
              final post = provider.posts[index];
              return ListTile(
                title: Text(post.title),
                subtitle: Text(post.body),
              );
            },
          );
        },
      ),
    );
  }
}
