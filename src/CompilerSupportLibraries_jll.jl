# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule CompilerSupportLibraries_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("CompilerSupportLibraries")
JLLWrappers.@generate_main_file("CompilerSupportLibraries", UUID("e66e0078-7015-5450-92f7-15fbd957f2ae"))
end  # module CompilerSupportLibraries_jll
