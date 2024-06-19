import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled2/9.2%20Call%20Pixabay%20API%20&%20Represent%20in%20UI/provider/provider.dart';

TextEditingController controller = TextEditingController();

class ApiData extends StatelessWidget {
  const ApiData({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: controller,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Provider.of<ApiProvider>(context,listen: false).fetchData(controller.text);
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: Provider.of<ApiProvider>(context,listen: true).isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : GridView.builder(
              itemCount: Provider.of<ApiProvider>(context,listen: true).data['hits']?.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) => Card(
                  child: Image.network(
                      fit: BoxFit.cover,
                      Provider.of<ApiProvider>(context,listen: true).data['hits'][index]['largeImageURL'])),
            ),
    );
  }
}
