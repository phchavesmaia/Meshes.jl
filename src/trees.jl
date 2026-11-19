# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENSE in the project root.
# ------------------------------------------------------------------

"""
    SpatialTree

A tree-based spatial index over a one-based collection.
"""
abstract type SpatialTree end

"""
    foreachmatch(f, query, tree)

Apply `f(i)` once for each indexed tree element intersecting `query`.

This function is intended as the primitive interface for algorithms that process matches 
immediately, avoiding the need to materialize an intermediate vector of indices.

See [`search`](@ref) if you need to collect all matching indices beforehand.
"""
function foreachmatch end

include("trees/bvh.jl")
