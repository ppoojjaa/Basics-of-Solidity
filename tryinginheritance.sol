//SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;

contract parentContract {
    function inheritance() public pure virtual returns (string memory) {
        return "Parent function!";
    }
}

contract firstChild is parentContract {
    function inheritance() public pure virtual override returns (string memory) {
        return "First child function";
    }
}

contract sevondChild is parentContract {
    function inheritance() public pure virtual override returns (string memory) {
        return "Second child function";
    }
}
contract multipleInheritance is firstChild, sevondChild {
    function inheritance() public pure override(firstChild, sevondChild) returns (string memory) {
        return super.inheritance();
    }
}
