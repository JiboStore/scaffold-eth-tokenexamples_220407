pragma solidity >=0.6.0 <0.7.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Fixed is ERC20 {

    address public creator;

    constructor() ERC20("Fixed", "FIX") public {
      creator = msg.sender;
      _mint(msg.sender, 10000000000000000000);
    }

}
