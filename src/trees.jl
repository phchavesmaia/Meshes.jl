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

Apply `f` once for each indexed tree element `i` intersecting `query`. Each index `i` refers 
to the element's position in the original input collection, independently of the tree's 
internal storage order. The order in which matches are visited is unspecified.

This function is intended as the primitive interface for algorithms that process matches 
immediately, avoiding the need to materialize an intermediate vector of indices.

To collect matching indices with the neighbor-search API, use [`search`](@ref) with a method 
such as [`BBoxSearch`](@ref).
"""
function foreachmatch end

include("trees/bvh.jl")
