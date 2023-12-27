// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract SalaryInfo  {
    struct User {
        uint salaryId;
        string name;
        string image;
        uint salary;
    }
    User[] private users;
    address public  owner;

    constructor()    {
        owner = msg.sender;
    }

    function getAddressContract() public view    returns (address ) {
        return address(this);
    }

    function addUser(uint _salaryId, string  memory _name,  string memory _image , uint _salary) public   {
        users.push(User(_salaryId, _name, _image, _salary));
    }


    function getUsersCount()  public view    returns (uint) {
        return users.length;
    }

    function getUser(uint index) public view   returns(uint ,  string memory ,  string memory , uint) {
        return (users[index].salaryId, users[index].name, users[index].image, users[index].salary);
    }
}