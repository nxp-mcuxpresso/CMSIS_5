#Description: Middleware issdk drivers cmsis_drivers; user_visible: True
include_guard(GLOBAL)
message("middleware_issdk_drivers_cmsis_drivers component is included.")

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}/.
)


