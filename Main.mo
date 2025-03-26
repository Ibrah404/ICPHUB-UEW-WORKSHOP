import Debug "mo:base/Debug";
import Option "mo:base/Option";

actor Winnebaworkshop{

  // Add task

  type task ={
      title : text;
      description : text;
      isCompleteed : Bool;
  };

  stable var currentTask : ?Task = null;

  // function addtask
public func addTask (title: Text, description : Text ,) : async Text {
    if (currentTask == null or Option.unwrap(currentTask).isCompleted == true){
      currentTask := ? {title = title; description; isCompleted = false};
      return "Add Task sucessful ";
    }
    else {
      return "complete task before adding a new";
      };
};
