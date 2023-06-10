module ApplicationHelper
  def button_style
    'text-1xl w-max rounded hover:rounded-lg bg bg-sky-700 hover:bg-sky-500 active:bg-sky-800 p-2 text-white w-24'
  end

  def link_style
    'text-gray-600 font-bold w-max block border border-blue-200 p-2 hover:border-blue-500 hover:text-blue-500'
  end


  def input_style
    'p-2 w-6/12 rounded-lg border-1 border-solid border-neutral-400 focus:border-sky-500'
  end

  def label_style
    'font-bold text-xl tracking-tight capitalize p-2 text-gray-950 font-serif'
  end
end
