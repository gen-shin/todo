import 'package:mobx/mobx.dart';
import 'package:todo/models/task.dart';

part 'task_store.g.dart';

class TaskStore = _TaskStore with _$TaskStore;

abstract class _TaskStore with Store {
  @observable
  ObservableList<Task> tasks = ObservableList<Task>.of([]);

  @computed
  int get numOfTasks => tasks.where((t) => !t.isDone).length;

  @action
  void add(Task task) {
    tasks.add(task);
  }

  @action
  void remove(int idx) {
    tasks.removeAt(idx);
  }

  @action
  void updateStatus(int idx) {
    tasks[idx] = Task(name: tasks[idx].name, isDone: !tasks[idx].isDone);
  }
}
