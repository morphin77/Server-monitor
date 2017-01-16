class DataCollectionWorker
  include Sidekiq::Worker

  def perform()
  	%x[mkdir test_ololo]
  	%x[mkdir test_ololo1]
  end
end
