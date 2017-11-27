class Statement_printer
  def print_statement
    puts 'date || credit || debit || balance'
    @transactions.each do |t|
      puts "#{t[:date]} || #{t[:credit]} || #{t[:debit]} || #{t[:balance]}"
    end
  end
end
