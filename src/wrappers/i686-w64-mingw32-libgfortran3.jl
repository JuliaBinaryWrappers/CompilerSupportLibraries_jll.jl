# Autogenerated wrapper script for CompilerSupportLibraries_jll for i686-w64-mingw32-libgfortran3
export libgcc_a, libgcc_s, libgcc_s_a, libgfortran, libgomp, libmsvcrt_a, libssp, libssp_dll_a, libstdcxx

JLLWrappers.@generate_wrapper_header("CompilerSupportLibraries")
JLLWrappers.@declare_file_product(libgcc_a)
JLLWrappers.@declare_library_product(libgcc_s, "libgcc_s_sjlj-1.dll")
JLLWrappers.@declare_file_product(libgcc_s_a)
JLLWrappers.@declare_library_product(libgfortran, "libgfortran-3.dll")
JLLWrappers.@declare_library_product(libgomp, "libgomp-1.dll")
JLLWrappers.@declare_file_product(libmsvcrt_a)
JLLWrappers.@declare_library_product(libssp, "libssp-0.dll")
JLLWrappers.@declare_file_product(libssp_dll_a)
JLLWrappers.@declare_library_product(libstdcxx, "libstdc++-6.dll")
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_file_product(
        libgcc_a,
        "lib\\gcc\\i686-w64-mingw32\\14\\libgcc.a",
    )

    JLLWrappers.@init_library_product(
        libgcc_s,
        "bin\\libgcc_s_sjlj-1.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_file_product(
        libgcc_s_a,
        "lib\\gcc\\i686-w64-mingw32\\14\\libgcc_s.a",
    )

    JLLWrappers.@init_library_product(
        libgfortran,
        "bin\\libgfortran-3.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libgomp,
        "bin\\libgomp-1.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_file_product(
        libmsvcrt_a,
        "lib\\gcc\\i686-w64-mingw32\\14\\libmsvcrt.a",
    )

    JLLWrappers.@init_library_product(
        libssp,
        "bin\\libssp-0.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_file_product(
        libssp_dll_a,
        "lib\\gcc\\i686-w64-mingw32\\14\\libssp.dll.a",
    )

    JLLWrappers.@init_library_product(
        libstdcxx,
        "bin\\libstdc++-6.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
