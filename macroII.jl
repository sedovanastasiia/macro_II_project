using CSV, DataFrames

df_rate = CSV.read("IRSTCI01DEM156N.csv", DataFrame, delim=',')

df = CSV.read("99911-0012_de.csv", DataFrame, delim=';')
first(df, 16)
size(df)
delete!(df, [1:3; 10:16]) 
delete!(df, [2]) 
rename!(df, "Tabelle: 99911-0012" => "Variable")
df.Label = ["Year", "GDP", "GDP per capita", "Growth", "Inflation"]
select!(df, Not(names(df, all.(ismissing, eachcol(df)))))