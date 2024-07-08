# Aevo/Utils

function Serde.deser(::Type{<:AevoData}, ::Type{<:Maybe{NanoDate}}, x::Int64)::NanoDate
    return unixnanos2nanodate(x * 1e6)
end

function Serde.deser(::Type{<:AevoData}, ::Type{<:Maybe{NanoDate}}, x::AbstractString)::NanoDate
    return NanoDate(x, dateformat"yyyy-mm-dd HH:MM:SS")
end

function Serde.SerQuery.ser_type(::Type{<:AevoCommonQuery}, x::D)::Int64 where {D<:DateTime}
    return round(Int64, 1000 * datetime2unix(x))
end