import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learnriverpod/providers.dart';

class FutureNotifierProviderScreen extends ConsumerStatefulWidget {
  const FutureNotifierProviderScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<FutureNotifierProviderScreen> createState() =>
      _FutureNotifierProviderScreenState();
}

class _FutureNotifierProviderScreenState
    extends ConsumerState<FutureNotifierProviderScreen> {
  @override
  Widget build(BuildContext context) {
    final userData = ref.watch(userDataProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade200,
        title: const Text("Future Notifier Provider", style: TextStyle(color: Colors.black),),
      ),
      body: userData.when(
          data: (data) {
            return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
                    child: Card(
                      elevation: 2.0,
                      borderOnForeground: true,
                      shadowColor: Colors.green.shade200,
                      clipBehavior: Clip.antiAlias,
                      surfaceTintColor: Colors.green.shade200,
                      child: ListTile(
                        leading: CircleAvatar(child: Image.network("${data[index].avatar}"),),
                        title: Text(
                            "${data[index].firstName}  ${data[index].lastName}"),
                        subtitle: Text("${data[index].email}"),
                      ),
                    ),
                  );
                });
          },
          error: ((error, stackTrace) => Text(error.toString())),
          loading: () {
            return Center(
              child: CircularProgressIndicator(
                color: Colors.green.shade200,
              ),
            );
          }),
    );
  }
}
