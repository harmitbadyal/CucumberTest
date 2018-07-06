project(HelloBDD)

include_directories($CUKE_INCLUDE_DIRS} src)
include_directories(/home/hbadyal/cucumber-cpp/build/src)
include_directories(/home/hbadyal/cucumber-cpp/include)
add_library(HelloBDD src/Hello)

if(GMOCK_FOUND)
	add_executable(HelloBDDSteps features/step_definitions/HelloBDDSteps)
	#target_link_libraries(HelloBDDSteps HelloBDD ${CUKE_LIBRARIES} ${CUKE_GTEST_LIBRARIES})
	 target_link_libraries(HelloBDDSteps PRIVATE HelloBDD cucumber-cpp GTest::GTest)
	target_compile_features(HelloBDDSteps PRIVATE cxx_variadic_templates)
endif()
