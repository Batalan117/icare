# frozen_string_literal: true

# DO NOT SET SENSITIVE DATA HERE!
# USE ENVIRONMENT VARIABLES OR 'local.rb' INSTEAD

# OVERRIDE THESE DEFAULTS IN A PROPER ENVIRONMENT CONFIGURATION FILE
# SET SENSITIVE DATA ONLY IN 'local.rb'

SimpleConfig.for :application do
  set :app_name, 'icare'
  set :repository_url, 'https://github.com/diowa/icare'

  set :advertising, true
  set :demo_mode, true
  set :base_url, 'localhost:3000'
  set :single_process_mode, true

  set :currency, '.00 €'
  set :fuel_consumption, 0.12
  set :fuel_currency, '€'

  set :costs_calculation_service_link, 'http://servizi.aci.it/CKInternet/'

  set :google_analytics_id, nil
  set :google_maps_api_key, nil

  group :facebook do
    set :namespace, 'FACEBOOK_NAMESPACE'
    set :app_id, 'FACEBOOK_APP_ID'
    set :secret, 'FACEBOOK_SECRET'
    set :scope, 'public_profile, user_birthday, user_likes'
    set :cache_expiry_time, 7.days
  end

  group :airbrake do
    set :project_id, nil
    set :project_key, nil
    set :host, nil
  end

  group :map do
    # defaults to Italy
    set :center, [41.87194, 12.567379999999957]
    set :zoom, 8
  end

  group :itineraries do
    # Enable this option if you want to restrict itineraries inside a geographic area
    set :geo_restricted, false
    group :bounds do
      # Island of Ischia
      set :sw, [40.69205729999999, 13.850980400000026]
      set :ne, [40.7615088, 13.966879699999936]
    end
  end

  group :mailer do
    set :from, '"Icare" <no-reply@i.care>'
    set :host, 'localhost'

    group :smtp_settings do
      set :address, 'localhost'
      set :port, 587
      set :authentication, :plain
      set :domain, 'localhost'

      set :user_name, 'test'
      set :password, 'test'
    end
  end

  group :redis do
    set :url, 'redis://127.0.0.1:6379'
  end
end
