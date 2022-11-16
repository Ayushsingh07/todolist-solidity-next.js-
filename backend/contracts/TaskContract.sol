// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract TaskContract {
  event ADDTask(address recipient,uint taskId);
  event DeleteTask(uint taskId,bool idDeleted);
  struct Task{
    uint id;
    string taskText;
    bool isDeleted;
  }
 Task[] private tasks;
  mapping(uint256 =>address)taskToOwner;
  function addTask(string memory taskText,bool isDeleted);
  external {
            uint taskId= tasks.length;
            tasks.push(Task(taskID,testText,isDeleted))
            taskTOOwnerr[taskId]=msg.sender;
            emit ADDTask(msg.sender,taskId);
    
  }
  function getMyTasks()external view returns (Task[] memory){
    Task[] temporary=new Task[](tasks.length);
    uint counter =0;
    for (uint i=0; i<tasks.length;i++){
      if(taskToOwner[i]==msg.sender && tasks.isDeleted == false){

        temporary[counter]=tasks[i];
        counter++;
      }
      
    }
    Task[] memory result = new Task[](counter);
    for (uint i=0; i<counter; i++){
      result[i]=temporary[i];
      
    }
    return result;
  }
}
