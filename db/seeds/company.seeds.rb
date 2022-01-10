begin
  if (Company.present? and not Company.exists?)
    Company.create( 
      name:   'kde', 
      title:  'Индивидуальный предприниматель Кутукова Дарья Евгеньевна',
      inn:    '773374764755',
      ogrnip: '319774600718496',
      certificate_number: '542851528',
      certificate_date:   Date.new(2019,12,18),
      email:           'dkutukova@mail.ru',
      phone:          '+79688833355',
      legal_address:  '125310, Россия, г. Москва, Ангелов переулок, д. 8, кв. 151',
      pickup_address: 'Митинская улица, д.51, ТЦ Тук-Тук, 2 этаж, павильон 39',
      url:            'http://treeplexus.ru/'
    )
    puts "===== 'Company' record(s) created"
  else
    puts "===== 'Company' seeding skipped"
  end
rescue
  puts "----- Achtung! Something went wrong ('Company' entity does not exist?)"
end