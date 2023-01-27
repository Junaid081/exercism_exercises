defmodule LogLevel do
  def to_label(level, legacy?) do
    cond do
    level==0 && legacy?==false -> :trace
    level==0 && legacy?==true -> :unknown    
    level==1 && legacy?==true -> :debug
    level==1 && legacy?==false -> :debug
    level==2 && legacy?==true -> :info
    level==2 && legacy?==false -> :info
    level==3 && legacy?==true -> :warning
    level==3 && legacy?==false -> :warning
    level==4 && legacy?==true -> :error        
    level==4 && legacy?==false -> :error
    level==5 && legacy?==false -> :fatal
    level==5 && legacy?==true -> :unknown
    true -> :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    value = to_label(level, legacy?)
    cond do
      value == :error || value == :fatal -> :ops      
      legacy? and value == :unknown -> :dev1
      value == :unknown -> :dev2      
      true -> false
    end
  end
end
