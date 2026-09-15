package com.dao;

import java.util.List;

import com.model.TaskModel;

public interface TaskOperationInfo {
    boolean createTask(TaskModel tm);
    boolean updateTaskbyId(int id,TaskModel tm);
    boolean deleteTaskbyId(int id);
    TaskModel findTaskById(int id);
    List<TaskModel> getAllTasks();
}
