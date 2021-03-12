# Autogenerated wrapper script for CompilerSupportLibraries_jll for armv6l-linux-musleabihf-libgfortran4
export libatomic, libgcc_s, libgfortran, libgomp, libstdcxx

JLLWrappers.@generate_wrapper_header("CompilerSupportLibraries")
JLLWrappers.@declare_library_product(libatomic, "libatomic.so.1")
JLLWrappers.@declare_library_product(libgcc_s, "libgcc_s.so.1")
JLLWrappers.@declare_library_product(libgfortran, "libgfortran.so.4")
JLLWrappers.@declare_library_product(libgomp, "libgomp.so.1")
JLLWrappers.@declare_library_product(libstdcxx, "libstdc++.so.6")
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_library_product(
        libatomic,
        "lib/libatomic.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libgcc_s,
        "lib/libgcc_s.so.1",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libgfortran,
        "lib/libgfortran.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libgomp,
        "lib/libgomp.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libstdcxx,
        "lib/libstdc++.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
