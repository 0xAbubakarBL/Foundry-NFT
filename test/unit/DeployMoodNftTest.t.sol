// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.20;

import {Test, console} from "forge-std/Test.sol";
import {DeployMoodNft} from "../../script/DeployMoodNft.s.sol";
import {Base64} from "@openzeppelin/contracts/utils/Base64.sol";

contract DeployMoodNftTest is Test {
    DeployMoodNft deployer;

    function setUp() public {
        deployer = new DeployMoodNft();
    }

    function testConvertSvgToUri() public view {
        string memory expectedUri =
            "data:application/json;base64,eyJuYW1lIjoiTW9vZCBORlQiLCAiZGVzY3JpcHRpb24iOiJBbiBORlQgdGhhdCByZWZsZWN0cyB0aGUgbW9vZCBvZiB0aGUgb3duZXIsIDEwMCUgb24gQ2hhaW4hIiwgImF0dHJpYnV0ZXMiOiBbeyJ0cmFpdF90eXBlIjogIm1vb2RpbmVzcyIsICJ2YWx1ZSI6IDEwMH1dLCAiaW1hZ2UiOiJkYXRhOmltYWdlL3N2Zyt4bWw7YmFzZTY0LFBITjJaeUIyYVdWM1FtOTRQU0l3SURBZ01qQXdJREl3TUNJZ2QybGtkR2c5SWpRd01DSWdJR2hsYVdkb2REMGlOREF3SWlCNGJXeHVjejBpYUhSMGNEb3ZMM2QzZHk1M015NXZjbWN2TWpBd01DOXpkbWNpUGp4amFYSmpiR1VnWTNnOUlqRXdNQ0lnWTNrOUlqRXdNQ0lnWm1sc2JEMGllV1ZzYkc5M0lpQnlQU0kzT0NJZ2MzUnliMnRsUFNKaWJHRmpheUlnYzNSeWIydGxMWGRwWkhSb1BTSXpJaTgrUEdjZ1kyeGhjM005SW1WNVpYTWlQanhqYVhKamJHVWdZM2c5SWpjd0lpQmplVDBpT0RJaUlISTlJakV5SWk4K1BHTnBjbU5zWlNCamVEMGlNVEkzSWlCamVUMGlPRElpSUhJOUlqRXlJaTgrUEM5blBqeHdZWFJvSUdROUltMHhNell1T0RFZ01URTJMalV6WXk0Mk9TQXlOaTR4TnkwMk5DNHhNU0EwTWkwNE1TNDFNaTB1TnpNaUlITjBlV3hsUFNKbWFXeHNPbTV2Ym1VN0lITjBjbTlyWlRvZ1lteGhZMnM3SUhOMGNtOXJaUzEzYVdSMGFEb2dNenNpTHo0OEwzTjJaejRpIn0=";
        string memory svg =
            '<svg viewBox="0 0 200 200" width="400"  height="400" xmlns="http://www.w3.org/2000/svg"><circle cx="100" cy="100" fill="yellow" r="78" stroke="black" stroke-width="3"/><g class="eyes"><circle cx="70" cy="82" r="12"/><circle cx="127" cy="82" r="12"/></g><path d="m136.81 116.53c.69 26.17-64.11 42-81.52-.73" style="fill:none; stroke: black; stroke-width: 3;"/></svg>';

        string memory actualUri = deployer.svgToImageURI(svg);
        console.log(expectedUri);
        console.log(actualUri);
        assert(keccak256(abi.encodePacked(expectedUri)) == keccak256(abi.encodePacked(actualUri)));
    }
}
