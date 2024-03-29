# Autogenerated wrapper script for CompilerSupportLibraries_jll for x86_64-apple-darwin-libgfortran5
export libatomic, libgcc_s, libgfortran, libgomp, libssp, libstdcxx

JLLWrappers.@generate_wrapper_header("CompilerSupportLibraries")
JLLWrappers.@declare_library_product(libatomic, "@rpath/libatomic.1.dylib")
JLLWrappers.@declare_library_product(libgcc_s, "libgcc_s.1.1.dylib")
JLLWrappers.@declare_library_product(libgfortran, "@rpath/libgfortran.5.dylib")
JLLWrappers.@declare_library_product(libgomp, "@rpath/libgomp.1.dylib")
JLLWrappers.@declare_library_product(libssp, "@rpath/libssp.0.dylib")
JLLWrappers.@declare_library_product(libstdcxx, "@rpath/libstdc++.6.dylib")
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_library_product(
        libatomic,
        "lib/libatomic.1.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libgcc_s,
        "lib/libgcc_s.1.1.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libgfortran,
        "lib/libgfortran.5.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libgomp,
        "lib/libgomp.1.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libssp,
        "lib/libssp.0.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libstdcxx,
        "lib/libstdc++.6.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
