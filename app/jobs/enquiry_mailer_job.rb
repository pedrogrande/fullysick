class EnquiryMailerJob 
  include SuckerPunch::Job
  
  def perform(enquiry_id)
  	EnquiryMailer.response(enquiry_id).deliver_now
    EnquiryMailer.received(enquiry_id).deliver_now
    # raise NotImplementedError
  end
end
