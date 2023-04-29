/*

  Created by: Bakhromjon Polat
  Created on: Apr 21 2023 07:34:19
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:dart_frog/dart_frog.dart';

import '../components/responses.dart';

Handler onPostRequestMiddleware(Handler handler) {
  return (context) {
    final method = context.request.method;
    if (method != HttpMethod.post) {
      return AppResponse.notFound();
    }
    final response = handler(context);
    return response;
  };
}

Handler onGetRequestMiddleware(Handler handler) {
  return (context) {
    final method = context.request.method;
    if (method != HttpMethod.get) {
      return AppResponse.notFound();
    }
    final response = handler(context);
    return response;
  };
}

Handler onPutRequestMiddleware(Handler handler) {
  return (context) {
    final method = context.request.method;
    if (method != HttpMethod.put) {
      return AppResponse.notFound();
    }
    final response = handler(context);
    return response;
  };
}

Handler onDeleteRequestMiddleware(Handler handler) {
  return (context) {
    final method = context.request.method;
    if (method != HttpMethod.post) {
      return AppResponse.notFound();
    }
    final response = handler(context);
    return response;
  };
}
