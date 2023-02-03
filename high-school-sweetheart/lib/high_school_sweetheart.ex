defmodule HighSchoolSweetheart do
  def first_letter(name) do
    value = String.trim(name)
    value = String.first(value)
    value
  end

  def initial(name) do
    value = first_letter(name)
    value2 = String.upcase(value)<> "."
    value2
  end

  def initials(full_name) do
    value = String.split(full_name)
    [head | tail] = value
    value2 = head
    [head | tail] = tail
    value3 = head
    value2 = initial(value2)
    value3 = initial(value3)
    finalvalue = value2 <> " " <> value3
    finalvalue
  end

  def pair(full_name1, full_name2) do
          v1 = initials(full_name1)
          v2 =initials(full_name2) 
"""
     ******       ******
   **      **   **      **
 **         ** **         **
**            *            **
**                         **
**     #{v1}  +  #{v2}     **
 **                       **
   **                   **
     **               **
       **           **
         **       **
           **   **
             ***
              *
"""
end
end
