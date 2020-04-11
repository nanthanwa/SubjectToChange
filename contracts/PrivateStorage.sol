pragma solidity 0.6.6;


contract PrivateStorage {
    bytes32 private nameBytes32;
    string private nameString;
    address private user;
    uint256 private num;
    bool private checked;

    constructor() public {
        emit Broadcast(now, "Contract Created!");
    }

    function broadcast(string memory _output) public returns (bool) {
        emit Broadcast(now, _output);
        return true;
    }

    function setNameBytes32(bytes32 _name) public {
        nameBytes32 = _name;
    }

    function getNameBytes32() public view returns (bytes32) {
        return nameBytes32;
    }

    function setNameString(string memory _name) public {
        nameString = _name;
    }

    function getNameString() public view returns (string memory) {
        return nameString;
    }

    function setUser(address _user) public {
        user = _user;
    }

    function getUser() public view returns (address) {
        return user;
    }

    function setNumber(uint256 _num) public {
        num = _num;
    }

    function getNumber() public view returns (uint256) {
        return num;
    }

    function setCheck(bool _check) public {
        checked = _check;
    }

    function isChecked() public view returns (bool) {
        return checked;
    }

    function stringToBytes32(string memory source)
        public
        pure
        returns (bytes32 result)
    {
        bytes memory tempEmptyStringTest = bytes(source);
        if (tempEmptyStringTest.length == 0) {
            return 0x0;
        }

        assembly {
            result := mload(add(source, 32))
        }
    }

    event Broadcast(uint256 timestamp, string output);
}
