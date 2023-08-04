include_guard(GLOBAL)


if (CONFIG_USE_CMSIS_Include_core_cm)
# Add set(CONFIG_USE_CMSIS_Include_core_cm true) in config.cmake to use this component

message("CMSIS_Include_core_cm component is included from ${CMAKE_CURRENT_LIST_FILE}.")

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/Core/Include/.
)


endif()


if (CONFIG_USE_CMSIS_Driver_Include_USART)
# Add set(CONFIG_USE_CMSIS_Driver_Include_USART true) in config.cmake to use this component

message("CMSIS_Driver_Include_USART component is included from ${CMAKE_CURRENT_LIST_FILE}.")

# template file
# ${CMAKE_CURRENT_LIST_DIR}/Driver/DriverTemplates/Driver_USART.c

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/Driver/Include
)


endif()


if (CONFIG_USE_CMSIS_Driver_Include_CAN)
# Add set(CONFIG_USE_CMSIS_Driver_Include_CAN true) in config.cmake to use this component

message("CMSIS_Driver_Include_CAN component is included from ${CMAKE_CURRENT_LIST_FILE}.")

# template file
# ${CMAKE_CURRENT_LIST_DIR}/Driver/DriverTemplates/Driver_CAN.c

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/Driver/Include
)


endif()


if (CONFIG_USE_CMSIS_Driver_Include_Ethernet)
# Add set(CONFIG_USE_CMSIS_Driver_Include_Ethernet true) in config.cmake to use this component

message("CMSIS_Driver_Include_Ethernet component is included from ${CMAKE_CURRENT_LIST_FILE}.")

# template file
# ${CMAKE_CURRENT_LIST_DIR}/Driver/DriverTemplates/Driver_ETH_MAC.c
# ${CMAKE_CURRENT_LIST_DIR}/Driver/DriverTemplates/Driver_ETH_PHY.c

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/Driver/Include
)


endif()


if (CONFIG_USE_CMSIS_Driver_Include_Ethernet_MAC)
# Add set(CONFIG_USE_CMSIS_Driver_Include_Ethernet_MAC true) in config.cmake to use this component

message("CMSIS_Driver_Include_Ethernet_MAC component is included from ${CMAKE_CURRENT_LIST_FILE}.")

# template file
# ${CMAKE_CURRENT_LIST_DIR}/Driver/DriverTemplates/Driver_ETH_MAC.c

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/Driver/Include
)


endif()


if (CONFIG_USE_CMSIS_Driver_Include_Ethernet_PHY)
# Add set(CONFIG_USE_CMSIS_Driver_Include_Ethernet_PHY true) in config.cmake to use this component

message("CMSIS_Driver_Include_Ethernet_PHY component is included from ${CMAKE_CURRENT_LIST_FILE}.")

# template file
# ${CMAKE_CURRENT_LIST_DIR}/Driver/DriverTemplates/Driver_ETH_PHY.c

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/Driver/Include
)


endif()


if (CONFIG_USE_CMSIS_Driver_Include_Flash)
# Add set(CONFIG_USE_CMSIS_Driver_Include_Flash true) in config.cmake to use this component

message("CMSIS_Driver_Include_Flash component is included from ${CMAKE_CURRENT_LIST_FILE}.")

# template file
# ${CMAKE_CURRENT_LIST_DIR}/Driver/DriverTemplates/Driver_Flash.c

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/Driver/Include
)


endif()


if (CONFIG_USE_CMSIS_Driver_Include_I2C)
# Add set(CONFIG_USE_CMSIS_Driver_Include_I2C true) in config.cmake to use this component

message("CMSIS_Driver_Include_I2C component is included from ${CMAKE_CURRENT_LIST_FILE}.")

# template file
# ${CMAKE_CURRENT_LIST_DIR}/Driver/DriverTemplates/Driver_I2C.c

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/Driver/Include
)


endif()


if (CONFIG_USE_CMSIS_Driver_Include_MCI)
# Add set(CONFIG_USE_CMSIS_Driver_Include_MCI true) in config.cmake to use this component

message("CMSIS_Driver_Include_MCI component is included from ${CMAKE_CURRENT_LIST_FILE}.")

# template file
# ${CMAKE_CURRENT_LIST_DIR}/Driver/DriverTemplates/Driver_MCI.c

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/Driver/Include
)


endif()


if (CONFIG_USE_CMSIS_Driver_Include_NAND)
# Add set(CONFIG_USE_CMSIS_Driver_Include_NAND true) in config.cmake to use this component

message("CMSIS_Driver_Include_NAND component is included from ${CMAKE_CURRENT_LIST_FILE}.")

# template file
# ${CMAKE_CURRENT_LIST_DIR}/Driver/DriverTemplates/Driver_NAND.c

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/Driver/Include
)


endif()


if (CONFIG_USE_CMSIS_Driver_Include_SAI)
# Add set(CONFIG_USE_CMSIS_Driver_Include_SAI true) in config.cmake to use this component

message("CMSIS_Driver_Include_SAI component is included from ${CMAKE_CURRENT_LIST_FILE}.")

# template file
# ${CMAKE_CURRENT_LIST_DIR}/Driver/DriverTemplates/Driver_SAI.c

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/Driver/Include
)


endif()


if (CONFIG_USE_CMSIS_Driver_Include_SPI)
# Add set(CONFIG_USE_CMSIS_Driver_Include_SPI true) in config.cmake to use this component

message("CMSIS_Driver_Include_SPI component is included from ${CMAKE_CURRENT_LIST_FILE}.")

# template file
# ${CMAKE_CURRENT_LIST_DIR}/Driver/DriverTemplates/Driver_SPI.c

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/Driver/Include
)


endif()


if (CONFIG_USE_CMSIS_Driver_Include_USB_Device)
# Add set(CONFIG_USE_CMSIS_Driver_Include_USB_Device true) in config.cmake to use this component

message("CMSIS_Driver_Include_USB_Device component is included from ${CMAKE_CURRENT_LIST_FILE}.")

# template file
# ${CMAKE_CURRENT_LIST_DIR}/Driver/DriverTemplates/Driver_USBD.c

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/Driver/Include
)


endif()


if (CONFIG_USE_CMSIS_Driver_Include_USB_Host)
# Add set(CONFIG_USE_CMSIS_Driver_Include_USB_Host true) in config.cmake to use this component

message("CMSIS_Driver_Include_USB_Host component is included from ${CMAKE_CURRENT_LIST_FILE}.")

# template file
# ${CMAKE_CURRENT_LIST_DIR}/Driver/DriverTemplates/Driver_USBH.c

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/Driver/Include
)


endif()


if (CONFIG_USE_CMSIS_Driver_Include_WiFi)
# Add set(CONFIG_USE_CMSIS_Driver_Include_WiFi true) in config.cmake to use this component

message("CMSIS_Driver_Include_WiFi component is included from ${CMAKE_CURRENT_LIST_FILE}.")

# template file
# ${CMAKE_CURRENT_LIST_DIR}/Driver/DriverTemplates/Driver_WiFi.c

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/Driver/Include
)


endif()


if (CONFIG_USE_CMSIS_Device_API_OSTick)
# Add set(CONFIG_USE_CMSIS_Device_API_OSTick true) in config.cmake to use this component

message("CMSIS_Device_API_OSTick component is included from ${CMAKE_CURRENT_LIST_FILE}.")

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/RTOS2/Include/.
)


endif()


if (CONFIG_USE_CMSIS_Device_API_RTOS2)
# Add set(CONFIG_USE_CMSIS_Device_API_RTOS2 true) in config.cmake to use this component

message("CMSIS_Device_API_RTOS2 component is included from ${CMAKE_CURRENT_LIST_FILE}.")

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/RTOS2/Include/.
)


endif()


if (CONFIG_USE_CMSIS_RTOS2_Secure)
# Add set(CONFIG_USE_CMSIS_RTOS2_Secure true) in config.cmake to use this component

message("CMSIS_RTOS2_Secure component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_CMSIS_Device_API_OSTick AND CONFIG_USE_CMSIS_Device_API_RTOS2)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/RTOS2/RTX/Source/rtx_lib.c
  ${CMAKE_CURRENT_LIST_DIR}/RTOS2/RTX/Config/RTX_Config.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/RTOS2/RTX/Source
  ${CMAKE_CURRENT_LIST_DIR}/RTOS2/RTX/Include
  ${CMAKE_CURRENT_LIST_DIR}/RTOS2/RTX/Config
)

if((CONFIG_TOOLCHAIN STREQUAL armgcc OR CONFIG_TOOLCHAIN STREQUAL mcux) AND CONFIG_CORE STREQUAL cm0p)
  target_link_libraries(${MCUX_SDK_PROJECT_NAME} PRIVATE
    -Wl,--start-group
      ${CMAKE_CURRENT_LIST_DIR}/RTOS2/RTX/Library/GCC/libRTX_CM0.a
      -Wl,--end-group
  )
endif()

if((CONFIG_TOOLCHAIN STREQUAL armgcc OR CONFIG_TOOLCHAIN STREQUAL mcux) AND (CONFIG_CORE STREQUAL cm4f OR CONFIG_CORE STREQUAL cm7f))
  target_link_libraries(${MCUX_SDK_PROJECT_NAME} PRIVATE
    -Wl,--start-group
      ${CMAKE_CURRENT_LIST_DIR}/RTOS2/RTX/Library/GCC/libRTX_CM4F.a
      -Wl,--end-group
  )
endif()

if(CONFIG_COMPILER STREQUAL gcc AND CONFIG_CORE STREQUAL cm33 AND CONFIG_FPU STREQUAL SP_FPU)
  target_link_libraries(${MCUX_SDK_PROJECT_NAME} PRIVATE
    -Wl,--start-group
      ${CMAKE_CURRENT_LIST_DIR}/RTOS2/RTX/Library/GCC/libRTX_V8MMF.a
      -Wl,--end-group
  )
endif()

else()

message(SEND_ERROR "CMSIS_RTOS2_Secure dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_CMSIS_RTOS2_NonSecure)
# Add set(CONFIG_USE_CMSIS_RTOS2_NonSecure true) in config.cmake to use this component

message("CMSIS_RTOS2_NonSecure component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_CMSIS_Device_API_OSTick AND CONFIG_USE_CMSIS_Device_API_RTOS2)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/RTOS2/RTX/Source/rtx_lib.c
  ${CMAKE_CURRENT_LIST_DIR}/RTOS2/RTX/Config/RTX_Config.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/RTOS2/RTX/Source
  ${CMAKE_CURRENT_LIST_DIR}/RTOS2/RTX/Include
  ${CMAKE_CURRENT_LIST_DIR}/RTOS2/RTX/Config
)

if((CONFIG_TOOLCHAIN STREQUAL armgcc OR CONFIG_TOOLCHAIN STREQUAL mcux) AND CONFIG_CORE STREQUAL cm0p)
  target_link_libraries(${MCUX_SDK_PROJECT_NAME} PRIVATE
    -Wl,--start-group
      ${CMAKE_CURRENT_LIST_DIR}/RTOS2/RTX/Library/GCC/libRTX_CM0.a
      -Wl,--end-group
  )
endif()

if((CONFIG_TOOLCHAIN STREQUAL armgcc OR CONFIG_TOOLCHAIN STREQUAL mcux) AND (CONFIG_CORE STREQUAL cm4f OR CONFIG_CORE STREQUAL cm7f))
  target_link_libraries(${MCUX_SDK_PROJECT_NAME} PRIVATE
    -Wl,--start-group
      ${CMAKE_CURRENT_LIST_DIR}/RTOS2/RTX/Library/GCC/libRTX_CM4F.a
      -Wl,--end-group
  )
endif()

if(CONFIG_COMPILER STREQUAL gcc AND CONFIG_CORE STREQUAL cm33 AND CONFIG_FPU STREQUAL SP_FPU)
  target_link_libraries(${MCUX_SDK_PROJECT_NAME} PRIVATE
    -Wl,--start-group
      ${CMAKE_CURRENT_LIST_DIR}/RTOS2/RTX/Library/GCC/libRTX_V8MMFN.a
      -Wl,--end-group
  )
endif()

else()

message(SEND_ERROR "CMSIS_RTOS2_NonSecure dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()

