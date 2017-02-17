module SiteHelper

  def check_new_relic (name)
    if name == "cielo-lio-fota"
      link_name = "https://rpm.newrelic.com/accounts/1020657/applications/32025280"
    elsif name == "cielo-lio-order"
      link_name = "https://rpm.newrelic.com/accounts/1020657/applications/21081158"
    elsif name == "cielo-lio-inbox"
      link_name = "https://rpm.newrelic.com/accounts/1020657/applications/16118360"
    elsif name == "cielo-lio-notification"
      link_name = "https://rpm.newrelic.com/accounts/1020657/applications/26960171"
    elsif name == "cielo-lio-receipt"
      link_name = "https://rpm.newrelic.com/accounts/1020657/applications/25328518"
    elsif name == "cielo-lio-product-catalog"
      link_name = "https://rpm.newrelic.com/accounts/1020657/applications/30629077"
    elsif name == "cielo-lio-store"
      link_name = "https://rpm.newrelic.com/accounts/1020657/applications/18902752"
    elsif name == "cielo-lio-profile-manager"
      link_name = "https://rpm.newrelic.com/accounts/1020657/applications/28670221"
    elsif name == "cielo-lio-tms"
      link_name = "https://rpm.newrelic.com/accounts/1020657/applications/16117153"
    elsif name == "cielo-lio-device-auth"
      link_name = "https://rpm.newrelic.com/accounts/1020657/applications/23044674"
    end
    link_name
  end

  def check_kibana (name)
    if name == "cielo-lio-fota"
      link_name = "http://cielo-logs.prd.dcd.m4u:8080/app/kibana#/discover?_g=(refreshInterval:(display:Off,pause:!f,value:0),time:(from:now-15m,mode:quick,to:now))&_a=(columns:!(_source),filters:!(),index:%27logstash-*%27,interval:auto,query:(query_string:(analyze_wildcard:!t,query:%27tag:%20%22FdpService%22%27)),sort:!(%27@timestamp%27,desc),vis:(aggs:!((params:(field:tag,orderBy:%272%27,size:20),schema:segment,type:terms),(id:%272%27,schema:metric,type:count)),type:histogram))&indexPattern=logstash-*&type=histogram"
    elsif name == "cielo-lio-order"
      link_name = "http://cielo-logs.prd.dcd.m4u:8080/app/kibana#/discover?_g=(refreshInterval:(display:Off,pause:!f,value:0),time:(from:now-15m,mode:quick,to:now))&_a=(columns:!(_source),index:%27logstash-*%27,interval:auto,query:(query_string:(analyze_wildcard:!t,query:%27tag:%22OrderManagerService%22%27)),sort:!(%27@timestamp%27,desc))"
    elsif name == "cielo-lio-inbox"
      link_name = "http://cielo-logs.prd.dcd.m4u:8080/app/kibana#/discover?_g=(refreshInterval:(display:Off,pause:!f,value:0),time:(from:now-15m,mode:quick,to:now))&_a=(columns:!(_source),index:%27logstash-*%27,interval:auto,query:(query_string:(analyze_wildcard:!t,query:%27tag:%22InboxService%20%22%27)),sort:!(%27@timestamp%27,desc))"
    elsif name == "cielo-lio-notification"
      link_name = "http://cielo-logs.prd.dcd.m4u:8080/app/kibana#/discover?_g=(refreshInterval:(display:Off,pause:!f,value:0),time:(from:now-15m,mode:quick,to:now))&_a=(columns:!(_source),index:%27logstash-*%27,interval:auto,query:(query_string:(analyze_wildcard:!t,query:%27*notification%27)),sort:!(%27@timestamp%27,desc))"
    elsif name == "cielo-lio-receipt"
      link_name = "http://cielo-logs.prd.dcd.m4u:8080/app/kibana#/discover?_g=(refreshInterval:(display:Off,pause:!f,value:0),time:(from:now-15m,mode:quick,to:now))&_a=(columns:!(_source),index:%27logstash-*%27,interval:auto,query:(query_string:(analyze_wildcard:!t,query:%27tag:%22ReceiptService%20%22%27)),sort:!(%27@timestamp%27,desc))"
    elsif name == "cielo-lio-product-catalog"
      link_name = "http://cielo-logs.prd.dcd.m4u:8080/app/kibana#/discover?_g=(refreshInterval:(display:Off,pause:!f,value:0),time:(from:now-15m,mode:quick,to:now))&_a=(columns:!(_source),index:%27logstash-*%27,interval:auto,query:(query_string:(analyze_wildcard:!t,query:%27*product%27)),sort:!(%27@timestamp%27,desc))"
    elsif name == "cielo-lio-store"
      link_name = "http://cielo-logs.prd.dcd.m4u:8080/app/kibana#/discover?_g=(refreshInterval:(display:Off,pause:!f,value:0),time:(from:now-15m,mode:quick,to:now))&_a=(columns:!(_source),index:%27logstash-*%27,interval:auto,query:(query_string:(analyze_wildcard:!t,query:%27tag:%22AdpService%20%22%27)),sort:!(%27@timestamp%27,desc))"
    elsif name == "cielo-lio-tms"
      link_name = "http://cielo-logs.prd.dcd.m4u:8080/app/kibana#/discover?_g=(refreshInterval:(display:Off,pause:!f,value:0),time:(from:now-15m,mode:quick,to:now))&_a=(columns:!(_source),index:%27logstash-*%27,interval:auto,query:(query_string:(analyze_wildcard:!t,query:%27tag:%22TmsService%20%22%27)),sort:!(%27@timestamp%27,desc))"
    elsif name == "cielo-lio-device-auth"
      link_name = "http://cielo-logs.prd.dcd.m4u:8080/app/kibana#/discover?_g=(refreshInterval:(display:Off,pause:!f,value:0),time:(from:now-15m,mode:quick,to:now))&_a=(columns:!(_source),index:%27logstash-*%27,interval:auto,query:(query_string:(analyze_wildcard:!t,query:%27tag:%20%22DeviceAuthService%22%27)),sort:!(%27@timestamp%27,desc))"
    end
    link_name
  end

end
