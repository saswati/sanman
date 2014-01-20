class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def aboutus
    @title = "About Us"
  end

  def design_services
    @title = "Design Service"
  end

  def electronic_manufacturing
    @title = "Electronic Manufacturing"
  end

  def products
    @title = "Products"
  end

  def rfq
    @title = "RFQ"
  end

  def careers
    @title = "Careers"
  end

  def contact_us
    @title = "Contact Us"
  end
end
