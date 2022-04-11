pragma solidity >=0.6.0 <0.7.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Burnable is ERC20 {

    address public creator;

    constructor() ERC20("Burnable", "BURN") public {
      creator = msg.sender;
    }

    function mintTokens() public {
      _mint(msg.sender, 10000000000000000000);
    }

    function burnTokens() public {
      uint256 balanceToBurn = balanceOf(msg.sender);
      _burn(msg.sender, balanceToBurn);
    }

}
