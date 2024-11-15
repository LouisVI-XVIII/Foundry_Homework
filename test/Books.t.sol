// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "forge-std/Test.sol";
import "../src/Books.sol";

contract BooksTest is Test {
    Books books;

    function setUp() public {
        books = new Books("Programming Foundry", "Pierre Tidou", 100);
    }

    function test_get_book() public {
        Books.Book memory book = books.get_book();
        assertEq(book.title, "Programming Foundry");
        assertEq(book.author, "Pierre Tidou");
        assertEq(book.pages, 100);
    }

    function test_updatePages() public {
        books.update_pages(200);
        Books.Book memory updatedBook = books.get_book();
        assertEq(updatedBook.pages, 200);
    }
}