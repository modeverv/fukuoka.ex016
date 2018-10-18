[333,999,3]|>Enum.filter(fn(n) -> n != 999 end)
[3,1,4]|>Enum.sort

data = [
  %{ "name" => "enぺだーし", "age" => 49, "team" => "有限会社デライトシステムズ", "position" => "代表取締役、性能探求者" }, 
  %{ "name" => "ざっきー", "age" => 45, "team" => "公立大学法人 北九州市立大学", "position" => "准教授、カーネルハッカー" }, 
  %{ "name" => "つちろー", "age" => 34, "team" => "カラビナテクノロジー株式会社", "position" => "リードエンジニア、アプリマイスター" }, 
  %{ "name" => "ゆじかわ", "age" => 30, "team" => "カラビナテクノロジー株式会社", "position" => "リードエンジニア、グロースハッカー" }, 
  %{ "name" => "piacere", "age" => 43, "team" => "株式会社TechJIN", "position" => "CTO、福岡Elixirプログラマ、重力プログラマ、技術顧問" }
]

data |> Enum.map(fn(record) -> %{ "name" => record["name"] } end)

data |> Enum.map(fn(record) -> %{ "name" => record["name"], "age" => record["age"] } end)
