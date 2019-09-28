# Autogenerated wrapper script for CompilerSupportLibraries_jll for i686-w64-mingw32-libgfortran4
export libgcc_s, libgfortran, libstdcxx

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "PATH"

# Relative path to `libgcc_s`
const libgcc_s_splitpath = ["bin", "libgcc_s_sjlj-1.dll"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libgcc_s_path = ""

# libgcc_s-specific global declaration
# This will be filled out by __init__()
libgcc_s_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libgcc_s = "libgcc_s_sjlj-1.dll"


# Relative path to `libgfortran`
const libgfortran_splitpath = ["bin", "libgfortran-4.dll"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libgfortran_path = ""

# libgfortran-specific global declaration
# This will be filled out by __init__()
libgfortran_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libgfortran = "libgfortran-4.dll"


# Relative path to `libstdcxx`
const libstdcxx_splitpath = ["bin", "libstdc++-6.dll"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libstdcxx_path = ""

# libstdcxx-specific global declaration
# This will be filled out by __init__()
libstdcxx_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libstdcxx = "libstdc++-6.dll"


"""
Open all libraries
"""
function __init__()
    global prefix = abspath(joinpath(@__DIR__, ".."))

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    global libgcc_s_path = abspath(joinpath(artifact"CompilerSupportLibraries", libgcc_s_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libgcc_s_handle = dlopen(libgcc_s_path)
    push!(LIBPATH_list, dirname(libgcc_s_path))

    global libgfortran_path = abspath(joinpath(artifact"CompilerSupportLibraries", libgfortran_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libgfortran_handle = dlopen(libgfortran_path)
    push!(LIBPATH_list, dirname(libgfortran_path))

    global libstdcxx_path = abspath(joinpath(artifact"CompilerSupportLibraries", libstdcxx_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libstdcxx_handle = dlopen(libstdcxx_path)
    push!(LIBPATH_list, dirname(libstdcxx_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ';')
    global LIBPATH = join(LIBPATH_list, ';')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()
