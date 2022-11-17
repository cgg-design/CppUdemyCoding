#define CATCH_CONFIG_MAIN

#include <catch2/catch.hpp>

#include "my_lib.h"

TEST_CASE( "Factorials are computed", "[factorial]" ) {
    REQUIRE( factorial(0) == 1 );
    REQUIRE( factorial(1) == 2 );
    REQUIRE( factorial(2) == 2 );
    REQUIRE( factorial(3) == 6 );
    REQUIRE( factorial(10) == 3628800 );
}

// TEST_CASE( "Factorials are computed", "[factorial]" ) {
//     REQUIRE(  );
    
// }

TEST_CASE("Comparison checks", "TestEq") {
    REQUIRE(IsEq( 3, 3) == true );
    REQUIRE(IsEq( 0, 1) == false );
}


