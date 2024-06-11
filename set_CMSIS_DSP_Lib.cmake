include_guard(GLOBAL)


if (CONFIG_USE_CMSIS_DSP_Include)
# Add set(CONFIG_USE_CMSIS_DSP_Include true) in config.cmake to use this component

message("CMSIS_DSP_Include component is included from ${CMAKE_CURRENT_LIST_FILE}.")

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/DSP/Include
  ${CMAKE_CURRENT_LIST_DIR}/DSP/PrivateInclude
)


endif()


if (CONFIG_USE_CMSIS_DSP_Source)
# Add set(CONFIG_USE_CMSIS_DSP_Source true) in config.cmake to use this component

message("CMSIS_DSP_Source component is included from ${CMAKE_CURRENT_LIST_FILE}.")

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/DSP/Source/BasicMathFunctions/BasicMathFunctions.c
  ${CMAKE_CURRENT_LIST_DIR}/DSP/Source/BasicMathFunctions/BasicMathFunctionsF16.c
  ${CMAKE_CURRENT_LIST_DIR}/DSP/Source/BayesFunctions/BayesFunctions.c
  ${CMAKE_CURRENT_LIST_DIR}/DSP/Source/BayesFunctions/BayesFunctionsF16.c
  ${CMAKE_CURRENT_LIST_DIR}/DSP/Source/CommonTables/CommonTables.c
  ${CMAKE_CURRENT_LIST_DIR}/DSP/Source/CommonTables/CommonTablesF16.c
  ${CMAKE_CURRENT_LIST_DIR}/DSP/Source/ComplexMathFunctions/ComplexMathFunctions.c
  ${CMAKE_CURRENT_LIST_DIR}/DSP/Source/ComplexMathFunctions/ComplexMathFunctionsF16.c
  ${CMAKE_CURRENT_LIST_DIR}/DSP/Source/ControllerFunctions/ControllerFunctions.c
  ${CMAKE_CURRENT_LIST_DIR}/DSP/Source/DistanceFunctions/DistanceFunctions.c
  ${CMAKE_CURRENT_LIST_DIR}/DSP/Source/DistanceFunctions/DistanceFunctionsF16.c
  ${CMAKE_CURRENT_LIST_DIR}/DSP/Source/FastMathFunctions/FastMathFunctions.c
  ${CMAKE_CURRENT_LIST_DIR}/DSP/Source/FastMathFunctions/FastMathFunctionsF16.c
  ${CMAKE_CURRENT_LIST_DIR}/DSP/Source/FilteringFunctions/FilteringFunctions.c
  ${CMAKE_CURRENT_LIST_DIR}/DSP/Source/FilteringFunctions/FilteringFunctionsF16.c
  ${CMAKE_CURRENT_LIST_DIR}/DSP/Source/InterpolationFunctions/InterpolationFunctions.c
  ${CMAKE_CURRENT_LIST_DIR}/DSP/Source/InterpolationFunctions/InterpolationFunctionsF16.c
  ${CMAKE_CURRENT_LIST_DIR}/DSP/Source/MatrixFunctions/MatrixFunctions.c
  ${CMAKE_CURRENT_LIST_DIR}/DSP/Source/MatrixFunctions/MatrixFunctionsF16.c
  ${CMAKE_CURRENT_LIST_DIR}/DSP/Source/QuaternionMathFunctions/QuaternionMathFunctions.c
  ${CMAKE_CURRENT_LIST_DIR}/DSP/Source/SVMFunctions/SVMFunctions.c
  ${CMAKE_CURRENT_LIST_DIR}/DSP/Source/SVMFunctions/SVMFunctionsF16.c
  ${CMAKE_CURRENT_LIST_DIR}/DSP/Source/StatisticsFunctions/StatisticsFunctions.c
  ${CMAKE_CURRENT_LIST_DIR}/DSP/Source/StatisticsFunctions/StatisticsFunctionsF16.c
  ${CMAKE_CURRENT_LIST_DIR}/DSP/Source/SupportFunctions/SupportFunctions.c
  ${CMAKE_CURRENT_LIST_DIR}/DSP/Source/SupportFunctions/SupportFunctionsF16.c
  ${CMAKE_CURRENT_LIST_DIR}/DSP/Source/TransformFunctions/TransformFunctions.c
  ${CMAKE_CURRENT_LIST_DIR}/DSP/Source/TransformFunctions/TransformFunctionsF16.c
  ${CMAKE_CURRENT_LIST_DIR}/DSP/Source/WindowFunctions/WindowFunctions.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/DSP/Include
  ${CMAKE_CURRENT_LIST_DIR}/DSP/PrivateInclude
  ${CMAKE_CURRENT_LIST_DIR}/DSP/Source/DistanceFunctions
)

if(CONFIG_USE_COMPONENT_CONFIGURATION)
  message("===>Import configuration from ${CMAKE_CURRENT_LIST_FILE}")

  target_compile_definitions(${MCUX_SDK_PROJECT_NAME} PUBLIC
    -DDISABLEFLOAT16
  )

endif()


endif()


if (CONFIG_USE_CMSIS_NN_Source)
# Add set(CONFIG_USE_CMSIS_NN_Source true) in config.cmake to use this component

message("CMSIS_NN_Source component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_CMSIS_DSP_Source)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/ActivationFunctions/arm_nn_activation_s16.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/ActivationFunctions/arm_relu6_s8.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/ActivationFunctions/arm_relu_q15.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/ActivationFunctions/arm_relu_q7.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/BasicMathFunctions/arm_elementwise_add_s16.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/BasicMathFunctions/arm_elementwise_add_s8.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/BasicMathFunctions/arm_elementwise_mul_s16.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/BasicMathFunctions/arm_elementwise_mul_s16_s8.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/BasicMathFunctions/arm_elementwise_mul_s8.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/ConcatenationFunctions/arm_concatenation_s8_w.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/ConcatenationFunctions/arm_concatenation_s8_x.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/ConcatenationFunctions/arm_concatenation_s8_y.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/ConcatenationFunctions/arm_concatenation_s8_z.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/ConvolutionFunctions/arm_convolve_1x1_s4.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/ConvolutionFunctions/arm_convolve_1x1_s4_fast.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/ConvolutionFunctions/arm_convolve_1x1_s8.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/ConvolutionFunctions/arm_convolve_fast_s16.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/ConvolutionFunctions/arm_convolve_get_buffer_sizes_s16.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/ConvolutionFunctions/arm_convolve_get_buffer_sizes_s4.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/ConvolutionFunctions/arm_convolve_get_buffer_sizes_s8.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/ConvolutionFunctions/arm_convolve_s16.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/ConvolutionFunctions/arm_convolve_s4.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/ConvolutionFunctions/arm_convolve_s8.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s16.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s4.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/ConvolutionFunctions/arm_depthwise_conv_fast_s16.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/ConvolutionFunctions/arm_depthwise_conv_get_buffer_sizes_s16.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/ConvolutionFunctions/arm_depthwise_conv_get_buffer_sizes_s4.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/ConvolutionFunctions/arm_depthwise_conv_get_buffer_sizes_s8.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s16.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s4.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s4_opt.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s16.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s4.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s4_s16.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/ConvolutionFunctions/arm_transpose_conv_get_buffer_sizes_s8.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/ConvolutionFunctions/arm_transpose_conv_s8.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/FullyConnectedFunctions/arm_fully_connected_get_buffer_sizes_s16.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/FullyConnectedFunctions/arm_fully_connected_get_buffer_sizes_s8.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/FullyConnectedFunctions/arm_fully_connected_s16.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/FullyConnectedFunctions/arm_fully_connected_s4.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/FullyConnectedFunctions/arm_fully_connected_s8.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/FullyConnectedFunctions/arm_vector_sum_s8.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/LSTMFunctions/arm_lstm_unidirectional_s8_s16.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/NNSupportFunctions/arm_nntables.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_padded_s8.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s16.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s8.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/NNSupportFunctions/arm_nn_lstm_calculate_gate_s8_s16.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/NNSupportFunctions/arm_nn_lstm_step_s8_s16.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/NNSupportFunctions/arm_nn_lstm_update_cell_state_s16.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/NNSupportFunctions/arm_nn_lstm_update_output_s8_s16.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/NNSupportFunctions/arm_nn_mat_mult_nt_t_s4.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/NNSupportFunctions/arm_nn_mat_mult_nt_t_s8.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/NNSupportFunctions/arm_nn_mat_mult_nt_t_s8_s32.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_1x_s8.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_4x_s8.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/NNSupportFunctions/arm_nn_mat_mul_kernel_s16.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s16.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s4.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s8.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_svdf_s8.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mul_result_acc_s8.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/NNSupportFunctions/arm_s8_to_s16_unordered_with_offset.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/PoolingFunctions/arm_avgpool_get_buffer_sizes_s16.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/PoolingFunctions/arm_avgpool_get_buffer_sizes_s8.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/PoolingFunctions/arm_avgpool_s16.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/PoolingFunctions/arm_avgpool_s8.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/PoolingFunctions/arm_max_pool_s16.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/PoolingFunctions/arm_max_pool_s8.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/ReshapeFunctions/arm_reshape_s8.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/SoftmaxFunctions/arm_nn_softmax_common_s8.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/SoftmaxFunctions/arm_softmax_s16.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/SoftmaxFunctions/arm_softmax_s8.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/SoftmaxFunctions/arm_softmax_s8_s16.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/SoftmaxFunctions/arm_softmax_u8.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/SVDFunctions/arm_svdf_get_buffer_sizes_s8.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/SVDFunctions/arm_svdf_s8.c
  ${CMAKE_CURRENT_LIST_DIR}/NN/Source/SVDFunctions/arm_svdf_state_s16_s8.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/NN/Include
)

else()

message(SEND_ERROR "CMSIS_NN_Source dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()

