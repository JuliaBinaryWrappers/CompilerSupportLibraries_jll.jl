# Autogenerated wrapper script for CompilerSupportLibraries_jll for x86_64-linux-gnu-libgfortran5
export libgcc_s, libstdcxx, libgomp, libgfortran

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `libgcc_s`
const libgcc_s_splitpath = ["lib", "libgcc_s.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libgcc_s_path = ""

# libgcc_s-specific global declaration
# This will be filled out by __init__()
libgcc_s_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libgcc_s = "libgcc_s.so"


# Relative path to `libstdcxx`
const libstdcxx_splitpath = ["lib", "libstdc++.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libstdcxx_path = ""

# libstdcxx-specific global declaration
# This will be filled out by __init__()
libstdcxx_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libstdcxx = "libstdc++.so.6"


# Relative path to `libgomp`
const libgomp_splitpath = ["lib", "libgomp.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libgomp_path = ""

# libgomp-specific global declaration
# This will be filled out by __init__()
libgomp_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libgomp = "libgomp.so.1"


# Relative path to `libgfortran`
const libgfortran_splitpath = ["lib", "libgfortran.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libgfortran_path = ""

# libgfortran-specific global declaration
# This will be filled out by __init__()
libgfortran_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libgfortran = "libgfortran.so.5"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"CompilerSupportLibraries")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    global libgcc_s_path = normpath(joinpath(artifact_dir, libgcc_s_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libgcc_s_handle = dlopen(libgcc_s_path)
    push!(LIBPATH_list, dirname(libgcc_s_path))

    global libstdcxx_path = normpath(joinpath(artifact_dir, libstdcxx_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libstdcxx_handle = dlopen(libstdcxx_path)
    push!(LIBPATH_list, dirname(libstdcxx_path))

    global libgomp_path = normpath(joinpath(artifact_dir, libgomp_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libgomp_handle = dlopen(libgomp_path)
    push!(LIBPATH_list, dirname(libgomp_path))

    global libgfortran_path = normpath(joinpath(artifact_dir, libgfortran_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libgfortran_handle = dlopen(libgfortran_path)
    push!(LIBPATH_list, dirname(libgfortran_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

