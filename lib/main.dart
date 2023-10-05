import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('HTTP POST Request Example'),
        ),
        body: Center(
          child: PostButton(),
        ),
      ),
    );
  }
}

class PostButton extends StatelessWidget {
  void postData() async {
    print("test");
    final url = Uri.parse('http://localhost:8080/company/company'); 
var test = "eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJLLTVCVm1EeUN3RWFoODg5NkhkU3ZxRXRvRDB1b3FCMkxqYmRHWUhtNm1jIn0.eyJleHAiOjE2OTY1MDU4ODEsImlhdCI6MTY5NjUwMjI4MSwianRpIjoiNTNkM2FkNjAtNTVhOC00OWYyLWI1NDQtOWI4ZTYwY2U5YjYzIiwiaXNzIjoiaHR0cHM6Ly9rZXljbG9hay1kZXYudXJiYW4tbW9uZXkuY29tL2F1dGgvcmVhbG1zL3VyYmFuLW1vbmV5IiwiYXVkIjoiYWNjb3VudCIsInN1YiI6ImRkYjgzZTdjLWYzZGItNDExNS1hNTg1LWM0YjJmNjk1N2I1ZCIsInR5cCI6IkJlYXJlciIsImF6cCI6InVyYmFubW9uZXktdGVzdC11c2VyIiwic2Vzc2lvbl9zdGF0ZSI6ImNkNTRiM2NhLWRlYTAtNDAzMC05NTRlLWIxMzQ1ZjRjMzM2YSIsImFjciI6IjEiLCJhbGxvd2VkLW9yaWdpbnMiOlsiLyoiXSwicmVhbG1fYWNjZXNzIjp7InJvbGVzIjpbIm9mZmxpbmVfYWNjZXNzIiwidW1hX2F1dGhvcml6YXRpb24iLCJkZWZhdWx0LXJvbGVzLXVyYmFuLW1vbmV5Il19LCJyZXNvdXJjZV9hY2Nlc3MiOnsiYWNjb3VudCI6eyJyb2xlcyI6WyJtYW5hZ2UtYWNjb3VudCIsIm1hbmFnZS1hY2NvdW50LWxpbmtzIiwidmlldy1wcm9maWxlIl19fSwic2NvcGUiOiJlbWFpbCBwcm9maWxlIiwic2lkIjoiY2Q1NGIzY2EtZGVhMC00MDMwLTk1NGUtYjEzNDVmNGMzMzZhIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImdlbmRlciI6InN0cmluZyIsInByZWZlcnJlZF91c2VybmFtZSI6IjlnOGlndTJ5IiwiZW1haWwiOiJ0aGlydTNkQGdtYWlsLmNvbSJ9.XTvVqWzqijYjynaAR9HMiXvehuwCRgu993VDAXc1QwHM0o3UgckqeZ1Bu7QCcSW9hWyptpknaC5Argk4NkAIxFn2jCB-uEtllvEGY_AKVqwJIfAXMXRQek-8x5u3Fd13NZJCeOPlp9tu8cJZgW4avlH7TnDM_8H82APEjXvBVof_qDLZ7ZH8Ayz2TYo2VUOgInpWyRSE4Wy4SCKjLEiBRshZvMMQYK1YL1KaaaBVhceehRX1vCDBUu88b0Dvvs6OlywUo_6weA8IK9e4pVvaYPSeoi008BitPEvYA-1haxkYk_1HPMacbm-4nt01WyOXrUyqfpzlaOVlp7N7JUcUiw";
    final headers = {
      'Content-Type': 'application/json',
      "Authorization": "Bearer $test"
    };

    final Map<String, dynamic> body = {
      
    "companyName":"JBin",
    "noOfEmployee":150,
    "tentativeSalaryDate":"01/01/2020",
    "status":"ACTIVE",
    "address":[
        {
    "address": "Chennai, India",
    "city": "Chennai",
    "state": "Tamilnadu",
    "pincode": "600015",
    "addressType": "Official",
    "rawAddressDs": null,
    "status": "1"
}
    ],
      
    };
  try {
   final response = await http.post(
      url,
      headers: headers,
      body: jsonEncode(body),
    );

    // if (response.statusCode == 200) {
    //   // Request was successful, handle the response data
    //   print('Response data: ${response.body}');
    // } else {
    //   // Request failed, handle the error
    //   print('Request failed with status code: ${response.statusCode}');
    // }
  } catch (err) {
print(err);
  }
 
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        postData();
      },
      child: Text('Send POST Request'),
    );
  }
}
