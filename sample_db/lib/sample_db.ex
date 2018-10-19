defmodule SampleDb do
  @moduledoc """
  SampleDb keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

	def inserts() do
		:mnesia.transaction( fn -> :mnesia.write( { :members, 1, "enぺだーし", 49, "有限会社デライトシステムズ", "代表取締役、性能探求者" } ) end )
		:mnesia.transaction( fn -> :mnesia.write( { :members, 2, "ざっきー", 45, "公立大学法人 北九州市立大学", "准教授、カーネルハッカー" } ) end )
		:mnesia.transaction( fn -> :mnesia.write( { :members, 3, "つちろー", 34, "カラビナテクノロジー株式会社", "リードエンジニア、アプリマイスター" } ) end )
		:mnesia.transaction( fn -> :mnesia.write( { :members, 4, "ゆじかわ", 30, "カラビナテクノロジー株式会社", "リードエンジニア、グロースハッカー" } ) end )
		:mnesia.transaction( fn -> :mnesia.write( { :members, 5, "piacere", 44, "カラビナテクノロジー株式会社", "CTO、常務取締役、ファウンダー、福岡Elixirプログラマ、重力プログラマ" } ) end )
  end
end
