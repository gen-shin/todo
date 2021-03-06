// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TaskStore on _TaskStore, Store {
  Computed<int>? _$numOfTasksComputed;

  @override
  int get numOfTasks => (_$numOfTasksComputed ??=
          Computed<int>(() => super.numOfTasks, name: '_TaskStore.numOfTasks'))
      .value;

  final _$tasksAtom = Atom(name: '_TaskStore.tasks');

  @override
  ObservableList<Task> get tasks {
    _$tasksAtom.reportRead();
    return super.tasks;
  }

  @override
  set tasks(ObservableList<Task> value) {
    _$tasksAtom.reportWrite(value, super.tasks, () {
      super.tasks = value;
    });
  }

  final _$_TaskStoreActionController = ActionController(name: '_TaskStore');

  @override
  void add(Task task) {
    final _$actionInfo =
        _$_TaskStoreActionController.startAction(name: '_TaskStore.add');
    try {
      return super.add(task);
    } finally {
      _$_TaskStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void remove(int idx) {
    final _$actionInfo =
        _$_TaskStoreActionController.startAction(name: '_TaskStore.remove');
    try {
      return super.remove(idx);
    } finally {
      _$_TaskStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateStatus(int idx) {
    final _$actionInfo = _$_TaskStoreActionController.startAction(
        name: '_TaskStore.updateStatus');
    try {
      return super.updateStatus(idx);
    } finally {
      _$_TaskStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tasks: ${tasks},
numOfTasks: ${numOfTasks}
    ''';
  }
}
