using CSV, DataFrames

df = CSV.read("/Users/asik/Downloads/99911-0012_de.csv", DataFrame, delim=';')
df_rate = CSV.read("/Users/asik/Downloads/IRSTCI01DEM156N.csv", DataFrame, delim=',')
first(df, 16)
size(df)
delete!(df, [1:3; 10:16]) 