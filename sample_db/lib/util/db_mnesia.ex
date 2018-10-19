defmodule DbMnesia do
	def query( table_name ) when table_name != "" do
		table_atom = table_name |> String.to_atom
		columns = :mnesia.table_info( table_atom, :attributes )
		|> Enum.reduce( [], fn( item, acc ) -> acc ++ [ Atom.to_string( item ) ] end )
		IO.inspect columns
		
		columns_spec = 1..Enum.count( columns )
		|> Enum.reduce( { table_atom }, fn( x, acc ) -> Tuple.append( acc, :"$#{ x }" )  end )
		IO.inspect columns_spec
		
		rows = :mnesia.transaction( fn ->
			:mnesia.dirty_select( table_atom, [ { columns_spec, [], [ :"$$" ] } ] )
		end )
			|> elem( 1 )
		IO.inspect rows
#			:mnesia.dirty_select( table_atom, [ { columns_spec, [], [ :"$$" ] } ] )

		%{
			columns: columns,
			command: :select,
			connection_id: 0,
			num_rows: Enum.count( rows ),
			rows: rows
		}
	end
end
