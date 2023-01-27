cmake_minimum_required(VERSION 3.25)

project (NimC)

# Bring in the required packages
find_package(antlr4-runtime REQUIRED)
find_package(antlr4-generator REQUIRED)

# Set path to generator
set(ANTLR4_JAR_LOCATION ${PROJECT_SOURCE_DIR}/antlr4/tool/target/antlr4-4.11.2-SNAPSHOT-complete.jar)

antlr4_generate(
    NimCParser 
    NimC.g4 
    BOTH 
    TRUE 
    FALSE
    "NimC"
    )

add_executable( NimC NimC.java )
