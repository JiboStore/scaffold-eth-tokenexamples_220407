pragma solidity >=0.6.0 <0.7.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Unlimited is ERC20 {

    address public creator;
    address public latestMinter;

    constructor() ERC20("Unlimited", "UNLI") public {
      creator = msg.sender;
    }

    function mintTokens() public {
      latestMinter = msg.sender;
      _mint(msg.sender, 10000000000000000000);
    }

}
