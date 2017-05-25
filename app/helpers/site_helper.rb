module SiteHelper

  def check_new_relic (name)
    if name == "omaha-fota-backend-service-rails"
      link_name = "https://rpm.newrelic.com/accounts/1603725/applications/41851080"
    elsif name == "omaha-order-manager-service-rails"
      link_name = "https://rpm.newrelic.com/accounts/1603725/applications/38426597"
    elsif name == "omaha-inbox-backend-rails"
      link_name = "https://rpm.newrelic.com/accounts/1603725/applications/41847801"
    elsif name == "omaha-notification-backend-service-rails"
      link_name = "https://rpm.newrelic.com/accounts/1603725/applications/41850681"
    elsif name == "omaha-receipt-backend-service-rails"
      link_name = "https://rpm.newrelic.com/accounts/1603725/applications/41847461"
    elsif name == "omaha-product-catalog-backend-service-rails"
      link_name = "https://rpm.newrelic.com/accounts/1603725/applications/41847563"
    elsif name == "omaha-store-backend-service-rails"
      link_name = "https://rpm.newrelic.com/accounts/1603725/applications/41847347"
    elsif name == "omaha-tms-backend-service-rails"
      link_name = "https://rpm.newrelic.com/accounts/1603725/applications/41846515"
    elsif name == "omaha-device-auth-backend-service-rails"
      link_name = "https://rpm.newrelic.com/accounts/1603725/applications/41845275"
    elsif name == "omaha-hopper-service-rails"
      link_name = "https://rpm.newrelic.com/accounts/1603725/applications/41847702"
    elsif name == "omaha-profile-manager-backend-service-rails"
      link_name = "https://rpm.newrelic.com/accounts/1603725/applications/41846653"
    end
    link_name
  end

  def check_kibana (name)
    if name == "omaha-fota-backend-service-rails"
      link_name = "http://cielo-logs.prd.dcd.m4u:8080/app/kibana#/discover?_g=(refreshInterval:(display:Off,pause:!f,value:0),time:(from:now-15m,mode:quick,to:now))&_a=(columns:!(_source),filters:!(),index:%27logstash-*%27,interval:auto,query:(query_string:(analyze_wildcard:!t,query:%27tag:%20%22FdpService%22%27)),sort:!(%27@timestamp%27,desc),vis:(aggs:!((params:(field:tag,orderBy:%272%27,size:20),schema:segment,type:terms),(id:%272%27,schema:metric,type:count)),type:histogram))&indexPattern=logstash-*&type=histogram"
    elsif name == "omaha-order-manager-service-rails"
      link_name = "http://cielo-logs.prd.dcd.m4u:8080/app/kibana#/discover?_g=(refreshInterval:(display:Off,pause:!f,value:0),time:(from:now-15m,mode:quick,to:now))&_a=(columns:!(_source),index:%27logstash-*%27,interval:auto,query:(query_string:(analyze_wildcard:!t,query:%27tag:%22OrderManagerService%22%27)),sort:!(%27@timestamp%27,desc))"
    elsif name == "omaha-inbox-backend-rails"
      link_name = "http://cielo-logs.prd.dcd.m4u:8080/app/kibana#/discover?_g=(refreshInterval:(display:Off,pause:!f,value:0),time:(from:now-15m,mode:quick,to:now))&_a=(columns:!(_source),index:%27logstash-*%27,interval:auto,query:(query_string:(analyze_wildcard:!t,query:%27tag:%22InboxService%20%22%27)),sort:!(%27@timestamp%27,desc))"
    elsif name == "omaha-notification-backend-service-rails"
      link_name = "http://cielo-logs.prd.dcd.m4u:8080/app/kibana#/discover?_g=(refreshInterval:(display:Off,pause:!f,value:0),time:(from:now-15m,mode:quick,to:now))&_a=(columns:!(_source),index:%27logstash-*%27,interval:auto,query:(query_string:(analyze_wildcard:!t,query:%27*notification%27)),sort:!(%27@timestamp%27,desc))"
    elsif name == "omaha-receipt-backend-service-rails"
      link_name = "http://cielo-logs.prd.dcd.m4u:8080/app/kibana#/discover?_g=(refreshInterval:(display:Off,pause:!f,value:0),time:(from:now-15m,mode:quick,to:now))&_a=(columns:!(_source),index:%27logstash-*%27,interval:auto,query:(query_string:(analyze_wildcard:!t,query:%27tag:%22ReceiptService%20%22%27)),sort:!(%27@timestamp%27,desc))"
    elsif name == "omaha-product-catalog-backend-service-rails"
      link_name = "http://cielo-logs.prd.dcd.m4u:8080/app/kibana#/discover?_g=(refreshInterval:(display:Off,pause:!f,value:0),time:(from:now-15m,mode:quick,to:now))&_a=(columns:!(_source),index:%27logstash-*%27,interval:auto,query:(query_string:(analyze_wildcard:!t,query:%27*product%27)),sort:!(%27@timestamp%27,desc))"
    elsif name == "omaha-store-backend-service-rails"
      link_name = "http://cielo-logs.prd.dcd.m4u:8080/app/kibana#/discover?_g=(refreshInterval:(display:Off,pause:!f,value:0),time:(from:now-15m,mode:quick,to:now))&_a=(columns:!(_source),index:%27logstash-*%27,interval:auto,query:(query_string:(analyze_wildcard:!t,query:%27tag:%22AdpService%20%22%27)),sort:!(%27@timestamp%27,desc))"
    elsif name == "omaha-tms-backend-service-rails"
      link_name = "http://cielo-logs.prd.dcd.m4u:8080/app/kibana#/discover?_g=(refreshInterval:(display:Off,pause:!f,value:0),time:(from:now-15m,mode:quick,to:now))&_a=(columns:!(_source),index:%27logstash-*%27,interval:auto,query:(query_string:(analyze_wildcard:!t,query:%27tag:%22TmsService%20%22%27)),sort:!(%27@timestamp%27,desc))"
    elsif name == "omaha-device-auth-backend-service-rails"
      link_name = "http://cielo-logs.prd.dcd.m4u:8080/app/kibana#/discover?_g=(refreshInterval:(display:Off,pause:!f,value:0),time:(from:now-15m,mode:quick,to:now))&_a=(columns:!(_source),index:%27logstash-*%27,interval:auto,query:(query_string:(analyze_wildcard:!t,query:%27tag:%20%22DeviceAuthService%22%27)),sort:!(%27@timestamp%27,desc))"
    elsif name == "omaha-hopper-service-rails"
      link_name = "http://jenkins.lio.m4u:8014/job/Cielo%20Lio%20Services/job/omaha-hopper-service-rails/"
    elsif name == "omaha-profile-manager-backend-service-rails"
      link_name = "http://cielo-logs.prd.dcd.m4u:8080/app/kibana#/discover?_g=(refreshInterval:(display:Off,pause:!f,value:0),time:(from:now-15m,mode:quick,to:now))&_a=(columns:!(_source),index:%27logstash-*%27,interval:auto,query:(query_string:(analyze_wildcard:!t,query:%27tag:%20%22ProfileManagerService%22%27)),sort:!(%27@timestamp%27,desc))"
    end
    link_name
  end

  def check_jenkins (name)
    if name == "omaha-fota-backend-service-rails"
      link_name = "http://jenkins.lio.m4u:8014/job/Cielo%20Lio%20Services/job/omaha-fota-backend-service-rails/"
    elsif name == "omaha-order-manager-service-rails"
      link_name = "http://jenkins.lio.m4u:8014/job/Cielo%20Lio%20Services/job/omaha-order-manager-service-rails/"
    elsif name == "omaha-inbox-backend-rails"
      link_name = "http://jenkins.lio.m4u:8014/job/Cielo%20Lio%20Services/job/omaha-inbox-backend-rails/"
    elsif name == "omaha-notification-backend-service-rails"
      link_name = "http://jenkins.lio.m4u:8014/job/Cielo%20Lio%20Services/job/omaha-notification-backend-service-rails/"
    elsif name == "omaha-receipt-backend-service-rails"
      link_name = "http://jenkins.lio.m4u:8014/job/Cielo%20Lio%20Services/job/omaha-receipt-backend-service-rails/"
    elsif name == "omaha-product-catalog-backend-service-rails"
      link_name = "http://jenkins.lio.m4u:8014/job/Cielo%20Lio%20Services/job/omaha-product-catalog-backend-service-rails/"
    elsif name == "omaha-store-backend-service-rails"
      link_name = "http://jenkins.lio.m4u:8014/job/Cielo%20Lio%20Services/job/omaha-store-backend-service-rails/"
    elsif name == "omaha-tms-backend-service-rails"
      link_name = "http://jenkins.lio.m4u:8014/job/Cielo%20Lio%20Services/job/omaha-tms-backend-service-rails/"
    elsif name == "omaha-device-auth-backend-service-rails"
      link_name = "http://jenkins.lio.m4u:8014/job/Cielo%20Lio%20Services/job/omaha-device-auth-backend-service-rails/"
    elsif name == "omaha-hopper-service-rails"
      link_name = "http://jenkins.lio.m4u:8014/job/Cielo%20Lio%20Services/job/omaha-hopper-service-rails/"
    elsif name == "omaha-profile-manager-backend-service-rails"
      link_name = "http://jenkins.lio.m4u:8014/job/Cielo%20Lio%20Services/job/omaha-profile-manager-backend-service-rails/"
    end
    link_name
  end

end
