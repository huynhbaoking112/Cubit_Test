

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/models/list_model.dart';

class TodoCuti extends Cubit<List<Todo>> {

    TodoCuti() : super([]);

    void addTodo(String text){
      if(text.isEmpty){
        addError("Title cannot be empty");
        return;
       }
     Todo myNewTodo = Todo(title: text, date: DateTime.now().toString());
      emit([...state, myNewTodo]);
    }

    @override
  void onError(Object error, StackTrace stackTrace) {
    // TODO: implement onError
    super.onError(error, stackTrace);
    print(error);
  }

}