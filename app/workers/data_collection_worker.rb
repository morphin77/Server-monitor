class DataCollectionWorker
  include Sidekiq::Worker

  def perform()
  	d = Dashboard.new(name: '777', description: '222', user_id: 1)
		d.save!
  	
  	DataCollectionWorker.set(wait: 1.second).perform_async()
  	#meminfo = %x[free -k]
		#@Total_memory = meminfo.split('Память:').last.split(' ').first.to_i
		#@Avalible_memory = meminfo.split('Память:' ).last.split('Подкачка:').first.split(' ').last.to_i
		#@Memory_Cached_Buffered = meminfo.split('Память:' ).last.split('Подкачка:').first.split(' ').last(2).first.to_i
		#@Used_memory = meminfo.split('Память:' ).last.split(' ').second.to_i 
		#@Total_swap = meminfo.split('Подкачка:').last.split(' ').first.to_i
		#@Used_swap = meminfo.split('Подкачка:').last.split(' ').second.to_i
		#@Free_swap = meminfo.split('Подкачка:').last.split(' ').last.to_i
		
		#мониторинг загрузки сети
		#cat /sys/class/net/ens33/statistics/rx_bytes 
		#пишем в базу, вычитаем предыдущее значение, отрисовывем дельту
		#http://morrisjs.github.io/morris.js/index.html  - графики
  end
end
