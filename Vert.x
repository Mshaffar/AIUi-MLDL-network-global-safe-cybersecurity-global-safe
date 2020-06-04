<!DOCTYPE html>
<html lang="en">
<head>
  <title>Vert.x Core Manual - Vert.x</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="Eclipse Vert.x is a tool-kit for building reactive applications on the JVM." name="description">
  <link href="https://vertx.io/stylesheets/docs.css" media="screen" rel="stylesheet">
  <link href="https://vertx.io/stylesheets/font-awesome.min.css" media="screen" rel="stylesheet">
  <link href="https://vertx.io/javascripts/styles/rainbow.min.css" media="screen" rel="stylesheet">
  <!-- IE 6-8 support of HTML 5 elements -->
  <!--[if lt IE 9]>
  <script src="http://static.jboss.org/theme/js/libs/html5/pre3.6/html5.min.js"></script>
  <![endif]-->

  <link rel="apple-touch-icon" sizes="57x57" href="https://vertx.io/assets/favicons/vertx-favicon-7/apple-touch-icon-57x57.png">
  <link rel="apple-touch-icon" sizes="60x60" href="https://vertx.io/assets/favicons/vertx-favicon-7/apple-touch-icon-60x60.png">
  <link rel="apple-touch-icon" sizes="72x72" href="https://vertx.io/assets/favicons/vertx-favicon-7/apple-touch-icon-72x72.png">
  <link rel="apple-touch-icon" sizes="76x76" href="https://vertx.io/assets/favicons/vertx-favicon-7/apple-touch-icon-76x76.png">
  <link rel="apple-touch-icon" sizes="114x114" href="https://vertx.io/assets/favicons/vertx-favicon-7/apple-touch-icon-114x114.png">
  <link rel="apple-touch-icon" sizes="120x120" href="https://vertx.io/assets/favicons/vertx-favicon-7/apple-touch-icon-120x120.png">
  <link rel="apple-touch-icon" sizes="144x144" href="https://vertx.io/assets/favicons/vertx-favicon-7/apple-touch-icon-144x144.png">
  <link rel="apple-touch-icon" sizes="152x152" href="https://vertx.io/assets/favicons/vertx-favicon-7/apple-touch-icon-152x152.png">
  <link rel="apple-touch-icon" sizes="180x180" href="https://vertx.io/assets/favicons/vertx-favicon-7/apple-touch-icon-180x180.png">
  <link rel="icon" type="image/png" href="https://vertx.io/assets/favicons/vertx-favicon-7/favicon-32x32.png" sizes="32x32">
  <link rel="icon" type="image/png" href="https://vertx.io/assets/favicons/vertx-favicon-7/android-chrome-192x192.png" sizes="192x192">
  <link rel="icon" type="image/png" href="https://vertx.io/assets/favicons/vertx-favicon-7/favicon-96x96.png" sizes="96x96">
  <link rel="icon" type="image/png" href="https://vertx.io/assets/favicons/vertx-favicon-7/favicon-16x16.png" sizes="16x16">
  <link rel="manifest" href="https://vertx.io/assets/favicons/vertx-favicon-7/manifest.json">
  <link rel="mask-icon" href="https://vertx.io/assets/favicons/vertx-favicon-7/safari-pinned-tab.svg" color="#5bbad5">
  <meta name="msapplication-TileColor" content="#7d3194">
  <meta name="msapplication-TileImage" content="https://vertx.io/assets/favicons/vertx-favicon-7/mstile-144x144.png">
  <meta name="theme-color" content="#ffffff">

  <link href="https://fonts.googleapis.com/css?family=Ubuntu:400,500,700,400italic" rel="stylesheet" type="text/css">
  <link rel="alternate" type="application/rss+xml" title="RSS"
     href="https://vertx.io/feed.xml">
  <script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
    ga('create', 'UA-30144458-1', 'auto');
    ga('create', 'UA-71153120-1', 'auto', 'tracker');
    ga('send', 'pageview');
    ga('tracker.send', 'pageview');
  </script>
</head>
<body>

<a href="http://www.reactivemanifesto.org/" id="reactive-manifesto-banner">
  <img style="border: 0; position: fixed; right: 0; top:0; z-index: 9000"
    src="https://d379ifj7s9wntv.cloudfront.net/reactivemanifesto/images/ribbons/we-are-reactive-black-right.png">
</a>

<a id="skippy" class="sr-only sr-only-focusable" href="#content"><div class="container"><span class="skiplink-text">Skip to main content</span></div></a>

<header class="navbar navbar-default navbar-static-top" id="top" role="banner">
  <div class="container">
    <div class="navbar-header">
      <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target="#vertx-navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a href="https://vertx.io/" class="navbar-brand"><img alt="Brand" src="https://vertx.io/assets/logo-sm.png"></a>
    </div>
    <nav class="collapse navbar-collapse" id="vertx-navbar-collapse">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="https://start.vertx.io/">Starter</a></li>
        <li><a href="https://vertx.io/download/">Download</a></li>
        <li><a href="https://how-to.vertx.io/">How-to</a></li>
        <li><a href="https://vertx.io/docs/">Documentation</a></li>
        <li><a href="https://github.com/vert-x3/wiki/wiki">Wiki</a></li>
        <li><a href="https://vertx.io/community/">Community</a></li>
        <li><a href="https://vertx.io/materials/">Materials</a></li>
        <li><a href="https://vertx.io/blog/">Blog</a></li>
      </ul>
    </nav>
  </div>
</header>



  <div class="page-header" id="content">
    <div class="container">
      <div class="row">
        <div class="col-sm-12">
          <h1>Vert.x Core Manual</h1>
          
        </div>
      </div>
    </div>
  </div>




<div id="content">
  <div class="container docs-content">
    <div class="row">
      <div class="col-sm-12 col-md-push-9 col-md-3 hidden-xs hidden-sm">
        <div id="sidebar" data-spy="affix">
          <ul class="sectlevel1">
<li><a href="#_are_you_fluent">Are you fluent?</a></li>
<li><a href="#_don_t_call_us_we_ll_call_you">Don&#8217;t call us, we&#8217;ll call you.</a></li>
<li><a href="#_don_t_block_me">Don&#8217;t block me!</a></li>
<li><a href="#_reactor_and_multi_reactor">Reactor and Multi-Reactor</a></li>
<li><a href="#golden_rule">The Golden Rule - Don&#8217;t Block the Event Loop</a></li>
<li><a href="#blocking_code">Running blocking code</a></li>
<li><a href="#_async_coordination">Async coordination</a>
<ul class="sectlevel2">
<li><a href="#_concurrent_composition">Concurrent composition</a></li>
<li><a href="#_sequential_composition">Sequential composition</a></li>
<li><a href="#_completionstage_interoperability">CompletionStage interoperability</a></li>
</ul>
</li>
<li><a href="#_verticles">Verticles</a>
<ul class="sectlevel2">
<li><a href="#_writing_verticles">Writing Verticles</a></li>
<li><a href="#_verticle_types">Verticle Types</a></li>
<li><a href="#_standard_verticles">Standard verticles</a></li>
<li><a href="#worker_verticles">Worker verticles</a></li>
<li><a href="#_deploying_verticles_programmatically">Deploying verticles programmatically</a></li>
<li><a href="#_rules_for_mapping_a_verticle_name_to_a_verticle_factory">Rules for mapping a verticle name to a verticle factory</a></li>
<li><a href="#_how_are_verticle_factories_located">How are Verticle Factories located?</a></li>
<li><a href="#_waiting_for_deployment_to_complete">Waiting for deployment to complete</a></li>
<li><a href="#_undeploying_verticle_deployments">Undeploying verticle deployments</a></li>
<li><a href="#_specifying_number_of_verticle_instances">Specifying number of verticle instances</a></li>
<li><a href="#_verticle_isolation_groups">Verticle Isolation Groups</a></li>
<li><a href="#_high_availability">High Availability</a></li>
<li><a href="#_running_verticles_from_the_command_line">Running Verticles from the command line</a></li>
<li><a href="#_causing_vert_x_to_exit">Causing Vert.x to exit</a></li>
<li><a href="#_the_context_object">The Context object</a></li>
<li><a href="#_executing_periodic_and_delayed_actions">Executing periodic and delayed actions</a></li>
<li><a href="#_verticle_worker_pool">Verticle worker pool</a></li>
</ul>
</li>
<li><a href="#event_bus">The Event Bus</a>
<ul class="sectlevel2">
<li><a href="#_the_theory">The Theory</a></li>
<li><a href="#_the_event_bus_api">The Event Bus API</a></li>
<li><a href="#_automatic_clean_up_in_verticles_2">Automatic clean-up in verticles</a></li>
</ul>
</li>
<li><a href="#_configuring_the_event_bus">Configuring the event bus</a></li>
<li><a href="#_json">JSON</a>
<ul class="sectlevel2">
<li><a href="#_builders">Builders</a></li>
<li><a href="#_postscript_operator_overloading">Postscript operator overloading</a></li>
</ul>
</li>
<li><a href="#_json_pointers">Json Pointers</a></li>
<li><a href="#_buffers">Buffers</a>
<ul class="sectlevel2">
<li><a href="#_creating_buffers">Creating buffers</a></li>
<li><a href="#_writing_to_a_buffer">Writing to a Buffer</a></li>
<li><a href="#_reading_from_a_buffer">Reading from a Buffer</a></li>
<li><a href="#_working_with_unsigned_numbers">Working with unsigned numbers</a></li>
<li><a href="#_buffer_length">Buffer length</a></li>
<li><a href="#_copying_buffers">Copying buffers</a></li>
<li><a href="#_slicing_buffers">Slicing buffers</a></li>
<li><a href="#_buffer_re_use">Buffer re-use</a></li>
</ul>
</li>
<li><a href="#_writing_tcp_servers_and_clients">Writing TCP servers and clients</a>
<ul class="sectlevel2">
<li><a href="#_creating_a_tcp_server">Creating a TCP server</a></li>
<li><a href="#_configuring_a_tcp_server">Configuring a TCP server</a></li>
<li><a href="#_start_the_server_listening">Start the Server Listening</a></li>
<li><a href="#_listening_on_a_random_port">Listening on a random port</a></li>
<li><a href="#_getting_notified_of_incoming_connections">Getting notified of incoming connections</a></li>
<li><a href="#_reading_data_from_the_socket">Reading data from the socket</a></li>
<li><a href="#_writing_data_to_a_socket">Writing data to a socket</a></li>
<li><a href="#_closed_handler">Closed handler</a></li>
<li><a href="#_handling_exceptions">Handling exceptions</a></li>
<li><a href="#_event_bus_write_handler">Event bus write handler</a></li>
<li><a href="#_local_and_remote_addresses">Local and remote addresses</a></li>
<li><a href="#_sending_files_or_resources_from_the_classpath">Sending files or resources from the classpath</a></li>
<li><a href="#_streaming_sockets">Streaming sockets</a></li>
<li><a href="#_upgrading_connections_to_ssl_tls">Upgrading connections to SSL/TLS</a></li>
<li><a href="#_closing_a_tcp_server">Closing a TCP Server</a></li>
<li><a href="#_automatic_clean_up_in_verticles_3">Automatic clean-up in verticles</a></li>
<li><a href="#_scaling_sharing_tcp_servers">Scaling - sharing TCP servers</a></li>
<li><a href="#_creating_a_tcp_client">Creating a TCP client</a></li>
<li><a href="#_configuring_a_tcp_client">Configuring a TCP client</a></li>
<li><a href="#_making_connections">Making connections</a></li>
<li><a href="#_configuring_connection_attempts">Configuring connection attempts</a></li>
<li><a href="#logging_network_activity">Logging network activity</a></li>
<li><a href="#ssl">Configuring servers and clients to work with SSL/TLS</a></li>
<li><a href="#_using_a_proxy_for_client_connections">Using a proxy for client connections</a></li>
</ul>
</li>
<li><a href="#_writing_http_servers_and_clients">Writing HTTP servers and clients</a>
<ul class="sectlevel2">
<li><a href="#_creating_an_http_server">Creating an HTTP Server</a></li>
<li><a href="#_configuring_an_http_server">Configuring an HTTP server</a></li>
<li><a href="#_configuring_an_http_2_server">Configuring an HTTP/2 server</a></li>
<li><a href="#_logging_network_server_activity">Logging network server activity</a></li>
<li><a href="#_start_the_server_listening_2">Start the Server Listening</a></li>
<li><a href="#_getting_notified_of_incoming_requests">Getting notified of incoming requests</a></li>
<li><a href="#_handling_requests">Handling requests</a></li>
<li><a href="#_sending_back_responses">Sending back responses</a></li>
<li><a href="#_http_compression">HTTP Compression</a></li>
<li><a href="#_creating_an_http_client">Creating an HTTP client</a></li>
<li><a href="#_logging_network_client_activity">Logging network client activity</a></li>
<li><a href="#_making_requests">Making requests</a></li>
<li><a href="#_handling_http_responses">Handling HTTP responses</a></li>
<li><a href="#_enabling_compression_on_the_client">Enabling compression on the client</a></li>
<li><a href="#_http_1_x_pooling_and_keep_alive">HTTP/1.x pooling and keep alive</a></li>
<li><a href="#_http_1_1_pipe_lining">HTTP/1.1 pipe-lining</a></li>
<li><a href="#_http_2_multiplexing">HTTP/2 multiplexing</a></li>
<li><a href="#_http_connections">HTTP connections</a></li>
<li><a href="#_httpclient_usage">HttpClient usage</a></li>
<li><a href="#_server_sharing">Server sharing</a></li>
<li><a href="#_using_https_with_vert_x">Using HTTPS with Vert.x</a></li>
<li><a href="#_websockets">WebSockets</a></li>
<li><a href="#_using_a_proxy_for_http_https_connections">Using a proxy for HTTP/HTTPS connections</a></li>
<li><a href="#_automatic_clean_up_in_verticles_4">Automatic clean-up in verticles</a></li>
</ul>
</li>
<li><a href="#_using_the_shareddata_api">Using the SharedData API</a>
<ul class="sectlevel2">
<li><a href="#_local_maps">Local maps</a></li>
<li><a href="#_asynchronous_shared_maps">Asynchronous shared maps</a></li>
<li><a href="#_asynchronous_locks">Asynchronous locks</a></li>
<li><a href="#_asynchronous_counters">Asynchronous counters</a></li>
</ul>
</li>
<li><a href="#_using_the_file_system_with_vert_x">Using the file system with Vert.x</a>
<ul class="sectlevel2">
<li><a href="#_asynchronous_files">Asynchronous files</a></li>
</ul>
</li>
<li><a href="#_datagram_sockets_udp">Datagram sockets (UDP)</a>
<ul class="sectlevel2">
<li><a href="#_creating_a_datagramsocket">Creating a DatagramSocket</a></li>
<li><a href="#_sending_datagram_packets">Sending Datagram packets</a></li>
<li><a href="#_receiving_datagram_packets">Receiving Datagram packets</a></li>
<li><a href="#_multicast">Multicast</a></li>
</ul>
</li>
<li><a href="#_dns_client">DNS client</a>
<ul class="sectlevel2">
<li><a href="#_lookup">lookup</a></li>
<li><a href="#_lookup4">lookup4</a></li>
<li><a href="#_lookup6">lookup6</a></li>
<li><a href="#_resolvea">resolveA</a></li>
<li><a href="#_resolveaaaa">resolveAAAA</a></li>
<li><a href="#_resolvecname">resolveCNAME</a></li>
<li><a href="#_resolvemx">resolveMX</a></li>
<li><a href="#_resolvetxt">resolveTXT</a></li>
<li><a href="#_resolvens">resolveNS</a></li>
<li><a href="#_resolvesrv">resolveSRV</a></li>
<li><a href="#_resolveptr">resolvePTR</a></li>
<li><a href="#_reverselookup">reverseLookup</a></li>
</ul>
</li>
<li><a href="#streams">Streams</a>
<ul class="sectlevel2">
<li><a href="#_readstream">ReadStream</a></li>
<li><a href="#_writestream">WriteStream</a></li>
<li><a href="#_pump">Pump</a></li>
</ul>
</li>
<li><a href="#_record_parser">Record Parser</a></li>
<li><a href="#_json_parser">Json Parser</a></li>
<li><a href="#_thread_safety">Thread safety</a></li>
<li><a href="#_metrics_spi">Metrics SPI</a></li>
<li><a href="#_osgi">OSGi</a></li>
<li><a href="#_the_vertx_command_line">The 'vertx' command line</a>
<ul class="sectlevel2">
<li><a href="#_run_verticles">Run verticles</a></li>
<li><a href="#_executing_a_vert_x_application_packaged_as_a_fat_jar">Executing a Vert.x application packaged as a fat jar</a></li>
<li><a href="#_displaying_version_of_vert_x">Displaying version of Vert.x</a></li>
<li><a href="#_other_commands">Other commands</a></li>
<li><a href="#_live_redeploy">Live Redeploy</a></li>
</ul>
</li>
<li><a href="#_cluster_managers">Cluster Managers</a></li>
<li><a href="#_logging">Logging</a>
<ul class="sectlevel2">
<li><a href="#_configuring_jul_logging">Configuring JUL logging</a></li>
<li><a href="#_using_another_logging_framework">Using another logging framework</a></li>
<li><a href="#netty-logging">Netty logging</a></li>
<li><a href="#_troubleshooting">Troubleshooting</a></li>
</ul>
</li>
<li><a href="#_high_availability_and_fail_over">High Availability and Fail-Over</a>
<ul class="sectlevel2">
<li><a href="#_automatic_failover">Automatic failover</a></li>
<li><a href="#_ha_groups">HA groups</a></li>
<li><a href="#_dealing_with_network_partitions_quora">Dealing with network partitions - Quora</a></li>
</ul>
</li>
<li><a href="#_native_transports">Native transports</a>
<ul class="sectlevel2">
<li><a href="#_native_linux_transport">Native Linux Transport</a></li>
<li><a href="#_native_bsd_transport">Native BSD Transport</a></li>
<li><a href="#_domain_sockets">Domain sockets</a></li>
</ul>
</li>
<li><a href="#_security_notes">Security notes</a>
<ul class="sectlevel2">
<li><a href="#_web_applications">Web applications</a></li>
<li><a href="#_clustered_event_bus_traffic">Clustered event bus traffic</a></li>
<li><a href="#_standard_security_best_practices">Standard security best practices</a></li>
</ul>
</li>
<li><a href="#_vert_x_command_line_interface_api">Vert.x Command Line Interface API</a>
<ul class="sectlevel2">
<li><a href="#_definition_stage">Definition Stage</a></li>
<li><a href="#_parsing_stage">Parsing Stage</a></li>
<li><a href="#_query_interrogation_stage">Query / Interrogation Stage</a></li>
</ul>
</li>
<li><a href="#_the_vert_x_launcher">The vert.x Launcher</a>
<ul class="sectlevel2">
<li><a href="#_extending_the_vert_x_launcher">Extending the vert.x Launcher</a></li>
<li><a href="#_using_the_launcher_in_fat_jars">Using the Launcher in fat jars</a></li>
<li><a href="#_sub_classing_the_launcher">Sub-classing the Launcher</a></li>
<li><a href="#_launcher_and_exit_code">Launcher and exit code</a></li>
</ul>
</li>
<li><a href="#_configuring_vert_x_cache">Configuring Vert.x cache</a></li>
</ul>
        </div>
      </div>
      <div class="col-sm-12 col-md-pull-3 col-md-9">
        <div class="toc hidden-md hidden-lg">
          <h2>Table of Contents</h2>
          <ul class="sectlevel1">
<li><a href="#_are_you_fluent">Are you fluent?</a></li>
<li><a href="#_don_t_call_us_we_ll_call_you">Don&#8217;t call us, we&#8217;ll call you.</a></li>
<li><a href="#_don_t_block_me">Don&#8217;t block me!</a></li>
<li><a href="#_reactor_and_multi_reactor">Reactor and Multi-Reactor</a></li>
<li><a href="#golden_rule">The Golden Rule - Don&#8217;t Block the Event Loop</a></li>
<li><a href="#blocking_code">Running blocking code</a></li>
<li><a href="#_async_coordination">Async coordination</a>
<ul class="sectlevel2">
<li><a href="#_concurrent_composition">Concurrent composition</a></li>
<li><a href="#_sequential_composition">Sequential composition</a></li>
<li><a href="#_completionstage_interoperability">CompletionStage interoperability</a></li>
</ul>
</li>
<li><a href="#_verticles">Verticles</a>
<ul class="sectlevel2">
<li><a href="#_writing_verticles">Writing Verticles</a></li>
<li><a href="#_verticle_types">Verticle Types</a></li>
<li><a href="#_standard_verticles">Standard verticles</a></li>
<li><a href="#worker_verticles">Worker verticles</a></li>
<li><a href="#_deploying_verticles_programmatically">Deploying verticles programmatically</a></li>
<li><a href="#_rules_for_mapping_a_verticle_name_to_a_verticle_factory">Rules for mapping a verticle name to a verticle factory</a></li>
<li><a href="#_how_are_verticle_factories_located">How are Verticle Factories located?</a></li>
<li><a href="#_waiting_for_deployment_to_complete">Waiting for deployment to complete</a></li>
<li><a href="#_undeploying_verticle_deployments">Undeploying verticle deployments</a></li>
<li><a href="#_specifying_number_of_verticle_instances">Specifying number of verticle instances</a></li>
<li><a href="#_verticle_isolation_groups">Verticle Isolation Groups</a></li>
<li><a href="#_high_availability">High Availability</a></li>
<li><a href="#_running_verticles_from_the_command_line">Running Verticles from the command line</a></li>
<li><a href="#_causing_vert_x_to_exit">Causing Vert.x to exit</a></li>
<li><a href="#_the_context_object">The Context object</a></li>
<li><a href="#_executing_periodic_and_delayed_actions">Executing periodic and delayed actions</a></li>
<li><a href="#_verticle_worker_pool">Verticle worker pool</a></li>
</ul>
</li>
<li><a href="#event_bus">The Event Bus</a>
<ul class="sectlevel2">
<li><a href="#_the_theory">The Theory</a></li>
<li><a href="#_the_event_bus_api">The Event Bus API</a></li>
<li><a href="#_automatic_clean_up_in_verticles_2">Automatic clean-up in verticles</a></li>
</ul>
</li>
<li><a href="#_configuring_the_event_bus">Configuring the event bus</a></li>
<li><a href="#_json">JSON</a>
<ul class="sectlevel2">
<li><a href="#_builders">Builders</a></li>
<li><a href="#_postscript_operator_overloading">Postscript operator overloading</a></li>
</ul>
</li>
<li><a href="#_json_pointers">Json Pointers</a></li>
<li><a href="#_buffers">Buffers</a>
<ul class="sectlevel2">
<li><a href="#_creating_buffers">Creating buffers</a></li>
<li><a href="#_writing_to_a_buffer">Writing to a Buffer</a></li>
<li><a href="#_reading_from_a_buffer">Reading from a Buffer</a></li>
<li><a href="#_working_with_unsigned_numbers">Working with unsigned numbers</a></li>
<li><a href="#_buffer_length">Buffer length</a></li>
<li><a href="#_copying_buffers">Copying buffers</a></li>
<li><a href="#_slicing_buffers">Slicing buffers</a></li>
<li><a href="#_buffer_re_use">Buffer re-use</a></li>
</ul>
</li>
<li><a href="#_writing_tcp_servers_and_clients">Writing TCP servers and clients</a>
<ul class="sectlevel2">
<li><a href="#_creating_a_tcp_server">Creating a TCP server</a></li>
<li><a href="#_configuring_a_tcp_server">Configuring a TCP server</a></li>
<li><a href="#_start_the_server_listening">Start the Server Listening</a></li>
<li><a href="#_listening_on_a_random_port">Listening on a random port</a></li>
<li><a href="#_getting_notified_of_incoming_connections">Getting notified of incoming connections</a></li>
<li><a href="#_reading_data_from_the_socket">Reading data from the socket</a></li>
<li><a href="#_writing_data_to_a_socket">Writing data to a socket</a></li>
<li><a href="#_closed_handler">Closed handler</a></li>
<li><a href="#_handling_exceptions">Handling exceptions</a></li>
<li><a href="#_event_bus_write_handler">Event bus write handler</a></li>
<li><a href="#_local_and_remote_addresses">Local and remote addresses</a></li>
<li><a href="#_sending_files_or_resources_from_the_classpath">Sending files or resources from the classpath</a></li>
<li><a href="#_streaming_sockets">Streaming sockets</a></li>
<li><a href="#_upgrading_connections_to_ssl_tls">Upgrading connections to SSL/TLS</a></li>
<li><a href="#_closing_a_tcp_server">Closing a TCP Server</a></li>
<li><a href="#_automatic_clean_up_in_verticles_3">Automatic clean-up in verticles</a></li>
<li><a href="#_scaling_sharing_tcp_servers">Scaling - sharing TCP servers</a></li>
<li><a href="#_creating_a_tcp_client">Creating a TCP client</a></li>
<li><a href="#_configuring_a_tcp_client">Configuring a TCP client</a></li>
<li><a href="#_making_connections">Making connections</a></li>
<li><a href="#_configuring_connection_attempts">Configuring connection attempts</a></li>
<li><a href="#logging_network_activity">Logging network activity</a></li>
<li><a href="#ssl">Configuring servers and clients to work with SSL/TLS</a></li>
<li><a href="#_using_a_proxy_for_client_connections">Using a proxy for client connections</a></li>
</ul>
</li>
<li><a href="#_writing_http_servers_and_clients">Writing HTTP servers and clients</a>
<ul class="sectlevel2">
<li><a href="#_creating_an_http_server">Creating an HTTP Server</a></li>
<li><a href="#_configuring_an_http_server">Configuring an HTTP server</a></li>
<li><a href="#_configuring_an_http_2_server">Configuring an HTTP/2 server</a></li>
<li><a href="#_logging_network_server_activity">Logging network server activity</a></li>
<li><a href="#_start_the_server_listening_2">Start the Server Listening</a></li>
<li><a href="#_getting_notified_of_incoming_requests">Getting notified of incoming requests</a></li>
<li><a href="#_handling_requests">Handling requests</a></li>
<li><a href="#_sending_back_responses">Sending back responses</a></li>
<li><a href="#_http_compression">HTTP Compression</a></li>
<li><a href="#_creating_an_http_client">Creating an HTTP client</a></li>
<li><a href="#_logging_network_client_activity">Logging network client activity</a></li>
<li><a href="#_making_requests">Making requests</a></li>
<li><a href="#_handling_http_responses">Handling HTTP responses</a></li>
<li><a href="#_enabling_compression_on_the_client">Enabling compression on the client</a></li>
<li><a href="#_http_1_x_pooling_and_keep_alive">HTTP/1.x pooling and keep alive</a></li>
<li><a href="#_http_1_1_pipe_lining">HTTP/1.1 pipe-lining</a></li>
<li><a href="#_http_2_multiplexing">HTTP/2 multiplexing</a></li>
<li><a href="#_http_connections">HTTP connections</a></li>
<li><a href="#_httpclient_usage">HttpClient usage</a></li>
<li><a href="#_server_sharing">Server sharing</a></li>
<li><a href="#_using_https_with_vert_x">Using HTTPS with Vert.x</a></li>
<li><a href="#_websockets">WebSockets</a></li>
<li><a href="#_using_a_proxy_for_http_https_connections">Using a proxy for HTTP/HTTPS connections</a></li>
<li><a href="#_automatic_clean_up_in_verticles_4">Automatic clean-up in verticles</a></li>
</ul>
</li>
<li><a href="#_using_the_shareddata_api">Using the SharedData API</a>
<ul class="sectlevel2">
<li><a href="#_local_maps">Local maps</a></li>
<li><a href="#_asynchronous_shared_maps">Asynchronous shared maps</a></li>
<li><a href="#_asynchronous_locks">Asynchronous locks</a></li>
<li><a href="#_asynchronous_counters">Asynchronous counters</a></li>
</ul>
</li>
<li><a href="#_using_the_file_system_with_vert_x">Using the file system with Vert.x</a>
<ul class="sectlevel2">
<li><a href="#_asynchronous_files">Asynchronous files</a></li>
</ul>
</li>
<li><a href="#_datagram_sockets_udp">Datagram sockets (UDP)</a>
<ul class="sectlevel2">
<li><a href="#_creating_a_datagramsocket">Creating a DatagramSocket</a></li>
<li><a href="#_sending_datagram_packets">Sending Datagram packets</a></li>
<li><a href="#_receiving_datagram_packets">Receiving Datagram packets</a></li>
<li><a href="#_multicast">Multicast</a></li>
</ul>
</li>
<li><a href="#_dns_client">DNS client</a>
<ul class="sectlevel2">
<li><a href="#_lookup">lookup</a></li>
<li><a href="#_lookup4">lookup4</a></li>
<li><a href="#_lookup6">lookup6</a></li>
<li><a href="#_resolvea">resolveA</a></li>
<li><a href="#_resolveaaaa">resolveAAAA</a></li>
<li><a href="#_resolvecname">resolveCNAME</a></li>
<li><a href="#_resolvemx">resolveMX</a></li>
<li><a href="#_resolvetxt">resolveTXT</a></li>
<li><a href="#_resolvens">resolveNS</a></li>
<li><a href="#_resolvesrv">resolveSRV</a></li>
<li><a href="#_resolveptr">resolvePTR</a></li>
<li><a href="#_reverselookup">reverseLookup</a></li>
</ul>
</li>
<li><a href="#streams">Streams</a>
<ul class="sectlevel2">
<li><a href="#_readstream">ReadStream</a></li>
<li><a href="#_writestream">WriteStream</a></li>
<li><a href="#_pump">Pump</a></li>
</ul>
</li>
<li><a href="#_record_parser">Record Parser</a></li>
<li><a href="#_json_parser">Json Parser</a></li>
<li><a href="#_thread_safety">Thread safety</a></li>
<li><a href="#_metrics_spi">Metrics SPI</a></li>
<li><a href="#_osgi">OSGi</a></li>
<li><a href="#_the_vertx_command_line">The 'vertx' command line</a>
<ul class="sectlevel2">
<li><a href="#_run_verticles">Run verticles</a></li>
<li><a href="#_executing_a_vert_x_application_packaged_as_a_fat_jar">Executing a Vert.x application packaged as a fat jar</a></li>
<li><a href="#_displaying_version_of_vert_x">Displaying version of Vert.x</a></li>
<li><a href="#_other_commands">Other commands</a></li>
<li><a href="#_live_redeploy">Live Redeploy</a></li>
</ul>
</li>
<li><a href="#_cluster_managers">Cluster Managers</a></li>
<li><a href="#_logging">Logging</a>
<ul class="sectlevel2">
<li><a href="#_configuring_jul_logging">Configuring JUL logging</a></li>
<li><a href="#_using_another_logging_framework">Using another logging framework</a></li>
<li><a href="#netty-logging">Netty logging</a></li>
<li><a href="#_troubleshooting">Troubleshooting</a></li>
</ul>
</li>
<li><a href="#_high_availability_and_fail_over">High Availability and Fail-Over</a>
<ul class="sectlevel2">
<li><a href="#_automatic_failover">Automatic failover</a></li>
<li><a href="#_ha_groups">HA groups</a></li>
<li><a href="#_dealing_with_network_partitions_quora">Dealing with network partitions - Quora</a></li>
</ul>
</li>
<li><a href="#_native_transports">Native transports</a>
<ul class="sectlevel2">
<li><a href="#_native_linux_transport">Native Linux Transport</a></li>
<li><a href="#_native_bsd_transport">Native BSD Transport</a></li>
<li><a href="#_domain_sockets">Domain sockets</a></li>
</ul>
</li>
<li><a href="#_security_notes">Security notes</a>
<ul class="sectlevel2">
<li><a href="#_web_applications">Web applications</a></li>
<li><a href="#_clustered_event_bus_traffic">Clustered event bus traffic</a></li>
<li><a href="#_standard_security_best_practices">Standard security best practices</a></li>
</ul>
</li>
<li><a href="#_vert_x_command_line_interface_api">Vert.x Command Line Interface API</a>
<ul class="sectlevel2">
<li><a href="#_definition_stage">Definition Stage</a></li>
<li><a href="#_parsing_stage">Parsing Stage</a></li>
<li><a href="#_query_interrogation_stage">Query / Interrogation Stage</a></li>
</ul>
</li>
<li><a href="#_the_vert_x_launcher">The vert.x Launcher</a>
<ul class="sectlevel2">
<li><a href="#_extending_the_vert_x_launcher">Extending the vert.x Launcher</a></li>
<li><a href="#_using_the_launcher_in_fat_jars">Using the Launcher in fat jars</a></li>
<li><a href="#_sub_classing_the_launcher">Sub-classing the Launcher</a></li>
<li><a href="#_launcher_and_exit_code">Launcher and exit code</a></li>
</ul>
</li>
<li><a href="#_configuring_vert_x_cache">Configuring Vert.x cache</a></li>
</ul>
        </div>
        <div id="preamble">
<div class="sectionbody">
<div class="paragraph">
<p>At the heart of Vert.x is a set of Java APIs that we call <strong>Vert.x Core</strong></p>
</div>
<div class="paragraph">
<p><a href="https://github.com/eclipse/vert.x">Repository</a>.</p>
</div>
<div class="paragraph">
<p>Vert.x core provides functionality for things like:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>Writing TCP clients and servers</p>
</li>
<li>
<p>Writing HTTP clients and servers including support for WebSockets</p>
</li>
<li>
<p>The Event bus</p>
</li>
<li>
<p>Shared data - local maps and clustered distributed maps</p>
</li>
<li>
<p>Periodic and delayed actions</p>
</li>
<li>
<p>Deploying and undeploying Verticles</p>
</li>
<li>
<p>Datagram Sockets</p>
</li>
<li>
<p>DNS client</p>
</li>
<li>
<p>File system access</p>
</li>
<li>
<p>High availability</p>
</li>
<li>
<p>Native transports</p>
</li>
<li>
<p>Clustering</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>The functionality in core is fairly low level - you won&#8217;t find stuff like database access, authorisation or high level
web functionality here - that kind of stuff you&#8217;ll find in <strong>Vert.x ext</strong> (extensions).</p>
</div>
<div class="paragraph">
<p>Vert.x core is small and lightweight. You just use the parts you want. It&#8217;s also entirely embeddable in your
existing applications - we don&#8217;t force you to structure your applications in a special way just so you can use
Vert.x.</p>
</div>
<div class="paragraph">
<p>You can use core from any of the other languages that Vert.x supports. But here&#8217;a a cool bit - we don&#8217;t force
you to use the Java API directly from, say, JavaScript or Ruby - after all, different languages have different conventions
and idioms, and it would be odd to force Java idioms on Ruby developers (for example).
Instead, we automatically generate an <strong>idiomatic</strong> equivalent of the core Java APIs for each language.</p>
</div>
<div class="paragraph">
<p>From now on we&#8217;ll just use the word <strong>core</strong> to refer to Vert.x core.</p>
</div>
<div class="paragraph">
<p>If you are using Maven or Gradle, add the following dependency to the <em>dependencies</em> section of your
project descriptor to access the Vert.x Core API and enable the JavaScript support:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>Maven (in your <code>pom.xml</code>):</p>
</li>
</ul>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="xml"><span class="tag">&lt;dependency&gt;</span>
<span class="tag">&lt;groupId&gt;</span>io.vertx<span class="tag">&lt;/groupId&gt;</span>
<span class="tag">&lt;artifactId&gt;</span>vertx-core<span class="tag">&lt;/artifactId&gt;</span>
<span class="tag">&lt;version&gt;</span>3.9.1<span class="tag">&lt;/version&gt;</span>
<span class="tag">&lt;/dependency&gt;</span>
<span class="tag">&lt;dependency&gt;</span>
 <span class="tag">&lt;groupId&gt;</span>io.vertx<span class="tag">&lt;/groupId&gt;</span>
 <span class="tag">&lt;artifactId&gt;</span>vertx-lang-kotlin<span class="tag">&lt;/artifactId&gt;</span>
 <span class="tag">&lt;version&gt;</span>3.9.1<span class="tag">&lt;/version&gt;</span>
<span class="tag">&lt;/dependency&gt;</span></code></pre>
</div>
</div>
<div class="ulist">
<ul>
<li>
<p>Gradle (in your <code>build.gradle</code> file):</p>
</li>
</ul>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="groovy">compile <span class="string"><span class="delimiter">&quot;</span><span class="content">io.vertx:vertx-core:3.9.1</span><span class="delimiter">&quot;</span></span>
compile <span class="string"><span class="delimiter">&quot;</span><span class="content">io.vertx:vertx-lang-kotlin:3.9.1</span><span class="delimiter">&quot;</span></span></code></pre>
</div>
</div>
<div class="paragraph">
<p>Let&#8217;s discuss the different concepts and features in core.</p>
</div>
<div class="paragraph">
<p>Unresolved directive in index.adoc - include::override/in-the-beginning.adoc[]</p>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_are_you_fluent">Are you fluent?</h2>
<div class="sectionbody">
<div class="paragraph">
<p>You may have noticed that in the previous examples a <strong>fluent</strong> API was used.</p>
</div>
<div class="paragraph">
<p>A fluent API is where multiple methods calls can be chained together. For example:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">request.response().putHeader(&quot;Content-Type&quot;, &quot;text/plain&quot;).write(&quot;some text&quot;).end()</code></pre>
</div>
</div>
<div class="paragraph">
<p>This is a common pattern throughout Vert.x APIs, so get used to it.</p>
</div>
<div class="paragraph">
<p>Chaining calls like this allows you to write code that&#8217;s a little bit less verbose. Of course, if you don&#8217;t
like the fluent approach <strong>we don&#8217;t force you</strong> to do it that way, you can happily ignore it if you prefer and write
your code like this:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var response = request.response()
response.putHeader(&quot;Content-Type&quot;, &quot;text/plain&quot;)
response.write(&quot;some text&quot;)
response.end()</code></pre>
</div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_don_t_call_us_we_ll_call_you">Don&#8217;t call us, we&#8217;ll call you.</h2>
<div class="sectionbody">
<div class="paragraph">
<p>The Vert.x APIs are largely <em>event driven</em>. This means that when things happen in Vert.x that you are interested in,
Vert.x will call you by sending you events.</p>
</div>
<div class="paragraph">
<p>Some example events are:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>a timer has fired</p>
</li>
<li>
<p>some data has arrived on a socket,</p>
</li>
<li>
<p>some data has been read from disk</p>
</li>
<li>
<p>an exception has occurred</p>
</li>
<li>
<p>an HTTP server has received a request</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>You handle events by providing <em>handlers</em> to the Vert.x APIs. For example to receive a timer event every second you
would do:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">vertx.setPeriodic(1000, { id -&gt;
  // This handler will get called every second
  println(&quot;timer fired!&quot;)
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>Or to receive an HTTP request:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">// Respond to each http request with &quot;Hello World&quot;
server.requestHandler({ request -&gt;
  // This handler will be called every time an HTTP request is received at the server
  request.response().end(&quot;hello world!&quot;)
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>Some time later when Vert.x has an event to pass to your handler Vert.x will call it <strong>asynchronously</strong>.</p>
</div>
<div class="paragraph">
<p>This leads us to some important concepts in Vert.x:</p>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_don_t_block_me">Don&#8217;t block me!</h2>
<div class="sectionbody">
<div class="paragraph">
<p>With very few exceptions (i.e. some file system operations ending in 'Sync'), none of the APIs in Vert.x block the calling thread.</p>
</div>
<div class="paragraph">
<p>If a result can be provided immediately, it will be returned immediately, otherwise you will usually provide a handler
to receive events some time later.</p>
</div>
<div class="paragraph">
<p>Because none of the Vert.x APIs block threads that means you can use Vert.x to handle a lot of concurrency using
just a small number of threads.</p>
</div>
<div class="paragraph">
<p>With a conventional blocking API the calling thread might block when:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>Reading data from a socket</p>
</li>
<li>
<p>Writing data to disk</p>
</li>
<li>
<p>Sending a message to a recipient and waiting for a reply.</p>
</li>
<li>
<p>&#8230;&#8203; Many other situations</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>In all the above cases, when your thread is waiting for a result it can&#8217;t do anything else - it&#8217;s effectively useless.</p>
</div>
<div class="paragraph">
<p>This means that if you want a lot of concurrency using blocking APIs then you need a lot of threads to prevent your
application grinding to a halt.</p>
</div>
<div class="paragraph">
<p>Threads have overhead in terms of the memory they require (e.g. for their stack) and in context switching.</p>
</div>
<div class="paragraph">
<p>For the levels of concurrency required in many modern applications, a blocking approach just doesn&#8217;t scale.</p>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_reactor_and_multi_reactor">Reactor and Multi-Reactor</h2>
<div class="sectionbody">
<div class="paragraph">
<p>We mentioned before that Vert.x APIs are event driven - Vert.x passes events to handlers when they are available.</p>
</div>
<div class="paragraph">
<p>In most cases Vert.x calls your handlers using a thread called an <strong>event loop</strong>.</p>
</div>
<div class="paragraph">
<p>As nothing in Vert.x or your application blocks, the event loop can merrily run around delivering events to different handlers in succession
as they arrive.</p>
</div>
<div class="paragraph">
<p>Because nothing blocks, an event loop can potentially deliver huge amounts of events in a short amount of time.
For example a single event loop can handle many thousands of HTTP requests very quickly.</p>
</div>
<div class="paragraph">
<p>We call this the <a href="https://en.wikipedia.org/wiki/Reactor_pattern">Reactor Pattern</a>.</p>
</div>
<div class="paragraph">
<p>You may have heard of this before - for example Node.js implements this pattern.</p>
</div>
<div class="paragraph">
<p>In a standard reactor implementation there is a <strong>single event loop</strong> thread which runs around in a loop delivering all
events to all handlers as they arrive.</p>
</div>
<div class="paragraph">
<p>The trouble with a single thread is it can only run on a single core at any one time, so if you want your single threaded
reactor application (e.g. your Node.js application) to scale over your multi-core server you have to start up and
manage many different processes.</p>
</div>
<div class="paragraph">
<p>Vert.x works differently here. Instead of a single event loop, each Vertx instance maintains <strong>several event loops</strong>.
By default we choose the number based on the number of available cores on the machine, but this can be overridden.</p>
</div>
<div class="paragraph">
<p>This means a single Vertx process can scale across your server, unlike Node.js.</p>
</div>
<div class="paragraph">
<p>We call this pattern the <strong>Multi-Reactor Pattern</strong> to distinguish it from the single threaded reactor pattern.</p>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<div class="title">Note</div>
</td>
<td class="content">
Even though a Vertx instance maintains multiple event loops, any particular handler will never be executed
concurrently, and in most cases (with the exception of <a href="#worker_verticles">worker verticles</a>) will always be called
using the <strong>exact same event loop</strong>.
</td>
</tr>
</table>
</div>
</div>
</div>
<div class="sect1">
<h2 id="golden_rule">The Golden Rule - Don&#8217;t Block the Event Loop</h2>
<div class="sectionbody">
<div class="paragraph">
<p>We already know that the Vert.x APIs are non blocking and won&#8217;t block the event loop, but that&#8217;s not much help if
you block the event loop <strong>yourself</strong> in a handler.</p>
</div>
<div class="paragraph">
<p>If you do that, then that event loop will not be able to do anything else while it&#8217;s blocked. If you block all of the
event loops in Vertx instance then your application will grind to a complete halt!</p>
</div>
<div class="paragraph">
<p>So don&#8217;t do it! <strong>You have been warned</strong>.</p>
</div>
<div class="paragraph">
<p>Examples of blocking include:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>Thread.sleep()</p>
</li>
<li>
<p>Waiting on a lock</p>
</li>
<li>
<p>Waiting on a mutex or monitor (e.g. synchronized section)</p>
</li>
<li>
<p>Doing a long lived database operation and waiting for a result</p>
</li>
<li>
<p>Doing a complex calculation that takes some significant time.</p>
</li>
<li>
<p>Spinning in a loop</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>If any of the above stop the event loop from doing anything else for a <strong>significant amount of time</strong> then you should
go immediately to the naughty step, and await further instructions.</p>
</div>
<div class="paragraph">
<p>So&#8230;&#8203; what is a <strong>significant amount of time</strong>?</p>
</div>
<div class="paragraph">
<p>How long is a piece of string? It really depends on your application and the amount of concurrency you require.</p>
</div>
<div class="paragraph">
<p>If you have a single event loop, and you want to handle 10000 http requests per second, then it&#8217;s clear that each request
can&#8217;t take more than 0.1 ms to process, so you can&#8217;t block for any more time than that.</p>
</div>
<div class="paragraph">
<p><strong>The maths is not hard and shall be left as an exercise for the reader.</strong></p>
</div>
<div class="paragraph">
<p>If your application is not responsive it might be a sign that you are blocking an event loop somewhere. To help
you diagnose such issues, Vert.x will automatically log warnings if it detects an event loop hasn&#8217;t returned for
some time. If you see warnings like these in your logs, then you should investigate.</p>
</div>
<div class="listingblock">
<div class="content">
<pre>Thread vertx-eventloop-thread-3 has been blocked for 20458 ms</pre>
</div>
</div>
<div class="paragraph">
<p>Vert.x will also provide stack traces to pinpoint exactly where the blocking is occurring.</p>
</div>
<div class="paragraph">
<p>If you want to turn off these warnings or change the settings, you can do that in the
<code><a href="../../apidocs/io/vertx/core/VertxOptions.html">VertxOptions</a></code> object before creating the Vertx object.</p>
</div>
</div>
</div>
<div class="sect1">
<h2 id="blocking_code">Running blocking code</h2>
<div class="sectionbody">
<div class="paragraph">
<p>In a perfect world, there will be no war or hunger, all APIs will be written asynchronously and bunny rabbits will
skip hand-in-hand with baby lambs across sunny green meadows.</p>
</div>
<div class="paragraph">
<p><strong>But&#8230;&#8203; the real world is not like that. (Have you watched the news lately?)</strong></p>
</div>
<div class="paragraph">
<p>Fact is, many, if not most libraries, especially in the JVM ecosystem have synchronous APIs and many of the methods are
likely to block. A good example is the JDBC API - it&#8217;s inherently synchronous, and no matter how hard it tries, Vert.x
cannot sprinkle magic pixie dust on it to make it asynchronous.</p>
</div>
<div class="paragraph">
<p>We&#8217;re not going to rewrite everything to be asynchronous overnight so we need to provide you a way to use "traditional"
blocking APIs safely within a Vert.x application.</p>
</div>
<div class="paragraph">
<p>As discussed before, you can&#8217;t call blocking operations directly from an event loop, as that would prevent it
from doing any other useful work. So how can you do this?</p>
</div>
<div class="paragraph">
<p>It&#8217;s done by calling <code><a href="../../apidocs/io/vertx/core/Vertx.html#executeBlocking-io.vertx.core.Handler-boolean-io.vertx.core.Handler-">executeBlocking</a></code> specifying both the blocking code to execute and a
result handler to be called back asynchronous when the blocking code has been executed.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">vertx.executeBlocking&lt;Any&gt;({ promise -&gt;
  // Call some blocking API that takes a significant amount of time to return
  var result = someAPI.blockingMethod(&quot;hello&quot;)
  promise.complete(result)
}, { res -&gt;
  println(&quot;The result is: ${res.result()}&quot;)
})</code></pre>
</div>
</div>
<div class="admonitionblock warning">
<table>
<tr>
<td class="icon">
<div class="title">Warning</div>
</td>
<td class="content">
Blocking code should block for a reasonable amount of time (i.e no more than a few seconds). Long blocking operations
        or polling operations (i.e a thread that spin in a loop polling events in a blocking fashion) are precluded.
        When the blocking operation lasts more than the 10 seconds, a message will be printed on the console by the
        blocked thread checker. Long blocking operations should use a dedicated thread managed by the application,
        which can interact with verticles using the event-bus or <code><a href="../../apidocs/io/vertx/core/Context.html#runOnContext-io.vertx.core.Handler-">runOnContext</a></code>
</td>
</tr>
</table>
</div>
<div class="paragraph">
<p>By default, if executeBlocking is called several times from the same context (e.g. the same verticle instance) then
the different executeBlocking are executed <em>serially</em> (i.e. one after another).</p>
</div>
<div class="paragraph">
<p>If you don&#8217;t care about ordering you can call <code><a href="../../apidocs/io/vertx/core/Vertx.html#executeBlocking-io.vertx.core.Handler-boolean-io.vertx.core.Handler-">executeBlocking</a></code>
specifying <code>false</code> as the argument to <code>ordered</code>. In this case any executeBlocking may be executed in parallel
on the worker pool.</p>
</div>
<div class="paragraph">
<p>An alternative way to run blocking code is to use a <a href="#worker_verticles">worker verticle</a></p>
</div>
<div class="paragraph">
<p>A worker verticle is always executed with a thread from the worker pool.</p>
</div>
<div class="paragraph">
<p>By default blocking code is executed on the Vert.x worker pool, configured with <code><a href="../../apidocs/io/vertx/core/VertxOptions.html#setWorkerPoolSize-int-">setWorkerPoolSize</a></code>.</p>
</div>
<div class="paragraph">
<p>Additional pools can be created for different purposes:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var executor = vertx.createSharedWorkerExecutor(&quot;my-worker-pool&quot;)
executor.executeBlocking&lt;Any&gt;({ promise -&gt;
  // Call some blocking API that takes a significant amount of time to return
  var result = someAPI.blockingMethod(&quot;hello&quot;)
  promise.complete(result)
}, { res -&gt;
  println(&quot;The result is: ${res.result()}&quot;)
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>The worker executor must be closed when it&#8217;s not necessary anymore:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">executor.close()</code></pre>
</div>
</div>
<div class="paragraph">
<p>When several workers are created with the same name, they will share the same pool. The worker pool is destroyed
when all the worker executors using it are closed.</p>
</div>
<div class="paragraph">
<p>When an executor is created in a Verticle, Vert.x will close it automatically for you when the Verticle
is undeployed.</p>
</div>
<div class="paragraph">
<p>Worker executors can be configured when created:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">//
// 10 threads max
var poolSize = 10

// 2 minutes
var maxExecuteTime = 2
var maxExecuteTimeUnit = TimeUnit.MINUTES

var executor = vertx.createSharedWorkerExecutor(&quot;my-worker-pool&quot;, poolSize, maxExecuteTime, maxExecuteTimeUnit)</code></pre>
</div>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<div class="title">Note</div>
</td>
<td class="content">
the configuration is set when the worker pool is created
</td>
</tr>
</table>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_async_coordination">Async coordination</h2>
<div class="sectionbody">
<div class="paragraph">
<p>Coordination of multiple asynchronous results can be achieved with Vert.x <code><a href="../../apidocs/io/vertx/core/Future.html">futures</a></code>. It
supports concurrent composition (run several async operations in parallel) and sequential composition
(chain async operations).</p>
</div>
<div class="sect2">
<h3 id="_concurrent_composition">Concurrent composition</h3>
<div class="paragraph">
<p><code><a href="../../apidocs/io/vertx/core/CompositeFuture.html#all-io.vertx.core.Future-io.vertx.core.Future-">CompositeFuture.all</a></code> takes several futures arguments (up to 6) and returns a future that is
<em>succeeded</em> when all the futures are and <em>failed</em> when at least one of the futures is failed:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var httpServerFuture = Future.future&lt;Any&gt;({ promise -&gt;
  httpServer.listen(promise)
})

var netServerFuture = Future.future&lt;Any&gt;({ promise -&gt;
  netServer.listen(promise)
})

CompositeFuture.all(httpServerFuture, netServerFuture).onComplete({ ar -&gt;
  if (ar.succeeded()) {
    // All servers started
  } else {
    // At least one server failed
  }
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>The operations run concurrently, the <code><a href="../../apidocs/io/vertx/core/Handler.html">Handler</a></code> attached to the returned future is invoked upon
completion of the composition. When one of the operation fails (one of the passed future is marked as a failure),
the resulting future is marked as failed too. When all the operations succeed, the resulting future is completed
with a success.</p>
</div>
<div class="paragraph">
<p>Alternatively, you can pass a list (potentially empty) of futures:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">CompositeFuture.all(listOf(future1, future2, future3))</code></pre>
</div>
</div>
<div class="paragraph">
<p>While the <code>all</code> composition <em>waits</em> until all futures are successful (or one fails), the <code>any</code> composition
<em>waits</em> for the first succeeded future. <code><a href="../../apidocs/io/vertx/core/CompositeFuture.html#any-io.vertx.core.Future-io.vertx.core.Future-">CompositeFuture.any</a></code> takes several futures
arguments (up to 6) and returns a future that is succeeded when one of the futures is, and failed when
all the futures are failed:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">CompositeFuture.any(future1, future2).onComplete({ ar -&gt;
  if (ar.succeeded()) {
    // At least one is succeeded
  } else {
    // All failed
  }
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>A list of futures can be used also:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">CompositeFuture.any(listOf(f1, f2, f3))</code></pre>
</div>
</div>
<div class="paragraph">
<p>The <code>join</code> composition <em>waits</em> until all futures are completed, either with a success or a failure.
<code><a href="../../apidocs/io/vertx/core/CompositeFuture.html#join-io.vertx.core.Future-io.vertx.core.Future-">CompositeFuture.join</a></code> takes several futures arguments (up to 6) and returns a future that is
succeeded when all the futures are succeeded, and failed when all the futures are completed and at least one of
them is failed:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">CompositeFuture.join(future1, future2, future3).onComplete({ ar -&gt;
  if (ar.succeeded()) {
    // All succeeded
  } else {
    // All completed and at least one failed
  }
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>A list of futures can be used also:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">CompositeFuture.join(listOf(future1, future2, future3))</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_sequential_composition">Sequential composition</h3>
<div class="paragraph">
<p>While <code>all</code> and <code>any</code> are implementing concurrent composition, <code><a href="../../apidocs/io/vertx/core/Future.html#compose-io.vertx.core.Handler-io.vertx.core.Future-">compose</a></code> can be used
for chaining futures (so sequential composition).</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var fs = vertx.fileSystem()

var fut1 = Future.future&lt;Any&gt;({ promise -&gt;
  fs.createFile(&quot;/foo&quot;, promise)
})

var startFuture = fut1.compose&lt;Any&gt;({ v -&gt;
  // When the file is created (fut1), execute this:
  return Future.future&lt;Void&gt;({ promise -&gt;
    fs.writeFile(&quot;/foo&quot;, Buffer.buffer(), promise)
  })
}).compose&lt;Any&gt;({ v -&gt;
  // When the file is written (fut2), execute this:
  return Future.future&lt;Any&gt;({ promise -&gt;
    fs.move(&quot;/foo&quot;, &quot;/bar&quot;, promise)
  })
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>In this example, 3 operations are chained:</p>
</div>
<div class="olist arabic">
<ol class="arabic">
<li>
<p>a file is created (<code>fut1</code>)</p>
</li>
<li>
<p>something is written in the file (<code>fut2</code>)</p>
</li>
<li>
<p>the file is moved (<code>startFuture</code>)</p>
</li>
</ol>
</div>
<div class="paragraph">
<p>When these 3 steps are successful, the final future (<code>startFuture</code>) is succeeded. However, if one
of the steps fails, the final future is failed.</p>
</div>
<div class="paragraph">
<p>This example uses:</p>
</div>
<div class="ulist">
<ul>
<li>
<p><code><a href="../../apidocs/io/vertx/core/Future.html#compose-java.util.function.Function-">compose</a></code>: when the current future completes,
run the given function, that returns a future. When this returned future completes, it completes the composition.</p>
</li>
<li>
<p><code><a href="../../apidocs/io/vertx/core/Future.html#compose-io.vertx.core.Handler-io.vertx.core.Future-">compose</a></code>: when the current future
completes, run the given handler that completes the given <code>future</code> (next).</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>In this second case, the <code><a href="../../apidocs/io/vertx/core/Handler.html">Handler</a></code> should complete the <code>next</code> future to report its success or
failure.</p>
</div>
</div>
<div class="sect2">
<h3 id="_completionstage_interoperability">CompletionStage interoperability</h3>
<div class="paragraph">
<p>The Vert.x <code>Future</code> API offers compatibility <em>from</em> and <em>to</em> <code>CompletionStage</code> which is the JDK interface for composable
asynchronous operations.</p>
</div>
<div class="paragraph">
<p>We can go from a Vert.x <code>Future</code> to a <code>CompletionStage</code> using the <code><a href="../../apidocs/io/vertx/core/Future.html#toCompletionStage--">toCompletionStage</a></code> method, as in:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var promise = Promise.promise&lt;Any&gt;()
vertx.createDnsClient().lookup(&quot;vertx.io&quot;, promise)
promise.future().toCompletionStage().whenComplete({ ip, err -&gt;
  if (err != null) {
    System.err.println(&quot;Could not resolve vertx.io&quot;)
    err.printStackTrace()
  } else {
    println(&quot;vertx.io =&gt; ${ip}&quot;)
  }
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>We can conversely go from a <code>CompletionStage</code> to Vert.x <code>Future</code> using <code><a href="../../apidocs/io/vertx/core/Future.html#fromCompletionStage-java.util.concurrent.CompletionStage-">Future.fromCompletionStage</a></code>.
There are 2 variants:</p>
</div>
<div class="olist arabic">
<ol class="arabic">
<li>
<p>the first variant takes just a <code>CompletionStage</code> and calls the <code>Future</code> methods from the thread that resolves the <code>CompletionStage</code> instance, and</p>
</li>
<li>
<p>the second variant takes an extra <code><a href="../../apidocs/io/vertx/core/Context.html">Context</a></code> parameter to call the <code>Future</code> methods on a Vert.x context.</p>
</li>
</ol>
</div>
<div class="admonitionblock important">
<table>
<tr>
<td class="icon">
<div class="title">Important</div>
</td>
<td class="content">
In most cases the variant with a <code>CompletionStage</code> and a <code>Context</code> is the one you will want to use to respect the Vert.x threading model,
since Vert.x <code>Future</code> are more likely to be used with Vert.x code, libraries and clients.
</td>
</tr>
</table>
</div>
<div class="paragraph">
<p>Here is an example of going from a <code>CompletionStage</code> to a Vert.x <code>Future</code> and dispatching on a context:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">Future.fromCompletionStage(completionStage, vertx.getOrCreateContext()).flatMap&lt;Any&gt;({ str -&gt;
  var key = java.util.UUID.randomUUID().toString()
  return storeInDb(key, str)
}).onSuccess({ str -&gt;
  println(&quot;We have a result: ${str}&quot;)
}).onFailure({ err -&gt;
  System.err.println(&quot;We have a problem&quot;)
  err.printStackTrace()
})</code></pre>
</div>
</div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_verticles">Verticles</h2>
<div class="sectionbody">
<div class="paragraph">
<p>Vert.x comes with a simple, scalable, <em>actor-like</em> deployment and concurrency model out of the box that
you can use to save you writing your own.</p>
</div>
<div class="paragraph">
<p><strong>This model is entirely optional and Vert.x does not force you to create your applications in this way if you don&#8217;t
want to.</strong>.</p>
</div>
<div class="paragraph">
<p>The model does not claim to be a strict actor-model implementation, but it does share similarities especially
with respect to concurrency, scaling and deployment.</p>
</div>
<div class="paragraph">
<p>To use this model, you write your code as set of <strong>verticles</strong>.</p>
</div>
<div class="paragraph">
<p>Verticles are chunks of code that get deployed and run by Vert.x. A Vert.x instance maintains N event loop threads
(where N by default is core*2) by default. Verticles can be written in any of the languages that Vert.x supports
and a single application can include verticles written in multiple languages.</p>
</div>
<div class="paragraph">
<p>You can think of a verticle as a bit like an actor in the <a href="https://en.wikipedia.org/wiki/Actor_model">Actor Model</a>.</p>
</div>
<div class="paragraph">
<p>An application would typically be composed of many verticle instances running in the same Vert.x instance at the same
time. The different verticle instances communicate with each other by sending messages on the <a href="#event_bus">event bus</a>.</p>
</div>
<div class="sect2">
<h3 id="_writing_verticles">Writing Verticles</h3>
<div class="paragraph">
<p>Writing a Verticle with Kotlin is achieved the same way you write a Java Verticle by
extending the <code><a href="../../apidocs/io/vertx/core/AbstractVerticle.html">AbstractVerticle</a></code>.</p>
</div>
<div class="paragraph">
<p>Here&#8217;s an example verticle:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">import io.vertx.core.AbstractVerticle

class MyVerticle : AbstractVerticle() {

 // Called when verticle is deployed
 override fun start() {
 }

 // Optional - called when verticle is undeployed
 override fun stop() {
 }
}</code></pre>
</div>
</div>
<div class="paragraph">
<p>Please refer to the Java documentation.</p>
</div>
</div>
<div class="sect2">
<h3 id="_verticle_types">Verticle Types</h3>
<div class="paragraph">
<p>There are two different types of verticles:</p>
</div>
<div class="dlist">
<dl>
<dt class="hdlist1">Standard Verticles</dt>
<dd>
<p>These are the most common and useful type - they are always executed using an event loop thread.
We&#8217;ll discuss this more in the next section.</p>
</dd>
<dt class="hdlist1">Worker Verticles</dt>
<dd>
<p>These run using a thread from the worker pool. An instance is never executed concurrently by more
than one thread.</p>
</dd>
</dl>
</div>
</div>
<div class="sect2">
<h3 id="_standard_verticles">Standard verticles</h3>
<div class="paragraph">
<p>Standard verticles are assigned an event loop thread when they are created and the start method is called with that
event loop. When you call any other methods that takes a handler on a core API from an event loop then Vert.x
will guarantee that those handlers, when called, will be executed on the same event loop.</p>
</div>
<div class="paragraph">
<p>This means we can guarantee that all the code in your verticle instance is always executed on the same event loop (as
long as you don&#8217;t create your own threads and call it!).</p>
</div>
<div class="paragraph">
<p>This means you can write all the code in your application as single threaded and let Vert.x worry about the threading
and scaling. No more worrying about synchronized and volatile any more, and you also avoid many other cases of race conditions
and deadlock so prevalent when doing hand-rolled 'traditional' multi-threaded application development.</p>
</div>
</div>
<div class="sect2">
<h3 id="worker_verticles">Worker verticles</h3>
<div class="paragraph">
<p>A worker verticle is just like a standard verticle but it&#8217;s executed using a thread from the Vert.x worker thread pool,
rather than using an event loop.</p>
</div>
<div class="paragraph">
<p>Worker verticles are designed for calling blocking code, as they won&#8217;t block any event loops.</p>
</div>
<div class="paragraph">
<p>If you don&#8217;t want to use a worker verticle to run blocking code, you can also run <a href="#blocking_code">inline blocking code</a>
directly while on an event loop.</p>
</div>
<div class="paragraph">
<p>If you want to deploy a verticle as a worker verticle you do that with <code><a href="../../apidocs/io/vertx/core/DeploymentOptions.html#setWorker-boolean-">setWorker</a></code>.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var options = DeploymentOptions(
  worker = true)
vertx.deployVerticle(&quot;com.mycompany.MyOrderProcessorVerticle&quot;, options)</code></pre>
</div>
</div>
<div class="paragraph">
<p>Worker verticle instances are never executed concurrently by Vert.x by more than one thread, but can executed by
different threads at different times.</p>
</div>
</div>
<div class="sect2">
<h3 id="_deploying_verticles_programmatically">Deploying verticles programmatically</h3>
<div class="paragraph">
<p>You can deploy a verticle using one of the <code><a href="../../apidocs/io/vertx/core/Vertx.html#deployVerticle-io.vertx.core.Verticle-">deployVerticle</a></code> method, specifying a verticle
name or you can pass in a verticle instance you have already created yourself.</p>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<div class="title">Note</div>
</td>
<td class="content">
Deploying Verticle <strong>instances</strong> is Java only.
</td>
</tr>
</table>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="java">var myVerticle = examples.CoreExamples.MyVerticle()
vertx.deployVerticle(myVerticle)</code></pre>
</div>
</div>
<div class="paragraph">
<p>You can also deploy verticles by specifying the verticle <strong>name</strong>.</p>
</div>
<div class="paragraph">
<p>The verticle name is used to look up the specific <code><a href="../../apidocs/io/vertx/core/spi/VerticleFactory.html">VerticleFactory</a></code> that will be used to
instantiate the actual verticle instance(s).</p>
</div>
<div class="paragraph">
<p>Different verticle factories are available for instantiating verticles in different languages and for various other
reasons such as loading services and getting verticles from Maven at run-time.</p>
</div>
<div class="paragraph">
<p>This allows you to deploy verticles written in any language from any other language that Vert.x supports.</p>
</div>
<div class="paragraph">
<p>Here&#8217;s an example of deploying some different types of verticles:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">// Deploy a Java verticle - the name is the fully qualified class name of the verticle class
vertx.deployVerticle(&quot;com.mycompany.MyOrderProcessorVerticle&quot;)

// Deploy a JavaScript verticle
vertx.deployVerticle(&quot;verticles/myverticle.js&quot;)

// Deploy a Ruby verticle verticle
vertx.deployVerticle(&quot;verticles/my_verticle.rb&quot;)</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_rules_for_mapping_a_verticle_name_to_a_verticle_factory">Rules for mapping a verticle name to a verticle factory</h3>
<div class="paragraph">
<p>When deploying verticle(s) using a name, the name is used to select the actual verticle factory that will instantiate
the verticle(s).</p>
</div>
<div class="paragraph">
<p>Verticle names can have a prefix - which is a string followed by a colon, which if present will be used to look-up the factory, e.g.</p>
</div>
<div class="paragraph">
<p>js:foo.js // Use the JavaScript verticle factory
groovy:com.mycompany.SomeGroovyCompiledVerticle // Use the Groovy verticle factory
service:com.mycompany:myorderservice // Uses the service verticle factory</p>
</div>
<div class="paragraph">
<p>If no prefix is present, Vert.x will look for a suffix and use that to lookup the factory, e.g.</p>
</div>
<div class="paragraph">
<p>foo.js // Will also use the JavaScript verticle factory
SomeScript.groovy // Will use the Groovy verticle factory</p>
</div>
<div class="paragraph">
<p>If no prefix or suffix is present, Vert.x will assume it&#8217;s a Java fully qualified class name (FQCN) and try
and instantiate that.</p>
</div>
</div>
<div class="sect2">
<h3 id="_how_are_verticle_factories_located">How are Verticle Factories located?</h3>
<div class="paragraph">
<p>Most Verticle factories are loaded from the classpath and registered at Vert.x startup.</p>
</div>
<div class="paragraph">
<p>You can also programmatically register and unregister verticle factories using <code><a href="../../apidocs/io/vertx/core/Vertx.html#registerVerticleFactory-io.vertx.core.spi.VerticleFactory-">registerVerticleFactory</a></code>
and <code><a href="../../apidocs/io/vertx/core/Vertx.html#unregisterVerticleFactory-io.vertx.core.spi.VerticleFactory-">unregisterVerticleFactory</a></code> if you wish.</p>
</div>
</div>
<div class="sect2">
<h3 id="_waiting_for_deployment_to_complete">Waiting for deployment to complete</h3>
<div class="paragraph">
<p>Verticle deployment is asynchronous and may complete some time after the call to deploy has returned.</p>
</div>
<div class="paragraph">
<p>If you want to be notified when deployment is complete you can deploy specifying a completion handler:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">vertx.deployVerticle(&quot;com.mycompany.MyOrderProcessorVerticle&quot;, { res -&gt;
  if (res.succeeded()) {
    println(&quot;Deployment id is: ${res.result()}&quot;)
  } else {
    println(&quot;Deployment failed!&quot;)
  }
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>The completion handler will be passed a result containing the deployment ID string, if deployment succeeded.</p>
</div>
<div class="paragraph">
<p>This deployment ID can be used later if you want to undeploy the deployment.</p>
</div>
</div>
<div class="sect2">
<h3 id="_undeploying_verticle_deployments">Undeploying verticle deployments</h3>
<div class="paragraph">
<p>Deployments can be undeployed with <code><a href="../../apidocs/io/vertx/core/Vertx.html#undeploy-java.lang.String-">undeploy</a></code>.</p>
</div>
<div class="paragraph">
<p>Un-deployment is itself asynchronous so if you want to be notified when un-deployment is complete you can deploy specifying a completion handler:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">vertx.undeploy(deploymentID, { res -&gt;
  if (res.succeeded()) {
    println(&quot;Undeployed ok&quot;)
  } else {
    println(&quot;Undeploy failed!&quot;)
  }
})</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_specifying_number_of_verticle_instances">Specifying number of verticle instances</h3>
<div class="paragraph">
<p>When deploying a verticle using a verticle name, you can specify the number of verticle instances that you
want to deploy:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var options = DeploymentOptions(
  instances = 16)
vertx.deployVerticle(&quot;com.mycompany.MyOrderProcessorVerticle&quot;, options)</code></pre>
</div>
</div>
<div class="paragraph">
<p>This is useful for scaling easily across multiple cores. For example you might have a web-server verticle to deploy
and multiple cores on your machine, so you want to deploy multiple instances to utilise all the cores.</p>
</div>
</div>
<div class="sect2">
<h3 id="_verticle_isolation_groups">Verticle Isolation Groups</h3>
<div class="paragraph">
<p>By default, Vert.x has a <em>flat classpath</em>. I.e, when Vert.x deploys verticles it does so with the current classloader -
it doesn&#8217;t create a new one. In the majority of cases this is the simplest, clearest, and sanest thing to do.</p>
</div>
<div class="paragraph">
<p>However, in some cases you may want to deploy a verticle so the classes of that verticle are isolated from others in
your application.</p>
</div>
<div class="paragraph">
<p>This might be the case, for example, if you want to deploy two different versions of a verticle with the same class name
in the same Vert.x instance, or if you have two different verticles which use different versions of the same jar library.</p>
</div>
<div class="paragraph">
<p>When using an isolation group you provide a list of the class names that you want isolated using
<code><a href="../../apidocs/io/vertx/core/DeploymentOptions.html#setIsolatedClasses-java.util.List-">setIsolatedClasses</a></code>-  an entry can be a fully qualified
classname such as <code>com.mycompany.myproject.engine.MyClass</code> or it can be a wildcard which will match any classes in a package and any
sub-packages, e.g. <code>com.mycompany.myproject.*</code> would match any classes in the package <code>com.mycompany.myproject</code> or
any sub-packages.</p>
</div>
<div class="paragraph">
<p>Please note that <em>only</em> the classes that match will be isolated - any other classes will be loaded by the current
class loader.</p>
</div>
<div class="paragraph">
<p>Extra classpath entries can also be provided with <code><a href="../../apidocs/io/vertx/core/DeploymentOptions.html#setExtraClasspath-java.util.List-">setExtraClasspath</a></code> so if
you want to load classes or resources that aren&#8217;t already present on the main classpath you can add this.</p>
</div>
<div class="admonitionblock warning">
<table>
<tr>
<td class="icon">
<div class="title">Warning</div>
</td>
<td class="content">
Use this feature with caution. Class-loaders can be a can of worms, and can make debugging difficult, amongst
other things.
</td>
</tr>
</table>
</div>
<div class="paragraph">
<p>Here&#8217;s an example of using an isolation group to isolate a verticle deployment.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var options = DeploymentOptions(
  isolationGroup = &quot;mygroup&quot;)
options.isolatedClasses = listOf(&quot;com.mycompany.myverticle.*&quot;, &quot;com.mycompany.somepkg.SomeClass&quot;, &quot;org.somelibrary.*&quot;)
vertx.deployVerticle(&quot;com.mycompany.myverticle.VerticleClass&quot;, options)</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_high_availability">High Availability</h3>
<div class="paragraph">
<p>Verticles can be deployed with High Availability (HA) enabled. In that context, when a verticle is deployed on
a vert.x instance that dies abruptly, the verticle is redeployed on another vert.x instance from the cluster.</p>
</div>
<div class="paragraph">
<p>To run an verticle with the high availability enabled, just append the <code>-ha</code> switch:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code>vertx run my-verticle.js -ha</code></pre>
</div>
</div>
<div class="paragraph">
<p>When enabling high availability, no need to add <code>-cluster</code>.</p>
</div>
<div class="paragraph">
<p>More details about the high availability feature and configuration in the <a href="#_high_availability_and_fail_over">High Availability and Fail-Over</a>
 section.</p>
</div>
</div>
<div class="sect2">
<h3 id="_running_verticles_from_the_command_line">Running Verticles from the command line</h3>
<div class="paragraph">
<p>You can use Vert.x directly in your Maven or Gradle projects in the normal way by adding a dependency to the Vert.x
core library and hacking from there.</p>
</div>
<div class="paragraph">
<p>However you can also run Vert.x verticles directly from the command line if you wish.</p>
</div>
<div class="paragraph">
<p>To do this you need to download and install a Vert.x distribution, and add the <code>bin</code> directory of the installation
to your <code>PATH</code> environment variable. Also make sure you have a Java 8 JDK on your <code>PATH</code>.</p>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<div class="title">Note</div>
</td>
<td class="content">
The JDK is required to support on the fly compilation of Java code.
</td>
</tr>
</table>
</div>
<div class="paragraph">
<p>You can now run verticles by using the <code>vertx run</code> command. Here are some examples:</p>
</div>
<div class="listingblock">
<div class="content">
<pre># Run a JavaScript verticle
vertx run my_verticle.js

# Run a Ruby verticle
vertx run a_n_other_verticle.rb

# Run a Groovy script verticle, clustered
vertx run FooVerticle.groovy -cluster</pre>
</div>
</div>
<div class="paragraph">
<p>You can even run Java source verticles without compiling them first!</p>
</div>
<div class="listingblock">
<div class="content">
<pre>vertx run SomeJavaSourceFile.java</pre>
</div>
</div>
<div class="paragraph">
<p>Vert.x will compile the Java source file on the fly before running it. This is really useful for quickly
prototyping verticles and great for demos. No need to set-up a Maven or Gradle build first to get going!</p>
</div>
<div class="paragraph">
<p>For full information on the various options available when executing <code>vertx</code> on the command line,
type <code>vertx</code> at the command line.</p>
</div>
</div>
<div class="sect2">
<h3 id="_causing_vert_x_to_exit">Causing Vert.x to exit</h3>
<div class="paragraph">
<p>Threads maintained by Vert.x instances are not daemon threads so they will prevent the JVM from exiting.</p>
</div>
<div class="paragraph">
<p>If you are embedding Vert.x and you have finished with it, you can call <code><a href="../../apidocs/io/vertx/core/Vertx.html#close--">close</a></code> to close it
down.</p>
</div>
<div class="paragraph">
<p>This will shut-down all internal thread pools and close other resources, and will allow the JVM to exit.</p>
</div>
</div>
<div class="sect2">
<h3 id="_the_context_object">The Context object</h3>
<div class="paragraph">
<p>When Vert.x provides an event to a handler or calls the start or stop methods of a
<code><a href="../../apidocs/io/vertx/core/Verticle.html">Verticle</a></code>, the execution is associated with a <code>Context</code>. Usually a context is an
<strong>event-loop context</strong> and is tied to a specific event loop thread. So executions for that context always occur
on that exact same event loop thread. In the case of worker verticles and running inline blocking code a
worker context will be associated with the execution which will use a thread from the worker thread pool.</p>
</div>
<div class="paragraph">
<p>To retrieve the context, use the <code><a href="../../apidocs/io/vertx/core/Vertx.html#getOrCreateContext--">getOrCreateContext</a></code> method:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var context = vertx.getOrCreateContext()</code></pre>
</div>
</div>
<div class="paragraph">
<p>If the current thread has a context associated with it, it reuses the context object. If not a new instance of
context is created. You can test the <em>type</em> of context you have retrieved:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var context = vertx.getOrCreateContext()
if (context.isEventLoopContext()) {
  println(&quot;Context attached to Event Loop&quot;)
} else if (context.isWorkerContext()) {
  println(&quot;Context attached to Worker Thread&quot;)
} else if (context.isMultiThreadedWorkerContext()) {
  println(&quot;Context attached to Worker Thread - multi threaded worker&quot;)
} else if (!Context.isOnVertxThread()) {
  println(&quot;Context not attached to a thread managed by vert.x&quot;)
}</code></pre>
</div>
</div>
<div class="paragraph">
<p>When you have retrieved the context object, you can run code in this context asynchronously. In other words,
you submit a task that will be eventually run in the same context, but later:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">vertx.getOrCreateContext().runOnContext({ v -&gt;
  println(&quot;This will be executed asynchronously in the same context&quot;)
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>When several handlers run in the same context, they may want to share data. The context object offers methods to
store and retrieve data shared in the context. For instance, it lets you pass data to some action run with
<code><a href="../../apidocs/io/vertx/core/Context.html#runOnContext-io.vertx.core.Handler-">runOnContext</a></code>:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var context = vertx.getOrCreateContext()
context.put(&quot;data&quot;, &quot;hello&quot;)
context.runOnContext({ v -&gt;
  var hello = context.get&lt;Any&gt;(&quot;data&quot;)
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>The context object also let you access verticle configuration using the <code><a href="../../apidocs/io/vertx/core/Context.html#config--">config</a></code>
method. Check the <a href="#Passing configuration to a verticle">[Passing configuration to a verticle]</a> section for more details about this configuration.</p>
</div>
</div>
<div class="sect2">
<h3 id="_executing_periodic_and_delayed_actions">Executing periodic and delayed actions</h3>
<div class="paragraph">
<p>It&#8217;s very common in Vert.x to want to perform an action after a delay, or periodically.</p>
</div>
<div class="paragraph">
<p>In standard verticles you can&#8217;t just make the thread sleep to introduce a delay, as that will block the event loop thread.</p>
</div>
<div class="paragraph">
<p>Instead you use Vert.x timers. Timers can be <strong>one-shot</strong> or <strong>periodic</strong>. We&#8217;ll discuss both</p>
</div>
<div class="sect3">
<h4 id="_one_shot_timers">One-shot Timers</h4>
<div class="paragraph">
<p>A one shot timer calls an event handler after a certain delay, expressed in milliseconds.</p>
</div>
<div class="paragraph">
<p>To set a timer to fire once you use <code><a href="../../apidocs/io/vertx/core/Vertx.html#setTimer-long-io.vertx.core.Handler-">setTimer</a></code> method passing in the delay and a handler</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var timerID = vertx.setTimer(1000, { id -&gt;
  println(&quot;And one second later this is printed&quot;)
})

println(&quot;First this is printed&quot;)</code></pre>
</div>
</div>
<div class="paragraph">
<p>The return value is a unique timer id which can later be used to cancel the timer. The handler is also passed the timer id.</p>
</div>
</div>
<div class="sect3">
<h4 id="_periodic_timers">Periodic Timers</h4>
<div class="paragraph">
<p>You can also set a timer to fire periodically by using <code><a href="../../apidocs/io/vertx/core/Vertx.html#setPeriodic-long-io.vertx.core.Handler-">setPeriodic</a></code>.</p>
</div>
<div class="paragraph">
<p>There will be an initial delay equal to the period.</p>
</div>
<div class="paragraph">
<p>The return value of <code>setPeriodic</code> is a unique timer id (long). This can be later used if the timer needs to be cancelled.</p>
</div>
<div class="paragraph">
<p>The argument passed into the timer event handler is also the unique timer id:</p>
</div>
<div class="paragraph">
<p>Keep in mind that the timer will fire on a periodic basis. If your periodic treatment takes a long amount of time to proceed,
your timer events could run continuously or even worse : stack up.</p>
</div>
<div class="paragraph">
<p>In this case, you should consider using <code><a href="../../apidocs/io/vertx/core/Vertx.html#setTimer-long-io.vertx.core.Handler-">setTimer</a></code> instead. Once your treatment has
finished, you can set the next timer.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var timerID = vertx.setPeriodic(1000, { id -&gt;
  println(&quot;And every second this is printed&quot;)
})

println(&quot;First this is printed&quot;)</code></pre>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_cancelling_timers">Cancelling timers</h4>
<div class="paragraph">
<p>To cancel a periodic timer, call <code><a href="../../apidocs/io/vertx/core/Vertx.html#cancelTimer-long-">cancelTimer</a></code> specifying the timer id. For example:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">vertx.cancelTimer(timerID)</code></pre>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_automatic_clean_up_in_verticles">Automatic clean-up in verticles</h4>
<div class="paragraph">
<p>If you&#8217;re creating timers from inside verticles, those timers will be automatically closed
when the verticle is undeployed.</p>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_verticle_worker_pool">Verticle worker pool</h3>
<div class="paragraph">
<p>Verticles use the Vert.x worker pool for executing blocking actions, i.e <code><a href="../../apidocs/io/vertx/core/Context.html#executeBlocking-io.vertx.core.Handler-boolean-io.vertx.core.Handler-">executeBlocking</a></code> or
worker verticle.</p>
</div>
<div class="paragraph">
<p>A different worker pool can be specified in deployment options:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">vertx.deployVerticle(&quot;the-verticle&quot;, DeploymentOptions(
  workerPoolName = &quot;the-specific-pool&quot;))</code></pre>
</div>
</div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="event_bus">The Event Bus</h2>
<div class="sectionbody">
<div class="paragraph">
<p>The <code><a href="../../apidocs/io/vertx/core/eventbus/EventBus.html">event bus</a></code> is the <strong>nervous system</strong> of Vert.x.</p>
</div>
<div class="paragraph">
<p>There is a single event bus instance for every Vert.x instance and it is obtained using the method <code><a href="../../apidocs/io/vertx/core/Vertx.html#eventBus--">eventBus</a></code>.</p>
</div>
<div class="paragraph">
<p>The event bus allows different parts of your application to communicate with each other, irrespective of what language they are written in,
and whether they&#8217;re in the same Vert.x instance, or in a different Vert.x instance.</p>
</div>
<div class="paragraph">
<p>It can even be bridged to allow client-side JavaScript running in a browser to communicate on the same event bus.</p>
</div>
<div class="paragraph">
<p>The event bus forms a distributed peer-to-peer messaging system spanning multiple server nodes and multiple browsers.</p>
</div>
<div class="paragraph">
<p>The event bus supports publish/subscribe, point-to-point, and request-response messaging.</p>
</div>
<div class="paragraph">
<p>The event bus API is very simple. It basically involves registering handlers, unregistering handlers and
sending and publishing messages.</p>
</div>
<div class="paragraph">
<p>First some theory:</p>
</div>
<div class="sect2">
<h3 id="_the_theory">The Theory</h3>
<div class="sect3">
<h4 id="_addressing">Addressing</h4>
<div class="paragraph">
<p>Messages are sent on the event bus to an <strong>address</strong>.</p>
</div>
<div class="paragraph">
<p>Vert.x doesn&#8217;t bother with any fancy addressing schemes. In Vert.x an address is simply a string.
Any string is valid. However it is wise to use some kind of scheme, <em>e.g.</em> using periods to demarcate a namespace.</p>
</div>
<div class="paragraph">
<p>Some examples of valid addresses are europe.news.feed1, acme.games.pacman, sausages, and X.</p>
</div>
</div>
<div class="sect3">
<h4 id="_handlers">Handlers</h4>
<div class="paragraph">
<p>Messages are received by handlers. You register a handler at an address.</p>
</div>
<div class="paragraph">
<p>Many different handlers can be registered at the same address.</p>
</div>
<div class="paragraph">
<p>A single handler can be registered at many different addresses.</p>
</div>
</div>
<div class="sect3">
<h4 id="_publish_subscribe_messaging">Publish / subscribe messaging</h4>
<div class="paragraph">
<p>The event bus supports <strong>publishing</strong> messages.</p>
</div>
<div class="paragraph">
<p>Messages are published to an address. Publishing means delivering the message
to all handlers that are registered at that address.</p>
</div>
<div class="paragraph">
<p>This is the familiar <strong>publish/subscribe</strong> messaging pattern.</p>
</div>
</div>
<div class="sect3">
<h4 id="_point_to_point_and_request_response_messaging">Point-to-point and Request-Response messaging</h4>
<div class="paragraph">
<p>The event bus also supports <strong>point-to-point</strong> messaging.</p>
</div>
<div class="paragraph">
<p>Messages are sent to an address. Vert.x will then route them to just one of the handlers registered at that address.</p>
</div>
<div class="paragraph">
<p>If there is more than one handler registered at the address, one will be chosen using a non-strict round-robin algorithm.</p>
</div>
<div class="paragraph">
<p>With point-to-point messaging, an optional reply handler can be specified when sending the message.</p>
</div>
<div class="paragraph">
<p>When a message is received by a recipient, and has been handled, the recipient can optionally decide to reply to
the message. If they do so, the reply handler will be called.</p>
</div>
<div class="paragraph">
<p>When the reply is received back by the sender, it too can be replied to. This can be repeated <em>ad infinitum</em>,
and allows a dialog to be set up between two different verticles.</p>
</div>
<div class="paragraph">
<p>This is a common messaging pattern called the <strong>request-response</strong> pattern.</p>
</div>
</div>
<div class="sect3">
<h4 id="_best_effort_delivery">Best-effort delivery</h4>
<div class="paragraph">
<p>Vert.x does its best to deliver messages and won&#8217;t consciously throw them away. This is called <strong>best-effort</strong> delivery.</p>
</div>
<div class="paragraph">
<p>However, in case of failure of all or parts of the event bus, there is a possibility messages might be lost.</p>
</div>
<div class="paragraph">
<p>If your application cares about lost messages, you should code your handlers to be idempotent, and your senders
to retry after recovery.</p>
</div>
</div>
<div class="sect3">
<h4 id="_types_of_messages">Types of messages</h4>
<div class="paragraph">
<p>Out of the box Vert.x allows any primitive/simple type, String, or <code><a href="../../apidocs/io/vertx/core/buffer/Buffer.html">buffers</a></code> to
be sent as messages.</p>
</div>
<div class="paragraph">
<p>However it&#8217;s a convention and common practice in Vert.x to send messages as <a href="https://json.org/">JSON</a></p>
</div>
<div class="paragraph">
<p>JSON is very easy to create, read and parse in all the languages that Vert.x supports so it has become a kind of
<em>lingua franca</em> for Vert.x.</p>
</div>
<div class="paragraph">
<p>However you are not forced to use JSON if you don&#8217;t want to.</p>
</div>
<div class="paragraph">
<p>The event bus is very flexible and also supports sending arbitrary objects over the event bus.
You can do this by defining a <code><a href="../../apidocs/io/vertx/core/eventbus/MessageCodec.html">codec</a></code> for the objects you want to send.</p>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_the_event_bus_api">The Event Bus API</h3>
<div class="paragraph">
<p>Let&#8217;s jump into the API.</p>
</div>
<div class="sect3">
<h4 id="_getting_the_event_bus">Getting the event bus</h4>
<div class="paragraph">
<p>You get a reference to the event bus as follows:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var eb = vertx.eventBus()</code></pre>
</div>
</div>
<div class="paragraph">
<p>There is a single instance of the event bus per Vert.x instance.</p>
</div>
</div>
<div class="sect3">
<h4 id="_registering_handlers">Registering Handlers</h4>
<div class="paragraph">
<p>This simplest way to register a handler is using <code><a href="../../apidocs/io/vertx/core/eventbus/EventBus.html#consumer-java.lang.String-io.vertx.core.Handler-">consumer</a></code>.
Here&#8217;s an example:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var eb = vertx.eventBus()

eb.consumer&lt;Any&gt;(&quot;news.uk.sport&quot;, { message -&gt;
  println(&quot;I have received a message: ${message.body()}&quot;)
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>When a message arrives for your handler, your handler will be called, passing in the <code><a href="../../apidocs/io/vertx/core/eventbus/Message.html">message</a></code>.</p>
</div>
<div class="paragraph">
<p>The object returned from call to consumer() is an instance of <code><a href="../../apidocs/io/vertx/core/eventbus/MessageConsumer.html">MessageConsumer</a></code>.</p>
</div>
<div class="paragraph">
<p>This object can subsequently be used to unregister the handler, or use the handler as a stream.</p>
</div>
<div class="paragraph">
<p>Alternatively you can use <code><a href="../../apidocs/io/vertx/core/eventbus/EventBus.html#consumer-java.lang.String-io.vertx.core.Handler-">consumer</a></code> to
return a MessageConsumer with no handler set, and then set the handler on that. For example:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var eb = vertx.eventBus()

var consumer = eb.consumer&lt;Any&gt;(&quot;news.uk.sport&quot;)
consumer.handler({ message -&gt;
  println(&quot;I have received a message: ${message.body()}&quot;)
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>When registering a handler on a clustered event bus, it can take some time for the registration to reach all
nodes of the cluster.</p>
</div>
<div class="paragraph">
<p>If you want to be notified when this has completed, you can register a <code><a href="../../apidocs/io/vertx/core/eventbus/MessageConsumer.html#completionHandler-io.vertx.core.Handler-">completion handler</a></code>
on the MessageConsumer object.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">consumer.completionHandler({ res -&gt;
  if (res.succeeded()) {
    println(&quot;The handler registration has reached all nodes&quot;)
  } else {
    println(&quot;Registration failed!&quot;)
  }
})</code></pre>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_un_registering_handlers">Un-registering Handlers</h4>
<div class="paragraph">
<p>To unregister a handler, call <code><a href="../../apidocs/io/vertx/core/eventbus/MessageConsumer.html#unregister--">unregister</a></code>.</p>
</div>
<div class="paragraph">
<p>If you are on a clustered event bus, un-registering can take some time to propagate across the nodes.  If you want to
be notified when this is complete, use <code><a href="../../apidocs/io/vertx/core/eventbus/MessageConsumer.html#unregister-io.vertx.core.Handler-">unregister</a></code>.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">consumer.unregister({ res -&gt;
  if (res.succeeded()) {
    println(&quot;The handler un-registration has reached all nodes&quot;)
  } else {
    println(&quot;Un-registration failed!&quot;)
  }
})</code></pre>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_publishing_messages">Publishing messages</h4>
<div class="paragraph">
<p>Publishing a message is simple. Just use <code><a href="../../apidocs/io/vertx/core/eventbus/EventBus.html#publish-java.lang.String-java.lang.Object-">publish</a></code> specifying the
address to publish it to.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">eventBus.publish(&quot;news.uk.sport&quot;, &quot;Yay! Someone kicked a ball&quot;)</code></pre>
</div>
</div>
<div class="paragraph">
<p>That message will then be delivered to all handlers registered against the address news.uk.sport.</p>
</div>
</div>
<div class="sect3">
<h4 id="_sending_messages">Sending messages</h4>
<div class="paragraph">
<p>Sending a message will result in only one handler registered at the address receiving the message.
This is the point-to-point messaging pattern. The handler is chosen in a non-strict round-robin fashion.</p>
</div>
<div class="paragraph">
<p>You can send a message with <code><a href="../../apidocs/io/vertx/core/eventbus/EventBus.html#send-java.lang.String-java.lang.Object-">send</a></code>.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">eventBus.send(&quot;news.uk.sport&quot;, &quot;Yay! Someone kicked a ball&quot;)</code></pre>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_message_ordering">Message ordering</h4>
<div class="paragraph">
<p>Vert.x will deliver messages to any particular handler in the same order they were sent from any particular sender.</p>
</div>
</div>
<div class="sect3">
<h4 id="_the_message_object">The Message object</h4>
<div class="paragraph">
<p>The object you receive in a message handler is a <code><a href="../../apidocs/io/vertx/core/eventbus/Message.html">Message</a></code>.</p>
</div>
<div class="paragraph">
<p>The <code><a href="../../apidocs/io/vertx/core/eventbus/Message.html#body--">body</a></code> of the message corresponds to the object that was sent or published.</p>
</div>
<div class="paragraph">
<p>The headers of the message are available with <code><a href="../../apidocs/io/vertx/core/eventbus/Message.html#headers--">headers</a></code>.</p>
</div>
</div>
<div class="sect3">
<h4 id="_acknowledging_messages_sending_replies">Acknowledging messages / sending replies</h4>
<div class="paragraph">
<p>When using <code><a href="../../apidocs/io/vertx/core/eventbus/EventBus.html#send-java.lang.String-java.lang.Object-">send</a></code> the event bus attempts to deliver the message to a
<code><a href="../../apidocs/io/vertx/core/eventbus/MessageConsumer.html">MessageConsumer</a></code> registered with the event bus.</p>
</div>
<div class="paragraph">
<p>In some cases it&#8217;s useful for the sender to know when the consumer has received the message and "processed" it using
<strong>request-response</strong> pattern.</p>
</div>
<div class="paragraph">
<p>To acknowledge that the message has been processed, the consumer can reply to the message by calling
<code><a href="../../apidocs/io/vertx/core/eventbus/Message.html#reply-java.lang.Object-">reply</a></code>.</p>
</div>
<div class="paragraph">
<p>When this happens it causes a reply to be sent back to the sender and the reply handler is invoked with the reply.</p>
</div>
<div class="paragraph">
<p>An example will make this clear:</p>
</div>
<div class="paragraph">
<p>The receiver:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var consumer = eventBus.consumer&lt;Any&gt;(&quot;news.uk.sport&quot;)
consumer.handler({ message -&gt;
  println(&quot;I have received a message: ${message.body()}&quot;)
  message.reply(&quot;how interesting!&quot;)
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>The sender:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">eventBus.request&lt;Any&gt;(&quot;news.uk.sport&quot;, &quot;Yay! Someone kicked a ball across a patch of grass&quot;, { ar -&gt;
  if (ar.succeeded()) {
    println(&quot;Received reply: ${ar.result().body()}&quot;)
  }
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>The reply can contain a message body which can contain useful information.</p>
</div>
<div class="paragraph">
<p>What the "processing" actually means is application-defined and depends entirely on what the message consumer does
and is not something that the Vert.x event bus itself knows or cares about.</p>
</div>
<div class="paragraph">
<p>Some examples:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>A simple message consumer which implements a service which returns the time of the day would acknowledge with a message
containing the time of day in the reply body</p>
</li>
<li>
<p>A message consumer which implements a persistent queue, might acknowledge with <code>true</code> if the message was successfully
persisted in storage, or <code>false</code> if not.</p>
</li>
<li>
<p>A message consumer which processes an order might acknowledge with <code>true</code> when the order has been successfully processed
so it can be deleted from the database</p>
</li>
</ul>
</div>
</div>
<div class="sect3">
<h4 id="_sending_with_timeouts">Sending with timeouts</h4>
<div class="paragraph">
<p>When sending a message with a reply handler, you can specify a timeout in the <code><a href="../../apidocs/io/vertx/core/eventbus/DeliveryOptions.html">DeliveryOptions</a></code>.</p>
</div>
<div class="paragraph">
<p>If a reply is not received within that time, the reply handler will be called with a failure.</p>
</div>
<div class="paragraph">
<p>The default timeout is 30 seconds.</p>
</div>
</div>
<div class="sect3">
<h4 id="_send_failures">Send Failures</h4>
<div class="paragraph">
<p>Message sends can fail for other reasons, including:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>There are no handlers available to send the message to</p>
</li>
<li>
<p>The recipient has explicitly failed the message using <code><a href="../../apidocs/io/vertx/core/eventbus/Message.html#fail-int-java.lang.String-">fail</a></code></p>
</li>
</ul>
</div>
<div class="paragraph">
<p>In all cases, the reply handler will be called with the specific failure.</p>
</div>
</div>
<div class="sect3">
<h4 id="_clustered_event_bus">Clustered Event Bus</h4>
<div class="paragraph">
<p>The event bus doesn&#8217;t just exist in a single Vert.x instance. By clustering different Vert.x instances together on
your network they can form a single, distributed event bus.</p>
</div>
</div>
<div class="sect3">
<h4 id="_clustering_programmatically">Clustering programmatically</h4>
<div class="paragraph">
<p>If you&#8217;re creating your Vert.x instance programmatically you get a clustered event bus by configuring the Vert.x
instance as clustered;</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var options = VertxOptions()
Vertx.clusteredVertx(options, { res -&gt;
  if (res.succeeded()) {
    var vertx = res.result()
    var eventBus = vertx.eventBus()
    println(&quot;We now have a clustered event bus: ${eventBus}&quot;)
  } else {
    println(&quot;Failed: ${res.cause()}&quot;)
  }
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>You should also make sure you have a <code><a href="../../apidocs/io/vertx/core/spi/cluster/ClusterManager.html">ClusterManager</a></code> implementation on your classpath, for example the Hazelcast cluster manager.</p>
</div>
</div>
<div class="sect3">
<h4 id="_clustering_on_the_command_line">Clustering on the command line</h4>
<div class="paragraph">
<p>You can run Vert.x clustered on the command line with</p>
</div>
<div class="listingblock">
<div class="content">
<pre>vertx run my-verticle.js -cluster</pre>
</div>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_automatic_clean_up_in_verticles_2">Automatic clean-up in verticles</h3>
<div class="paragraph">
<p>If you&#8217;re registering event bus handlers from inside verticles, those handlers will be automatically unregistered
when the verticle is undeployed.</p>
</div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_configuring_the_event_bus">Configuring the event bus</h2>
<div class="sectionbody">
<div class="paragraph">
<p>Unresolved directive in eventbus.adoc - include::override/configuring-eventbus.adoc[]</p>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_json">JSON</h2>
<div class="sectionbody">
<div class="paragraph">
<p>Unlike some other languages, Java does not have first class support for <a href="https://json.org/">JSON</a> so we provide
two classes to make handling JSON in your Vert.x applications a bit easier.</p>
</div>
<div class="paragraph">
<p>Use the <code><a href="../../apidocs/io/vertx/core/json/JsonObject.html">JsonObject</a></code> class to represent JSON objects and the <code><a href="../../apidocs/io/vertx/core/json/JsonArray.html">JsonArray</a></code>
class to represent JSON arrays, you can refer to the Java documentation for more details.</p>
</div>
<div class="sect2">
<h3 id="_builders">Builders</h3>
<div class="paragraph">
<p>Builders are provided to provide a more fluent JSON construction:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">// The json builder declares a JSON structure
val result = json {

 // in this structure the obj function can be used

 // takes a vararg of Kotlin pairs
 obj(
   &quot;key_1&quot; to 1,
   &quot;key_2&quot; to 2,
   &quot;key_3&quot; to 3
 )

 // or an iterable of Kotlin pairs
 obj((1..3).map { &quot;key_$it&quot; to it })

 // or a Map&lt;String, Any?&gt;
 obj(someMap)

 // apply function on object receiver
 obj {
   for (i in 1..3) {
     put(&quot;key_$i&quot;, i)
   }
 }
}</code></pre>
</div>
</div>
<div class="paragraph">
<p>You can also build JSON arrays:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">// The json builder declares a JSON structure
val result = json {

 // in this structure the array function can be used

 // takes a vararg of values
 array(&quot;1&quot;, &quot;2&quot;, &quot;3&quot;)

 // or an iterable of values
 array((1..3).map { &quot;$it&quot; })

 // apply function on array receiver
 array {
   for (i in 1..3) {
     add(&quot;$i&quot;)
   }
 }
}</code></pre>
</div>
</div>
<div class="paragraph">
<p>Of course it is possible to mix objects and arrays</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">// The json builder declares a JSON structure
val result = json {

 &quot;firstName&quot; to &quot;Dale&quot;,
 &quot;lastName&quot; to &quot;Cooper&quot;,
 &quot;age&quot; to 64,
 &quot;names&quot; to array(&quot;Dale&quot;, &quot;Bartholomew&quot;)
}</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_postscript_operator_overloading">Postscript operator overloading</h3>
<div class="paragraph">
<p>The Kotlin postscript operator is overloaded for JSON object and array:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">print(someObject[&quot;firstName&quot;]);
print(someArray[4]);</code></pre>
</div>
</div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_json_pointers">Json Pointers</h2>
<div class="sectionbody">
<div class="paragraph">
<p>Vert.x provides an implementation of <a href="https://tools.ietf.org/html/rfc6901">Json Pointers from RFC6901</a>.
You can use pointers both for querying and for writing. You can build your <code><a href="../../apidocs/io/vertx/core/json/pointer/JsonPointer.html">JsonPointer</a></code> using
a string, a URI or manually appending paths:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="java"><span class="comment">// Build a pointer from a string</span>
var pointer1 = JsonPointer.from(<span class="string"><span class="delimiter">&quot;</span><span class="content">/hello/world</span><span class="delimiter">&quot;</span></span>)
<span class="comment">// Build a pointer manually</span>
var pointer2 = JsonPointer.create().append(<span class="string"><span class="delimiter">&quot;</span><span class="content">hello</span><span class="delimiter">&quot;</span></span>).append(<span class="string"><span class="delimiter">&quot;</span><span class="content">world</span><span class="delimiter">&quot;</span></span>)</code></pre>
</div>
</div>
<div class="paragraph">
<p>After instantiating your pointer, use <code><a href="../../apidocs/io/vertx/core/json/pointer/JsonPointer.html#queryJson-java.lang.Object-">queryJson</a></code> to query
a JSON value. You can update a Json Value using <code><a href="../../apidocs/io/vertx/core/json/pointer/JsonPointer.html#writeJson-java.lang.Object-java.lang.Object-">writeJson</a></code>:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="java"><span class="comment">// Query a JsonObject</span>
var result1 = objectPointer.queryJson(jsonObject)
<span class="comment">// Query a JsonArray</span>
var result2 = arrayPointer.queryJson(jsonArray)
<span class="comment">// Write starting from a JsonObject</span>
objectPointer.writeJson(jsonObject, <span class="string"><span class="delimiter">&quot;</span><span class="content">new element</span><span class="delimiter">&quot;</span></span>)
<span class="comment">// Write starting from a JsonObject</span>
arrayPointer.writeJson(jsonArray, <span class="string"><span class="delimiter">&quot;</span><span class="content">new element</span><span class="delimiter">&quot;</span></span>)</code></pre>
</div>
</div>
<div class="paragraph">
<p>You can use Vert.x Json Pointer with any object model by providing a custom implementation of <code><a href="../../apidocs/io/vertx/core/json/pointer/JsonPointerIterator.html">JsonPointerIterator</a></code></p>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_buffers">Buffers</h2>
<div class="sectionbody">
<div class="paragraph">
<p>Most data is shuffled around inside Vert.x using buffers.</p>
</div>
<div class="paragraph">
<p>A buffer is a sequence of zero or more bytes that can read from or written to and which expands automatically as
necessary to accommodate any bytes written to it. You can perhaps think of a buffer as smart byte array.</p>
</div>
<div class="sect2">
<h3 id="_creating_buffers">Creating buffers</h3>
<div class="paragraph">
<p>Buffers can create by using one of the static <code><a href="../../apidocs/io/vertx/core/buffer/Buffer.html#buffer--">Buffer.buffer</a></code> methods.</p>
</div>
<div class="paragraph">
<p>Buffers can be initialised from strings or byte arrays, or empty buffers can be created.</p>
</div>
<div class="paragraph">
<p>Here are some examples of creating buffers:</p>
</div>
<div class="paragraph">
<p>Create a new empty buffer:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var buff = Buffer.buffer()</code></pre>
</div>
</div>
<div class="paragraph">
<p>Create a buffer from a String. The String will be encoded in the buffer using UTF-8.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var buff = Buffer.buffer(&quot;some string&quot;)</code></pre>
</div>
</div>
<div class="paragraph">
<p>Create a buffer from a String: The String will be encoded using the specified encoding, e.g:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var buff = Buffer.buffer(&quot;some string&quot;, &quot;UTF-16&quot;)</code></pre>
</div>
</div>
<div class="paragraph">
<p>Create a buffer with an initial size hint. If you know your buffer will have a certain amount of data written to it
you can create the buffer and specify this size. This makes the buffer initially allocate that much memory and is
more efficient than the buffer automatically resizing multiple times as data is written to it.</p>
</div>
<div class="paragraph">
<p>Note that buffers created this way <strong>are empty</strong>. It does not create a buffer filled with zeros up to the specified size.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var buff = Buffer.buffer(10000)</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_writing_to_a_buffer">Writing to a Buffer</h3>
<div class="paragraph">
<p>There are two ways to write to a buffer: appending, and random access.
In either case buffers will always expand automatically to encompass the bytes. It&#8217;s not possible to get
an <code>IndexOutOfBoundsException</code> with a buffer.</p>
</div>
<div class="sect3">
<h4 id="_appending_to_a_buffer">Appending to a Buffer</h4>
<div class="paragraph">
<p>To append to a buffer, you use the <code>appendXXX</code> methods.
Append methods exist for appending various different types.</p>
</div>
<div class="paragraph">
<p>The return value of the <code>appendXXX</code> methods is the buffer itself, so these can be chained:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var buff = Buffer.buffer()

buff.appendInt(123).appendString(&quot;hello\n&quot;)

socket.write(buff)</code></pre>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_random_access_buffer_writes">Random access buffer writes</h4>
<div class="paragraph">
<p>You can also write into the buffer at a specific index, by using the <code>setXXX</code> methods.
Set methods exist for various different data types. All the set methods take an index as the first argument - this
represents the position in the buffer where to start writing the data.</p>
</div>
<div class="paragraph">
<p>The buffer will always expand as necessary to accommodate the data.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var buff = Buffer.buffer()

buff.setInt(1000, 123)
buff.setString(0, &quot;hello&quot;)</code></pre>
</div>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_reading_from_a_buffer">Reading from a Buffer</h3>
<div class="paragraph">
<p>Data is read from a buffer using the <code>getXXX</code> methods. Get methods exist for various datatypes.
The first argument to these methods is an index in the buffer from where to get the data.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var buff = Buffer.buffer()
var i = 0
while (i &lt; buff.length()) {
  println(&quot;int value at ${i} is ${buff.getInt(i)}&quot;)

  4}</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_working_with_unsigned_numbers">Working with unsigned numbers</h3>
<div class="paragraph">
<p>Unsigned numbers can be read from or appended/set to a buffer with the <code>getUnsignedXXX</code>,
<code>appendUnsignedXXX</code> and <code>setUnsignedXXX</code> methods. This is useful when implementing a codec for a
network protocol optimized to minimize bandwidth consumption.</p>
</div>
<div class="paragraph">
<p>In the following example, value 200 is set at specified position with just one byte:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var buff = Buffer.buffer(128)
var pos = 15
buff.setUnsignedByte(pos, 200)
println(buff.getUnsignedByte(pos))</code></pre>
</div>
</div>
<div class="paragraph">
<p>The console shows '200'.</p>
</div>
</div>
<div class="sect2">
<h3 id="_buffer_length">Buffer length</h3>
<div class="paragraph">
<p>Use <code><a href="../../apidocs/io/vertx/core/buffer/Buffer.html#length--">length</a></code> to obtain the length of the buffer.
The length of a buffer is the index of the byte in the buffer with the largest index + 1.</p>
</div>
</div>
<div class="sect2">
<h3 id="_copying_buffers">Copying buffers</h3>
<div class="paragraph">
<p>Use <code><a href="../../apidocs/io/vertx/core/buffer/Buffer.html#copy--">copy</a></code> to make a copy of the buffer</p>
</div>
</div>
<div class="sect2">
<h3 id="_slicing_buffers">Slicing buffers</h3>
<div class="paragraph">
<p>A sliced buffer is a new buffer which backs onto the original buffer, i.e. it does not copy the underlying data.
Use <code><a href="../../apidocs/io/vertx/core/buffer/Buffer.html#slice--">slice</a></code> to create a sliced buffers</p>
</div>
</div>
<div class="sect2">
<h3 id="_buffer_re_use">Buffer re-use</h3>
<div class="paragraph">
<p>After writing a buffer to a socket or other similar place, they cannot be re-used.</p>
</div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_writing_tcp_servers_and_clients">Writing TCP servers and clients</h2>
<div class="sectionbody">
<div class="paragraph">
<p>Vert.x allows you to easily write non blocking TCP clients and servers.</p>
</div>
<div class="sect2">
<h3 id="_creating_a_tcp_server">Creating a TCP server</h3>
<div class="paragraph">
<p>The simplest way to create a TCP server, using all default options is as follows:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var server = vertx.createNetServer()</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_configuring_a_tcp_server">Configuring a TCP server</h3>
<div class="paragraph">
<p>If you don&#8217;t want the default, a server can be configured by passing in a <code><a href="../../apidocs/io/vertx/core/net/NetServerOptions.html">NetServerOptions</a></code>
instance when creating it:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var options = NetServerOptions(
  port = 4321)
var server = vertx.createNetServer(options)</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_start_the_server_listening">Start the Server Listening</h3>
<div class="paragraph">
<p>To tell the server to listen for incoming requests you use one of the <code><a href="../../apidocs/io/vertx/core/net/NetServer.html#listen--">listen</a></code>
alternatives.</p>
</div>
<div class="paragraph">
<p>To tell the server to listen at the host and port as specified in the options:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var server = vertx.createNetServer()
server.listen()</code></pre>
</div>
</div>
<div class="paragraph">
<p>Or to specify the host and port in the call to listen, ignoring what is configured in the options:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var server = vertx.createNetServer()
server.listen(1234, &quot;localhost&quot;)</code></pre>
</div>
</div>
<div class="paragraph">
<p>The default host is <code>0.0.0.0</code> which means 'listen on all available addresses' and the default port is <code>0</code>, which is a
special value that instructs the server to find a random unused local port and use that.</p>
</div>
<div class="paragraph">
<p>The actual bind is asynchronous so the server might not actually be listening until some time <strong>after</strong> the call to
listen has returned.</p>
</div>
<div class="paragraph">
<p>If you want to be notified when the server is actually listening you can provide a handler to the <code>listen</code> call.
For example:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var server = vertx.createNetServer()
server.listen(1234, &quot;localhost&quot;, { res -&gt;
  if (res.succeeded()) {
    println(&quot;Server is now listening!&quot;)
  } else {
    println(&quot;Failed to bind!&quot;)
  }
})</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_listening_on_a_random_port">Listening on a random port</h3>
<div class="paragraph">
<p>If <code>0</code> is used as the listening port, the server will find an unused random port to listen on.</p>
</div>
<div class="paragraph">
<p>To find out the real port the server is listening on you can call <code><a href="../../apidocs/io/vertx/core/net/NetServer.html#actualPort--">actualPort</a></code>.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var server = vertx.createNetServer()
server.listen(0, &quot;localhost&quot;, { res -&gt;
  if (res.succeeded()) {
    println(&quot;Server is now listening on actual port: ${server.actualPort()}&quot;)
  } else {
    println(&quot;Failed to bind!&quot;)
  }
})</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_getting_notified_of_incoming_connections">Getting notified of incoming connections</h3>
<div class="paragraph">
<p>To be notified when a connection is made you need to set a <code><a href="../../apidocs/io/vertx/core/net/NetServer.html#connectHandler-io.vertx.core.Handler-">connectHandler</a></code>:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var server = vertx.createNetServer()
server.connectHandler({ socket -&gt;
  // Handle the connection in here
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>When a connection is made the handler will be called with an instance of <code><a href="../../apidocs/io/vertx/core/net/NetSocket.html">NetSocket</a></code>.</p>
</div>
<div class="paragraph">
<p>This is a socket-like interface to the actual connection, and allows you to read and write data as well as do various
other things like close the socket.</p>
</div>
</div>
<div class="sect2">
<h3 id="_reading_data_from_the_socket">Reading data from the socket</h3>
<div class="paragraph">
<p>To read data from the socket you set the <code><a href="../../apidocs/io/vertx/core/net/NetSocket.html#handler-io.vertx.core.Handler-">handler</a></code> on the
socket.</p>
</div>
<div class="paragraph">
<p>This handler will be called with an instance of <code><a href="../../apidocs/io/vertx/core/buffer/Buffer.html">Buffer</a></code> every time data is received on
the socket.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var server = vertx.createNetServer()
server.connectHandler({ socket -&gt;
  socket.handler({ buffer -&gt;
    println(&quot;I received some bytes: ${buffer.length()}&quot;)
  })
})</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_writing_data_to_a_socket">Writing data to a socket</h3>
<div class="paragraph">
<p>You write to a socket using one of <code><a href="../../apidocs/io/vertx/core/net/NetSocket.html#write-io.vertx.core.buffer.Buffer-">write</a></code>.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">// Write a buffer
var buffer = Buffer.buffer().appendFloat(12.34f).appendInt(123)
socket.write(buffer)

// Write a string in UTF-8 encoding
socket.write(&quot;some data&quot;)

// Write a string using the specified encoding
socket.write(&quot;some data&quot;, &quot;UTF-16&quot;)</code></pre>
</div>
</div>
<div class="paragraph">
<p>Write operations are asynchronous and may not occur until some time after the call to write has returned.</p>
</div>
</div>
<div class="sect2">
<h3 id="_closed_handler">Closed handler</h3>
<div class="paragraph">
<p>If you want to be notified when a socket is closed, you can set a <code><a href="../../apidocs/io/vertx/core/net/NetSocket.html#closeHandler-io.vertx.core.Handler-">closeHandler</a></code>
on it:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">socket.closeHandler({ v -&gt;
  println(&quot;The socket has been closed&quot;)
})</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_handling_exceptions">Handling exceptions</h3>
<div class="paragraph">
<p>You can set an <code><a href="../../apidocs/io/vertx/core/net/NetSocket.html#exceptionHandler-io.vertx.core.Handler-">exceptionHandler</a></code> to receive any
exceptions that happen on the socket.</p>
</div>
<div class="paragraph">
<p>You can set an <code><a href="../../apidocs/io/vertx/core/net/NetServer.html#exceptionHandler-io.vertx.core.Handler-">exceptionHandler</a></code> to receive any
exceptions that happens before the connection is passed to the <code><a href="../../apidocs/io/vertx/core/net/NetServer.html#connectHandler-io.vertx.core.Handler-">connectHandler</a></code>
, e.g during the TLS handshake.</p>
</div>
</div>
<div class="sect2">
<h3 id="_event_bus_write_handler">Event bus write handler</h3>
<div class="paragraph">
<p>Every socket automatically registers a handler on the event bus, and when any buffers are received in this handler,
it writes them to itself. Those are local subscriptions not routed on the cluster.</p>
</div>
<div class="paragraph">
<p>This enables you to write data to a socket which is potentially in a completely different verticle by sending the buffer to the address of that handler.</p>
</div>
<div class="paragraph">
<p>The address of the handler is given by <code><a href="../../apidocs/io/vertx/core/net/NetSocket.html#writeHandlerID--">writeHandlerID</a></code></p>
</div>
</div>
<div class="sect2">
<h3 id="_local_and_remote_addresses">Local and remote addresses</h3>
<div class="paragraph">
<p>The local address of a <code><a href="../../apidocs/io/vertx/core/net/NetSocket.html">NetSocket</a></code> can be retrieved using <code><a href="../../apidocs/io/vertx/core/net/NetSocket.html#localAddress--">localAddress</a></code>.</p>
</div>
<div class="paragraph">
<p>The remote address, (i.e. the address of the other end of the connection) of a <code><a href="../../apidocs/io/vertx/core/net/NetSocket.html">NetSocket</a></code>
can be retrieved using <code><a href="../../apidocs/io/vertx/core/net/NetSocket.html#remoteAddress--">remoteAddress</a></code>.</p>
</div>
</div>
<div class="sect2">
<h3 id="_sending_files_or_resources_from_the_classpath">Sending files or resources from the classpath</h3>
<div class="paragraph">
<p>Files and classpath resources can be written to the socket directly using <code><a href="../../apidocs/io/vertx/core/net/NetSocket.html#sendFile-java.lang.String-">sendFile</a></code>. This can be a very
efficient way to send files, as it can be handled by the OS kernel directly where supported by the operating system.</p>
</div>
<div class="paragraph">
<p>Please see the chapter about <a href="#classpath">serving files from the classpath</a> for restrictions of the
classpath resolution or disabling it.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">socket.sendFile(&quot;myfile.dat&quot;)</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_streaming_sockets">Streaming sockets</h3>
<div class="paragraph">
<p>Instances of <code><a href="../../apidocs/io/vertx/core/net/NetSocket.html">NetSocket</a></code> are also <code><a href="../../apidocs/io/vertx/core/streams/ReadStream.html">ReadStream</a></code> and
<code><a href="../../apidocs/io/vertx/core/streams/WriteStream.html">WriteStream</a></code> instances so they can be used to pipe data to or from other
read and write streams.</p>
</div>
<div class="paragraph">
<p>See the chapter on <a href="#streams">streams</a> for more information.</p>
</div>
</div>
<div class="sect2">
<h3 id="_upgrading_connections_to_ssl_tls">Upgrading connections to SSL/TLS</h3>
<div class="paragraph">
<p>A non SSL/TLS connection can be upgraded to SSL/TLS using <code><a href="../../apidocs/io/vertx/core/net/NetSocket.html#upgradeToSsl-io.vertx.core.Handler-">upgradeToSsl</a></code>.</p>
</div>
<div class="paragraph">
<p>The server or client must be configured for SSL/TLS for this to work correctly. Please see the <a href="#ssl">chapter on SSL/TLS</a>
for more information.</p>
</div>
</div>
<div class="sect2">
<h3 id="_closing_a_tcp_server">Closing a TCP Server</h3>
<div class="paragraph">
<p>Call <code><a href="../../apidocs/io/vertx/core/net/NetServer.html#close--">close</a></code> to close the server. Closing the server closes any open connections
and releases all server resources.</p>
</div>
<div class="paragraph">
<p>The close is actually asynchronous and might not complete until some time after the call has returned.
If you want to be notified when the actual close has completed then you can pass in a handler.</p>
</div>
<div class="paragraph">
<p>This handler will then be called when the close has fully completed.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">server.close({ res -&gt;
  if (res.succeeded()) {
    println(&quot;Server is now closed&quot;)
  } else {
    println(&quot;close failed&quot;)
  }
})</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_automatic_clean_up_in_verticles_3">Automatic clean-up in verticles</h3>
<div class="paragraph">
<p>If you&#8217;re creating TCP servers and clients from inside verticles, those servers and clients will be automatically closed
when the verticle is undeployed.</p>
</div>
</div>
<div class="sect2">
<h3 id="_scaling_sharing_tcp_servers">Scaling - sharing TCP servers</h3>
<div class="paragraph">
<p>The handlers of any TCP server are always executed on the same event loop thread.</p>
</div>
<div class="paragraph">
<p>This means that if you are running on a server with a lot of cores, and you only have this one instance
deployed then you will have at most one core utilised on your server.</p>
</div>
<div class="paragraph">
<p>In order to utilise more cores of your server you will need to deploy more instances of the server.</p>
</div>
<div class="paragraph">
<p>You can instantiate more instances programmatically in your code:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">// Create a few instances so we can utilise cores

for (i in 0 until 10) {
  var server = vertx.createNetServer()
  server.connectHandler({ socket -&gt;
    socket.handler({ buffer -&gt;
      // Just echo back the data
      socket.write(buffer)
    })
  })
  server.listen(1234, &quot;localhost&quot;)

}</code></pre>
</div>
</div>
<div class="paragraph">
<p>or, if you are using verticles you can simply deploy more instances of your server verticle by using the <code>-instances</code> option
on the command line:</p>
</div>
<div class="paragraph">
<p>vertx run com.mycompany.MyVerticle -instances 10</p>
</div>
<div class="paragraph">
<p>or when programmatically deploying your verticle</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var options = DeploymentOptions(
  instances = 10)
vertx.deployVerticle(&quot;com.mycompany.MyVerticle&quot;, options)</code></pre>
</div>
</div>
<div class="paragraph">
<p>Once you do this you will find the echo server works functionally identically to before, but all your cores on your
server can be utilised and more work can be handled.</p>
</div>
<div class="paragraph">
<p>At this point you might be asking yourself <strong>'How can you have more than one server listening on the
same host and port? Surely you will get port conflicts as soon as you try and deploy more than one instance?'</strong></p>
</div>
<div class="paragraph">
<p><em>Vert.x does a little magic here.*</em></p>
</div>
<div class="paragraph">
<p>When you deploy another server on the same host and port as an existing server it doesn&#8217;t actually try and create a
new server listening on the same host/port.</p>
</div>
<div class="paragraph">
<p>Instead it internally maintains just a single server, and, as incoming connections arrive it distributes
them in a round-robin fashion to any of the connect handlers.</p>
</div>
<div class="paragraph">
<p>Consequently Vert.x TCP servers can scale over available cores while each instance remains single threaded.</p>
</div>
</div>
<div class="sect2">
<h3 id="_creating_a_tcp_client">Creating a TCP client</h3>
<div class="paragraph">
<p>The simplest way to create a TCP client, using all default options is as follows:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var client = vertx.createNetClient()</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_configuring_a_tcp_client">Configuring a TCP client</h3>
<div class="paragraph">
<p>If you don&#8217;t want the default, a client can be configured by passing in a <code><a href="../../apidocs/io/vertx/core/net/NetClientOptions.html">NetClientOptions</a></code>
instance when creating it:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var options = NetClientOptions(
  connectTimeout = 10000)
var client = vertx.createNetClient(options)</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_making_connections">Making connections</h3>
<div class="paragraph">
<p>To make a connection to a server you use <code><a href="../../apidocs/io/vertx/core/net/NetClient.html#connect-int-java.lang.String-io.vertx.core.Handler-">connect</a></code>,
specifying the port and host of the server and a handler that will be called with a result containing the
<code><a href="../../apidocs/io/vertx/core/net/NetSocket.html">NetSocket</a></code> when connection is successful or with a failure if connection failed.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var options = NetClientOptions(
  connectTimeout = 10000)
var client = vertx.createNetClient(options)
client.connect(4321, &quot;localhost&quot;, { res -&gt;
  if (res.succeeded()) {
    println(&quot;Connected!&quot;)
    var socket = res.result()
  } else {
    println(&quot;Failed to connect: ${res.cause().getMessage()}&quot;)
  }
})</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_configuring_connection_attempts">Configuring connection attempts</h3>
<div class="paragraph">
<p>A client can be configured to automatically retry connecting to the server in the event that it cannot connect.
This is configured with <code><a href="../../apidocs/io/vertx/core/net/NetClientOptions.html#setReconnectInterval-long-">setReconnectInterval</a></code> and
<code><a href="../../apidocs/io/vertx/core/net/NetClientOptions.html#setReconnectAttempts-int-">setReconnectAttempts</a></code>.</p>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<div class="title">Note</div>
</td>
<td class="content">
Currently Vert.x will not attempt to reconnect if a connection fails, reconnect attempts and interval
only apply to creating initial connections.
</td>
</tr>
</table>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var options = NetClientOptions(
  reconnectAttempts = 10,
  reconnectInterval = 500)

var client = vertx.createNetClient(options)</code></pre>
</div>
</div>
<div class="paragraph">
<p>By default, multiple connection attempts are disabled.</p>
</div>
</div>
<div class="sect2">
<h3 id="logging_network_activity">Logging network activity</h3>
<div class="paragraph">
<p>For debugging purposes, network activity can be logged:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var options = NetServerOptions(
  logActivity = true)

var server = vertx.createNetServer(options)</code></pre>
</div>
</div>
<div class="paragraph">
<p>for the client</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var options = NetClientOptions(
  logActivity = true)

var client = vertx.createNetClient(options)</code></pre>
</div>
</div>
<div class="paragraph">
<p>Network activity is logged by Netty with the <code>DEBUG</code> level and with the <code>io.netty.handler.logging.LoggingHandler</code>
name. When using network activity logging there are a few things to keep in mind:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>logging is not performed by Vert.x logging but by Netty</p>
</li>
<li>
<p>this is <strong>not</strong> a production feature</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>You should read the <a href="#netty-logging">Netty logging</a> section.</p>
</div>
</div>
<div class="sect2">
<h3 id="ssl">Configuring servers and clients to work with SSL/TLS</h3>
<div class="paragraph">
<p>TCP clients and servers can be configured to use <a href="https://en.wikipedia.org/wiki/Transport_Layer_Security">Transport Layer Security</a>
- earlier versions of TLS were known as SSL.</p>
</div>
<div class="paragraph">
<p>The APIs of the servers and clients are identical whether or not SSL/TLS is used, and it&#8217;s enabled by configuring
the <code><a href="../../apidocs/io/vertx/core/net/NetClientOptions.html">NetClientOptions</a></code> or <code><a href="../../apidocs/io/vertx/core/net/NetServerOptions.html">NetServerOptions</a></code> instances used
to create the servers or clients.</p>
</div>
<div class="sect3">
<h4 id="_enabling_ssl_tls_on_the_server">Enabling SSL/TLS on the server</h4>
<div class="paragraph">
<p>SSL/TLS is enabled with  <code><a href="../../apidocs/io/vertx/core/net/NetServerOptions.html#setSsl-boolean-">ssl</a></code>.</p>
</div>
<div class="paragraph">
<p>By default it is disabled.</p>
</div>
</div>
<div class="sect3">
<h4 id="_specifying_key_certificate_for_the_server">Specifying key/certificate for the server</h4>
<div class="paragraph">
<p>SSL/TLS servers usually provide certificates to clients in order verify their identity to clients.</p>
</div>
<div class="paragraph">
<p>Certificates/keys can be configured for servers in several ways:</p>
</div>
<div class="paragraph">
<p>The first method is by specifying the location of a Java key-store which contains the certificate and private key.</p>
</div>
<div class="paragraph">
<p>Java key stores can be managed with the <a href="https://docs.oracle.com/javase/6/docs/technotes/tools/solaris/keytool.html">keytool</a>
utility which ships with the JDK.</p>
</div>
<div class="paragraph">
<p>The password for the key store should also be provided:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var options = NetServerOptions(
  ssl = true,
  keyStoreOptions = JksOptions(
    path = &quot;/path/to/your/server-keystore.jks&quot;,
    password = &quot;password-of-your-keystore&quot;))
var server = vertx.createNetServer(options)</code></pre>
</div>
</div>
<div class="paragraph">
<p>Alternatively you can read the key store yourself as a buffer and provide that directly:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var myKeyStoreAsABuffer = vertx.fileSystem().readFileBlocking(&quot;/path/to/your/server-keystore.jks&quot;)
var jksOptions = JksOptions(
  value = myKeyStoreAsABuffer,
  password = &quot;password-of-your-keystore&quot;)
var options = NetServerOptions(
  ssl = true,
  keyStoreOptions = jksOptions)
var server = vertx.createNetServer(options)</code></pre>
</div>
</div>
<div class="paragraph">
<p>Key/certificate in PKCS#12 format (<a href="https://en.wikipedia.org/wiki/PKCS_12" class="bare">http://en.wikipedia.org/wiki/PKCS_12</a>), usually with the <code>.pfx</code>  or the <code>.p12</code>
extension can also be loaded in a similar fashion than JKS key stores:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var options = NetServerOptions(
  ssl = true,
  pfxKeyCertOptions = PfxOptions(
    path = &quot;/path/to/your/server-keystore.pfx&quot;,
    password = &quot;password-of-your-keystore&quot;))
var server = vertx.createNetServer(options)</code></pre>
</div>
</div>
<div class="paragraph">
<p>Buffer configuration is also supported:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var myKeyStoreAsABuffer = vertx.fileSystem().readFileBlocking(&quot;/path/to/your/server-keystore.pfx&quot;)
var pfxOptions = PfxOptions(
  value = myKeyStoreAsABuffer,
  password = &quot;password-of-your-keystore&quot;)
var options = NetServerOptions(
  ssl = true,
  pfxKeyCertOptions = pfxOptions)
var server = vertx.createNetServer(options)</code></pre>
</div>
</div>
<div class="paragraph">
<p>Another way of providing server private key and certificate separately using <code>.pem</code> files.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var options = NetServerOptions(
  ssl = true,
  pemKeyCertOptions = PemKeyCertOptions(
    keyPath = &quot;/path/to/your/server-key.pem&quot;,
    certPath = &quot;/path/to/your/server-cert.pem&quot;))
var server = vertx.createNetServer(options)</code></pre>
</div>
</div>
<div class="paragraph">
<p>Buffer configuration is also supported:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var myKeyAsABuffer = vertx.fileSystem().readFileBlocking(&quot;/path/to/your/server-key.pem&quot;)
var myCertAsABuffer = vertx.fileSystem().readFileBlocking(&quot;/path/to/your/server-cert.pem&quot;)
var pemOptions = PemKeyCertOptions(
  keyValue = myKeyAsABuffer,
  certValue = myCertAsABuffer)
var options = NetServerOptions(
  ssl = true,
  pemKeyCertOptions = pemOptions)
var server = vertx.createNetServer(options)</code></pre>
</div>
</div>
<div class="paragraph">
<p>Vert.x supports reading of unencrypted RSA and/or ECC based private keys from PKCS8 PEM files.
RSA based private keys can also be read from PKCS1 PEM files.
X.509 certificates can be read from PEM files containing a textual encoding of the certificate as defined by
<a href="https://tools.ietf.org/html/rfc7468#section-5">RFC 7468, Section 5</a>.</p>
</div>
<div class="admonitionblock warning">
<table>
<tr>
<td class="icon">
<div class="title">Warning</div>
</td>
<td class="content">
Keep in mind that the keys contained in an unencrypted PKCS8 or a PKCS1 PEM file can be extracted by
anybody who can read the file. Thus, make sure to put proper access restrictions on such PEM files in order to
prevent misuse.
</td>
</tr>
</table>
</div>
</div>
<div class="sect3">
<h4 id="_specifying_trust_for_the_server">Specifying trust for the server</h4>
<div class="paragraph">
<p>SSL/TLS servers can use a certificate authority in order to verify the identity of the clients.</p>
</div>
<div class="paragraph">
<p>Certificate authorities can be configured for servers in several ways:</p>
</div>
<div class="paragraph">
<p>Java trust stores can be managed with the <a href="https://docs.oracle.com/javase/6/docs/technotes/tools/solaris/keytool.html">keytool</a>
utility which ships with the JDK.</p>
</div>
<div class="paragraph">
<p>The password for the trust store should also be provided:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var options = NetServerOptions(
  ssl = true,
  clientAuth = ClientAuth.REQUIRED,
  trustStoreOptions = JksOptions(
    path = &quot;/path/to/your/truststore.jks&quot;,
    password = &quot;password-of-your-truststore&quot;))
var server = vertx.createNetServer(options)</code></pre>
</div>
</div>
<div class="paragraph">
<p>Alternatively you can read the trust store yourself as a buffer and provide that directly:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var myTrustStoreAsABuffer = vertx.fileSystem().readFileBlocking(&quot;/path/to/your/truststore.jks&quot;)
var options = NetServerOptions(
  ssl = true,
  clientAuth = ClientAuth.REQUIRED,
  trustStoreOptions = JksOptions(
    value = myTrustStoreAsABuffer,
    password = &quot;password-of-your-truststore&quot;))
var server = vertx.createNetServer(options)</code></pre>
</div>
</div>
<div class="paragraph">
<p>Certificate authority in PKCS#12 format (<a href="https://en.wikipedia.org/wiki/PKCS_12" class="bare">http://en.wikipedia.org/wiki/PKCS_12</a>), usually with the <code>.pfx</code>  or the <code>.p12</code>
extension can also be loaded in a similar fashion than JKS trust stores:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var options = NetServerOptions(
  ssl = true,
  clientAuth = ClientAuth.REQUIRED,
  pfxTrustOptions = PfxOptions(
    path = &quot;/path/to/your/truststore.pfx&quot;,
    password = &quot;password-of-your-truststore&quot;))
var server = vertx.createNetServer(options)</code></pre>
</div>
</div>
<div class="paragraph">
<p>Buffer configuration is also supported:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var myTrustStoreAsABuffer = vertx.fileSystem().readFileBlocking(&quot;/path/to/your/truststore.pfx&quot;)
var options = NetServerOptions(
  ssl = true,
  clientAuth = ClientAuth.REQUIRED,
  pfxTrustOptions = PfxOptions(
    value = myTrustStoreAsABuffer,
    password = &quot;password-of-your-truststore&quot;))
var server = vertx.createNetServer(options)</code></pre>
</div>
</div>
<div class="paragraph">
<p>Another way of providing server certificate authority using a list <code>.pem</code> files.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var options = NetServerOptions(
  ssl = true,
  clientAuth = ClientAuth.REQUIRED,
  pemTrustOptions = PemTrustOptions(
    certPaths = listOf(&quot;/path/to/your/server-ca.pem&quot;)))
var server = vertx.createNetServer(options)</code></pre>
</div>
</div>
<div class="paragraph">
<p>Buffer configuration is also supported:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var myCaAsABuffer = vertx.fileSystem().readFileBlocking(&quot;/path/to/your/server-ca.pfx&quot;)
var options = NetServerOptions(
  ssl = true,
  clientAuth = ClientAuth.REQUIRED,
  pemTrustOptions = PemTrustOptions(
    certValues = listOf(myCaAsABuffer)))
var server = vertx.createNetServer(options)</code></pre>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_enabling_ssl_tls_on_the_client">Enabling SSL/TLS on the client</h4>
<div class="paragraph">
<p>Net Clients can also be easily configured to use SSL. They have the exact same API when using SSL as when using standard sockets.</p>
</div>
<div class="paragraph">
<p>To enable SSL on a NetClient the function setSSL(true) is called.</p>
</div>
</div>
<div class="sect3">
<h4 id="_client_trust_configuration">Client trust configuration</h4>
<div class="paragraph">
<p>If the <code><a href="../../apidocs/io/vertx/core/net/ClientOptionsBase.html#setTrustAll-boolean-">trustALl</a></code> is set to true on the client, then the client will
trust all server certificates. The connection will still be encrypted but this mode is vulnerable to 'man in the middle' attacks. I.e. you can&#8217;t
be sure who you are connecting to. Use this with caution. Default value is false.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var options = NetClientOptions(
  ssl = true,
  trustAll = true)
var client = vertx.createNetClient(options)</code></pre>
</div>
</div>
<div class="paragraph">
<p>If <code><a href="../../apidocs/io/vertx/core/net/ClientOptionsBase.html#setTrustAll-boolean-">trustAll</a></code> is not set then a client trust store must be
configured and should contain the certificates of the servers that the client trusts.</p>
</div>
<div class="paragraph">
<p>By default, host verification is disabled on the client.
To enable host verification, set the algorithm to use on your client (only HTTPS and LDAPS is currently supported):</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var options = NetClientOptions(
  ssl = true,
  hostnameVerificationAlgorithm = &quot;HTTPS&quot;)
var client = vertx.createNetClient(options)</code></pre>
</div>
</div>
<div class="paragraph">
<p>Likewise server configuration, the client trust can be configured in several ways:</p>
</div>
<div class="paragraph">
<p>The first method is by specifying the location of a Java trust-store which contains the certificate authority.</p>
</div>
<div class="paragraph">
<p>It is just a standard Java key store, the same as the key stores on the server side. The client
trust store location is set by using the function <code><a href="../../apidocs/io/vertx/core/net/JksOptions.html#setPath-java.lang.String-">path</a></code> on the
<code><a href="../../apidocs/io/vertx/core/net/JksOptions.html">jks options</a></code>. If a server presents a certificate during connection which is not
in the client trust store, the connection attempt will not succeed.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var options = NetClientOptions(
  ssl = true,
  trustStoreOptions = JksOptions(
    path = &quot;/path/to/your/truststore.jks&quot;,
    password = &quot;password-of-your-truststore&quot;))
var client = vertx.createNetClient(options)</code></pre>
</div>
</div>
<div class="paragraph">
<p>Buffer configuration is also supported:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var myTrustStoreAsABuffer = vertx.fileSystem().readFileBlocking(&quot;/path/to/your/truststore.jks&quot;)
var options = NetClientOptions(
  ssl = true,
  trustStoreOptions = JksOptions(
    value = myTrustStoreAsABuffer,
    password = &quot;password-of-your-truststore&quot;))
var client = vertx.createNetClient(options)</code></pre>
</div>
</div>
<div class="paragraph">
<p>Certificate authority in PKCS#12 format (<a href="https://en.wikipedia.org/wiki/PKCS_12" class="bare">http://en.wikipedia.org/wiki/PKCS_12</a>), usually with the <code>.pfx</code>  or the <code>.p12</code>
extension can also be loaded in a similar fashion than JKS trust stores:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var options = NetClientOptions(
  ssl = true,
  pfxTrustOptions = PfxOptions(
    path = &quot;/path/to/your/truststore.pfx&quot;,
    password = &quot;password-of-your-truststore&quot;))
var client = vertx.createNetClient(options)</code></pre>
</div>
</div>
<div class="paragraph">
<p>Buffer configuration is also supported:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var myTrustStoreAsABuffer = vertx.fileSystem().readFileBlocking(&quot;/path/to/your/truststore.pfx&quot;)
var options = NetClientOptions(
  ssl = true,
  pfxTrustOptions = PfxOptions(
    value = myTrustStoreAsABuffer,
    password = &quot;password-of-your-truststore&quot;))
var client = vertx.createNetClient(options)</code></pre>
</div>
</div>
<div class="paragraph">
<p>Another way of providing server certificate authority using a list <code>.pem</code> files.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var options = NetClientOptions(
  ssl = true,
  pemTrustOptions = PemTrustOptions(
    certPaths = listOf(&quot;/path/to/your/ca-cert.pem&quot;)))
var client = vertx.createNetClient(options)</code></pre>
</div>
</div>
<div class="paragraph">
<p>Buffer configuration is also supported:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var myTrustStoreAsABuffer = vertx.fileSystem().readFileBlocking(&quot;/path/to/your/ca-cert.pem&quot;)
var options = NetClientOptions(
  ssl = true,
  pemTrustOptions = PemTrustOptions(
    certValues = listOf(myTrustStoreAsABuffer)))
var client = vertx.createNetClient(options)</code></pre>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_specifying_key_certificate_for_the_client">Specifying key/certificate for the client</h4>
<div class="paragraph">
<p>If the server requires client authentication then the client must present its own certificate to the server when
connecting. The client can be configured in several ways:</p>
</div>
<div class="paragraph">
<p>The first method is by specifying the location of a Java key-store which contains the key and certificate.
Again it&#8217;s just a regular Java key store. The client keystore location is set by using the function
<code><a href="../../apidocs/io/vertx/core/net/JksOptions.html#setPath-java.lang.String-">path</a></code> on the
<code><a href="../../apidocs/io/vertx/core/net/JksOptions.html">jks options</a></code>.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var options = NetClientOptions(
  ssl = true,
  keyStoreOptions = JksOptions(
    path = &quot;/path/to/your/client-keystore.jks&quot;,
    password = &quot;password-of-your-keystore&quot;))
var client = vertx.createNetClient(options)</code></pre>
</div>
</div>
<div class="paragraph">
<p>Buffer configuration is also supported:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var myKeyStoreAsABuffer = vertx.fileSystem().readFileBlocking(&quot;/path/to/your/client-keystore.jks&quot;)
var jksOptions = JksOptions(
  value = myKeyStoreAsABuffer,
  password = &quot;password-of-your-keystore&quot;)
var options = NetClientOptions(
  ssl = true,
  keyStoreOptions = jksOptions)
var client = vertx.createNetClient(options)</code></pre>
</div>
</div>
<div class="paragraph">
<p>Key/certificate in PKCS#12 format (<a href="https://en.wikipedia.org/wiki/PKCS_12" class="bare">http://en.wikipedia.org/wiki/PKCS_12</a>), usually with the <code>.pfx</code>  or the <code>.p12</code>
extension can also be loaded in a similar fashion than JKS key stores:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var options = NetClientOptions(
  ssl = true,
  pfxKeyCertOptions = PfxOptions(
    path = &quot;/path/to/your/client-keystore.pfx&quot;,
    password = &quot;password-of-your-keystore&quot;))
var client = vertx.createNetClient(options)</code></pre>
</div>
</div>
<div class="paragraph">
<p>Buffer configuration is also supported:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var myKeyStoreAsABuffer = vertx.fileSystem().readFileBlocking(&quot;/path/to/your/client-keystore.pfx&quot;)
var pfxOptions = PfxOptions(
  value = myKeyStoreAsABuffer,
  password = &quot;password-of-your-keystore&quot;)
var options = NetClientOptions(
  ssl = true,
  pfxKeyCertOptions = pfxOptions)
var client = vertx.createNetClient(options)</code></pre>
</div>
</div>
<div class="paragraph">
<p>Another way of providing server private key and certificate separately using <code>.pem</code> files.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var options = NetClientOptions(
  ssl = true,
  pemKeyCertOptions = PemKeyCertOptions(
    keyPath = &quot;/path/to/your/client-key.pem&quot;,
    certPath = &quot;/path/to/your/client-cert.pem&quot;))
var client = vertx.createNetClient(options)</code></pre>
</div>
</div>
<div class="paragraph">
<p>Buffer configuration is also supported:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var myKeyAsABuffer = vertx.fileSystem().readFileBlocking(&quot;/path/to/your/client-key.pem&quot;)
var myCertAsABuffer = vertx.fileSystem().readFileBlocking(&quot;/path/to/your/client-cert.pem&quot;)
var pemOptions = PemKeyCertOptions(
  keyValue = myKeyAsABuffer,
  certValue = myCertAsABuffer)
var options = NetClientOptions(
  ssl = true,
  pemKeyCertOptions = pemOptions)
var client = vertx.createNetClient(options)</code></pre>
</div>
</div>
<div class="paragraph">
<p>Keep in mind that pem configuration, the private key is not crypted.</p>
</div>
</div>
<div class="sect3">
<h4 id="_self_signed_certificates_for_testing_and_development_purposes">Self-signed certificates for testing and development purposes</h4>
<div class="admonitionblock caution">
<table>
<tr>
<td class="icon">
<div class="title">Caution</div>
</td>
<td class="content">
Do not use this in production settings, and note that the generated keys are very insecure.
</td>
</tr>
</table>
</div>
<div class="paragraph">
<p>It is very often the case that self-signed certificates are required, be it for unit / integration tests or for
running a development version of an application.</p>
</div>
<div class="paragraph">
<p><code><a href="../../apidocs/io/vertx/core/net/SelfSignedCertificate.html">SelfSignedCertificate</a></code> can be used to provide self-signed PEM certificate helpers and
give <code><a href="../../apidocs/io/vertx/core/net/KeyCertOptions.html">KeyCertOptions</a></code> and <code><a href="../../apidocs/io/vertx/core/net/TrustOptions.html">TrustOptions</a></code> configurations:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var certificate = SelfSignedCertificate.create()

var serverOptions = NetServerOptions(
  ssl = true,
  keyCertOptions = certificate.keyCertOptions(),
  trustOptions = certificate.trustOptions())

var server = vertx.createNetServer(serverOptions).connectHandler({ socket -&gt;
  socket.write(&quot;Hello!&quot;).end()
}).listen(1234, &quot;localhost&quot;)

var clientOptions = NetClientOptions(
  ssl = true,
  keyCertOptions = certificate.keyCertOptions(),
  trustOptions = certificate.trustOptions())

var client = vertx.createNetClient(clientOptions)
client.connect(1234, &quot;localhost&quot;, { ar -&gt;
  if (ar.succeeded()) {
    ar.result().handler({ buffer -&gt;
      println(buffer)
    })
  } else {
    System.err.println(&quot;Woops: ${ar.cause().getMessage()}&quot;)
  }
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>The client can also be configured to trust all certificates:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var clientOptions = NetClientOptions(
  ssl = true,
  trustAll = true)</code></pre>
</div>
</div>
<div class="paragraph">
<p>Note that self-signed certificates also work for other TCP protocols like HTTPS:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var certificate = SelfSignedCertificate.create()

vertx.createHttpServer(HttpServerOptions(
  ssl = true,
  keyCertOptions = certificate.keyCertOptions(),
  trustOptions = certificate.trustOptions())).requestHandler({ req -&gt;
  req.response().end(&quot;Hello!&quot;)
}).listen(8080)</code></pre>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_revoking_certificate_authorities">Revoking certificate authorities</h4>
<div class="paragraph">
<p>Trust can be configured to use a certificate revocation list (CRL) for revoked certificates that should no
longer be trusted. The <code><a href="../../apidocs/io/vertx/core/net/NetClientOptions.html#addCrlPath-java.lang.String-">crlPath</a></code> configures
the crl list to use:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var options = NetClientOptions(
  ssl = true,
  trustStoreOptions = trustOptions,
  crlPaths = listOf(&quot;/path/to/your/crl.pem&quot;))
var client = vertx.createNetClient(options)</code></pre>
</div>
</div>
<div class="paragraph">
<p>Buffer configuration is also supported:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var myCrlAsABuffer = vertx.fileSystem().readFileBlocking(&quot;/path/to/your/crl.pem&quot;)
var options = NetClientOptions(
  ssl = true,
  trustStoreOptions = trustOptions,
  crlValues = listOf(myCrlAsABuffer))
var client = vertx.createNetClient(options)</code></pre>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_configuring_the_cipher_suite">Configuring the Cipher suite</h4>
<div class="paragraph">
<p>By default, the TLS configuration will use the Cipher suite of the JVM running Vert.x. This Cipher suite can be
configured with a suite of enabled ciphers:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var options = NetServerOptions(
  ssl = true,
  keyStoreOptions = keyStoreOptions,
  enabledCipherSuites = listOf(&quot;ECDHE-RSA-AES128-GCM-SHA256&quot;, &quot;ECDHE-ECDSA-AES128-GCM-SHA256&quot;, &quot;ECDHE-RSA-AES256-GCM-SHA384&quot;, &quot;CDHE-ECDSA-AES256-GCM-SHA384&quot;))
var server = vertx.createNetServer(options)</code></pre>
</div>
</div>
<div class="paragraph">
<p>Cipher suite can be specified on the <code><a href="../../apidocs/io/vertx/core/net/NetServerOptions.html">NetServerOptions</a></code> or <code><a href="../../apidocs/io/vertx/core/net/NetClientOptions.html">NetClientOptions</a></code> configuration.</p>
</div>
</div>
<div class="sect3">
<h4 id="_configuring_tls_protocol_versions">Configuring TLS protocol versions</h4>
<div class="paragraph">
<p>By default, the TLS configuration will use the following protocol versions: SSLv2Hello, TLSv1, TLSv1.1 and TLSv1.2. Protocol versions can be
configured by explicitly adding enabled protocols:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">Code not translatable</code></pre>
</div>
</div>
<div class="paragraph">
<p>Protocol versions can be specified on the <code><a href="../../apidocs/io/vertx/core/net/NetServerOptions.html">NetServerOptions</a></code> or <code><a href="../../apidocs/io/vertx/core/net/NetClientOptions.html">NetClientOptions</a></code> configuration.</p>
</div>
</div>
<div class="sect3">
<h4 id="_ssl_engine">SSL engine</h4>
<div class="paragraph">
<p>The engine implementation can be configured to use <a href="https://www.openssl.org">OpenSSL</a> instead of the JDK implementation.
OpenSSL provides better performances and CPU usage than the JDK engine, as well as JDK version independence.</p>
</div>
<div class="paragraph">
<p>The engine options to use is</p>
</div>
<div class="ulist">
<ul>
<li>
<p>the <code><a href="../../apidocs/io/vertx/core/net/TCPSSLOptions.html#getSslEngineOptions--">getSslEngineOptions</a></code> options when it is set</p>
</li>
<li>
<p>otherwise <code><a href="../../apidocs/io/vertx/core/net/JdkSSLEngineOptions.html">JdkSSLEngineOptions</a></code></p>
</li>
</ul>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">// Use JDK SSL engine
var options = NetServerOptions(
  ssl = true,
  keyStoreOptions = keyStoreOptions)

// Use JDK SSL engine explicitly
options = NetServerOptions(
  ssl = true,
  keyStoreOptions = keyStoreOptions,
  jdkSslEngineOptions = JdkSSLEngineOptions())

// Use OpenSSL engine
options = NetServerOptions(
  ssl = true,
  keyStoreOptions = keyStoreOptions,
  openSslEngineOptions = OpenSSLEngineOptions())</code></pre>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_server_name_indication_sni">Server Name Indication (SNI)</h4>
<div class="paragraph">
<p>Server Name Indication (SNI) is a TLS extension by which a client specifies a hostname attempting to connect: during
the TLS handshake the client gives a server name and the server can use it to respond with a specific certificate
for this server name instead of the default deployed certificate.
If the server requires client authentication the server can use a specific trusted CA certificate depending on the
indicated server name.</p>
</div>
<div class="paragraph">
<p>When SNI is active the server uses</p>
</div>
<div class="ulist">
<ul>
<li>
<p>the certificate CN or SAN DNS (Subject Alternative Name with DNS) to do an exact match, e.g <code>www.example.com</code></p>
</li>
<li>
<p>the certificate CN or SAN DNS certificate to match a wildcard name, e.g <code>*.example.com</code></p>
</li>
<li>
<p>otherwise the first certificate when the client does not present a server name or the presented server name cannot be matched</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>When the server additionally requires client authentication:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>if <code><a href="../../apidocs/io/vertx/core/net/JksOptions.html">JksOptions</a></code> were used to set the trust options
(<code><a href="../../apidocs/io/vertx/core/net/NetServerOptions.html#setTrustOptions-io.vertx.core.net.TrustOptions-">options</a></code>) then an exact match with the trust store
alias is done</p>
</li>
<li>
<p>otherwise the available CA certificates are used in the same way as if no SNI is in place</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>You can enable SNI on the server by setting <code><a href="../../apidocs/io/vertx/core/net/NetServerOptions.html#setSni-boolean-">setSni</a></code> to <code>true</code> and
configured the server with multiple key/certificate pairs.</p>
</div>
<div class="paragraph">
<p>Java KeyStore files or PKCS12 files can store multiple key/cert pairs out of the box.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var keyCertOptions = JksOptions(
  path = &quot;keystore.jks&quot;,
  password = &quot;wibble&quot;)

var netServer = vertx.createNetServer(NetServerOptions(
  keyStoreOptions = keyCertOptions,
  ssl = true,
  sni = true))</code></pre>
</div>
</div>
<div class="paragraph">
<p><code><a href="../../apidocs/io/vertx/core/net/PemKeyCertOptions.html">PemKeyCertOptions</a></code> can be configured to hold multiple entries:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var keyCertOptions = PemKeyCertOptions(
  keyPaths = listOf(&quot;default-key.pem&quot;, &quot;host1-key.pem&quot;, &quot;etc...&quot;),
  certPaths = listOf(&quot;default-cert.pem&quot;, &quot;host2-key.pem&quot;, &quot;etc...&quot;))

var netServer = vertx.createNetServer(NetServerOptions(
  pemKeyCertOptions = keyCertOptions,
  ssl = true,
  sni = true))</code></pre>
</div>
</div>
<div class="paragraph">
<p>The client implicitly sends the connecting host as an SNI server name for Fully Qualified Domain Name (FQDN).</p>
</div>
<div class="paragraph">
<p>You can provide an explicit server name when connecting a socket</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var client = vertx.createNetClient(NetClientOptions(
  trustStoreOptions = trustOptions,
  ssl = true))

// Connect to 'localhost' and present 'server.name' server name
client.connect(1234, &quot;localhost&quot;, &quot;server.name&quot;, { res -&gt;
  if (res.succeeded()) {
    println(&quot;Connected!&quot;)
    var socket = res.result()
  } else {
    println(&quot;Failed to connect: ${res.cause().getMessage()}&quot;)
  }
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>It can be used for different purposes:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>present a server name different than the server host</p>
</li>
<li>
<p>present a server name while connecting to an IP</p>
</li>
<li>
<p>force to present a server name when using shortname</p>
</li>
</ul>
</div>
</div>
<div class="sect3">
<h4 id="_application_layer_protocol_negotiation_alpn">Application-Layer Protocol Negotiation (ALPN)</h4>
<div class="paragraph">
<p>Application-Layer Protocol Negotiation (ALPN) is a TLS extension for application layer protocol negotiation. It is used by
HTTP/2: during the TLS handshake the client gives the list of application protocols it accepts and the server responds
with a protocol it supports.</p>
</div>
<div class="paragraph">
<p>If you are using Java 9, you are fine and you can use HTTP/2 out of the box without extra steps.</p>
</div>
<div class="paragraph">
<p>Java 8 does not supports ALPN out of the box, so ALPN should be enabled by other means:</p>
</div>
<div class="ulist">
<ul>
<li>
<p><em>OpenSSL</em> support</p>
</li>
<li>
<p><em>Jetty-ALPN</em> support</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>The engine options to use is</p>
</div>
<div class="ulist">
<ul>
<li>
<p>the <code><a href="../../apidocs/io/vertx/core/net/TCPSSLOptions.html#getSslEngineOptions--">getSslEngineOptions</a></code> options when it is set</p>
</li>
<li>
<p><code><a href="../../apidocs/io/vertx/core/net/JdkSSLEngineOptions.html">JdkSSLEngineOptions</a></code> when ALPN is available for JDK</p>
</li>
<li>
<p><code><a href="../../apidocs/io/vertx/core/net/OpenSSLEngineOptions.html">OpenSSLEngineOptions</a></code> when ALPN is available for OpenSSL</p>
</li>
<li>
<p>otherwise it fails</p>
</li>
</ul>
</div>
<div class="sect4">
<h5 id="_openssl_alpn_support">OpenSSL ALPN support</h5>
<div class="paragraph">
<p>OpenSSL provides native ALPN support.</p>
</div>
<div class="paragraph">
<p>OpenSSL requires to configure <code><a href="../../apidocs/io/vertx/core/net/TCPSSLOptions.html#setOpenSslEngineOptions-io.vertx.core.net.OpenSSLEngineOptions-">setOpenSslEngineOptions</a></code>
and use <a href="http://netty.io/wiki/forked-tomcat-native.html">netty-tcnative</a> jar on the classpath. Using tcnative may require
OpenSSL to be installed on your OS depending on the tcnative implementation.</p>
</div>
</div>
<div class="sect4">
<h5 id="_jetty_alpn_support">Jetty-ALPN support</h5>
<div class="paragraph">
<p>Jetty-ALPN is a small jar that overrides a few classes of Java 8 distribution to support ALPN.</p>
</div>
<div class="paragraph">
<p>The JVM must be started with the <em>alpn-boot-${version}.jar</em> in its <code>bootclasspath</code>:</p>
</div>
<div class="listingblock">
<div class="content">
<pre>-Xbootclasspath/p:/path/to/alpn-boot${version}.jar</pre>
</div>
</div>
<div class="paragraph">
<p>where ${version} depends on the JVM version, e.g. <em>8.1.7.v20160121</em> for <em>OpenJDK 1.8.0u74</em> . The complete
list is available on the <a href="https://www.eclipse.org/jetty/documentation/current/alpn-chapter.html">Jetty-ALPN page</a>.</p>
</div>
<div class="paragraph">
<p>The main drawback is that the version depends on the JVM.</p>
</div>
<div class="paragraph">
<p>To solve this problem the <em><a href="https://github.com/jetty-project/jetty-alpn-agent">Jetty ALPN agent</a></em> can be use instead. The agent is a JVM agent that will chose the correct
ALPN version for the JVM running it:</p>
</div>
<div class="listingblock">
<div class="content">
<pre>-javaagent:/path/to/alpn/agent</pre>
</div>
</div>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_using_a_proxy_for_client_connections">Using a proxy for client connections</h3>
<div class="paragraph">
<p>The <code><a href="../../apidocs/io/vertx/core/net/NetClient.html">NetClient</a></code> supports either a HTTP/1.x <em>CONNECT</em>, <em>SOCKS4a</em> or <em>SOCKS5</em> proxy.</p>
</div>
<div class="paragraph">
<p>The proxy can be configured in the <code><a href="../../apidocs/io/vertx/core/net/NetClientOptions.html">NetClientOptions</a></code> by setting a
<code><a href="../../apidocs/io/vertx/core/net/ProxyOptions.html">ProxyOptions</a></code> object containing proxy type, hostname, port and optionally username and password.</p>
</div>
<div class="paragraph">
<p>Here&#8217;s an example:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var options = NetClientOptions(
  proxyOptions = ProxyOptions(
    type = ProxyType.SOCKS5,
    host = &quot;localhost&quot;,
    port = 1080,
    username = &quot;username&quot;,
    password = &quot;secret&quot;))
var client = vertx.createNetClient(options)</code></pre>
</div>
</div>
<div class="paragraph">
<p>The DNS resolution is always done on the proxy server, to achieve the functionality of a SOCKS4 client, it is necessary
to resolve the DNS address locally.</p>
</div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_writing_http_servers_and_clients">Writing HTTP servers and clients</h2>
<div class="sectionbody">
<div class="paragraph">
<p>Vert.x allows you to easily write non blocking HTTP clients and servers.</p>
</div>
<div class="paragraph">
<p>Vert.x supports the HTTP/1.0, HTTP/1.1 and HTTP/2 protocols.</p>
</div>
<div class="paragraph">
<p>The base API for HTTP is the same for HTTP/1.x and HTTP/2, specific API features are available for dealing with the
HTTP/2 protocol.</p>
</div>
<div class="sect2">
<h3 id="_creating_an_http_server">Creating an HTTP Server</h3>
<div class="paragraph">
<p>The simplest way to create an HTTP server, using all default options is as follows:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var server = vertx.createHttpServer()</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_configuring_an_http_server">Configuring an HTTP server</h3>
<div class="paragraph">
<p>If you don&#8217;t want the default, a server can be configured by passing in a <code><a href="../../apidocs/io/vertx/core/http/HttpServerOptions.html">HttpServerOptions</a></code>
instance when creating it:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var options = HttpServerOptions(
  maxWebSocketFrameSize = 1000000)

var server = vertx.createHttpServer(options)</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_configuring_an_http_2_server">Configuring an HTTP/2 server</h3>
<div class="paragraph">
<p>Vert.x supports HTTP/2 over TLS <code>h2</code> and over TCP <code>h2c</code>.</p>
</div>
<div class="ulist">
<ul>
<li>
<p><code>h2</code> identifies the HTTP/2 protocol when used over TLS negotiated by <a href="https://en.wikipedia.org/wiki/Application-Layer_Protocol_Negotiation">Application-Layer Protocol Negotiation</a> (ALPN)</p>
</li>
<li>
<p><code>h2c</code> identifies the HTTP/2 protocol when using in clear text over TCP, such connections are established either with
an HTTP/1.1 upgraded request or directly</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>To handle <code>h2</code> requests, TLS must be enabled along with <code><a href="../../apidocs/io/vertx/core/http/HttpServerOptions.html#setUseAlpn-boolean-">setUseAlpn</a></code>:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var options = HttpServerOptions(
  useAlpn = true,
  ssl = true,
  keyStoreOptions = JksOptions(
    path = &quot;/path/to/my/keystore&quot;))

var server = vertx.createHttpServer(options)</code></pre>
</div>
</div>
<div class="paragraph">
<p>ALPN is a TLS extension that negotiates the protocol before the client and the server start to exchange data.</p>
</div>
<div class="paragraph">
<p>Clients that don&#8217;t support ALPN will still be able to do a <em>classic</em> SSL handshake.</p>
</div>
<div class="paragraph">
<p>ALPN will usually agree on the <code>h2</code> protocol, although <code>http/1.1</code> can be used if the server or the client decides
so.</p>
</div>
<div class="paragraph">
<p>To handle <code>h2c</code> requests, TLS must be disabled, the server will upgrade to HTTP/2 any request HTTP/1.1 that wants to
upgrade to HTTP/2. It will also accept a direct <code>h2c</code> connection beginning with the <code>PRI * HTTP/2.0\r\nSM\r\n</code> preface.</p>
</div>
<div class="admonitionblock warning">
<table>
<tr>
<td class="icon">
<div class="title">Warning</div>
</td>
<td class="content">
most browsers won&#8217;t support <code>h2c</code>, so for serving web sites you should use <code>h2</code> and not <code>h2c</code>.
</td>
</tr>
</table>
</div>
<div class="paragraph">
<p>When a server accepts an HTTP/2 connection, it sends to the client its <code><a href="../../apidocs/io/vertx/core/http/HttpServerOptions.html#getInitialSettings--">initial settings</a></code>.
The settings define how the client can use the connection, the default initial settings for a server are:</p>
</div>
<div class="ulist">
<ul>
<li>
<p><code><a href="../../apidocs/io/vertx/core/http/Http2Settings.html#getMaxConcurrentStreams--">getMaxConcurrentStreams</a></code>: <code>100</code> as recommended by the HTTP/2 RFC</p>
</li>
<li>
<p>the default HTTP/2 settings values for the others</p>
</li>
</ul>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<div class="title">Note</div>
</td>
<td class="content">
Worker Verticles are not compatible with HTTP/2
</td>
</tr>
</table>
</div>
</div>
<div class="sect2">
<h3 id="_logging_network_server_activity">Logging network server activity</h3>
<div class="paragraph">
<p>For debugging purposes, network activity can be logged.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var options = HttpServerOptions(
  logActivity = true)

var server = vertx.createHttpServer(options)</code></pre>
</div>
</div>
<div class="paragraph">
<p>See the chapter on <a href="#logging_network_activity">logging network activity</a> for a detailed explanation.</p>
</div>
</div>
<div class="sect2">
<h3 id="_start_the_server_listening_2">Start the Server Listening</h3>
<div class="paragraph">
<p>To tell the server to listen for incoming requests you use one of the <code><a href="../../apidocs/io/vertx/core/http/HttpServer.html#listen--">listen</a></code>
alternatives.</p>
</div>
<div class="paragraph">
<p>To tell the server to listen at the host and port as specified in the options:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var server = vertx.createHttpServer()
server.listen()</code></pre>
</div>
</div>
<div class="paragraph">
<p>Or to specify the host and port in the call to listen, ignoring what is configured in the options:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var server = vertx.createHttpServer()
server.listen(8080, &quot;myhost.com&quot;)</code></pre>
</div>
</div>
<div class="paragraph">
<p>The default host is <code>0.0.0.0</code> which means 'listen on all available addresses' and the default port is <code>80</code>.</p>
</div>
<div class="paragraph">
<p>The actual bind is asynchronous so the server might not actually be listening until some time <strong>after</strong> the call to
listen has returned.</p>
</div>
<div class="paragraph">
<p>If you want to be notified when the server is actually listening you can provide a handler to the <code>listen</code> call.
For example:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var server = vertx.createHttpServer()
server.listen(8080, &quot;myhost.com&quot;, { res -&gt;
  if (res.succeeded()) {
    println(&quot;Server is now listening!&quot;)
  } else {
    println(&quot;Failed to bind!&quot;)
  }
})</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_getting_notified_of_incoming_requests">Getting notified of incoming requests</h3>
<div class="paragraph">
<p>To be notified when a request arrives you need to set a <code><a href="../../apidocs/io/vertx/core/http/HttpServer.html#requestHandler-io.vertx.core.Handler-">requestHandler</a></code>:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var server = vertx.createHttpServer()
server.requestHandler({ request -&gt;
  // Handle the request in here
})</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_handling_requests">Handling requests</h3>
<div class="paragraph">
<p>When a request arrives, the request handler is called passing in an instance of <code><a href="../../apidocs/io/vertx/core/http/HttpServerRequest.html">HttpServerRequest</a></code>.
This object represents the server side HTTP request.</p>
</div>
<div class="paragraph">
<p>The handler is called when the headers of the request have been fully read.</p>
</div>
<div class="paragraph">
<p>If the request contains a body, that body will arrive at the server some time after the request handler has been called.</p>
</div>
<div class="paragraph">
<p>The server request object allows you to retrieve the <code><a href="../../apidocs/io/vertx/core/http/HttpServerRequest.html#uri--">uri</a></code>,
<code><a href="../../apidocs/io/vertx/core/http/HttpServerRequest.html#path--">path</a></code>, <code><a href="../../apidocs/io/vertx/core/http/HttpServerRequest.html#params--">params</a></code> and
<code><a href="../../apidocs/io/vertx/core/http/HttpServerRequest.html#headers--">headers</a></code>, amongst other things.</p>
</div>
<div class="paragraph">
<p>Each server request object is associated with one server response object. You use
<code><a href="../../apidocs/io/vertx/core/http/HttpServerRequest.html#response--">response</a></code> to get a reference to the <code><a href="../../apidocs/io/vertx/core/http/HttpServerResponse.html">HttpServerResponse</a></code>
object.</p>
</div>
<div class="paragraph">
<p>Here&#8217;s a simple example of a server handling a request and replying with "hello world" to it.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">vertx.createHttpServer().requestHandler({ request -&gt;
  request.response().end(&quot;Hello world&quot;)
}).listen(8080)</code></pre>
</div>
</div>
<div class="sect3">
<h4 id="_request_version">Request version</h4>
<div class="paragraph">
<p>The version of HTTP specified in the request can be retrieved with <code><a href="../../apidocs/io/vertx/core/http/HttpServerRequest.html#version--">version</a></code></p>
</div>
</div>
<div class="sect3">
<h4 id="_request_method">Request method</h4>
<div class="paragraph">
<p>Use <code><a href="../../apidocs/io/vertx/core/http/HttpServerRequest.html#method--">method</a></code> to retrieve the HTTP method of the request.
(i.e. whether it&#8217;s GET, POST, PUT, DELETE, HEAD, OPTIONS, etc).</p>
</div>
</div>
<div class="sect3">
<h4 id="_request_uri">Request URI</h4>
<div class="paragraph">
<p>Use <code><a href="../../apidocs/io/vertx/core/http/HttpServerRequest.html#uri--">uri</a></code> to retrieve the URI of the request.</p>
</div>
<div class="paragraph">
<p>Note that this is the actual URI as passed in the HTTP request, and it&#8217;s almost always a relative URI.</p>
</div>
<div class="paragraph">
<p>The URI is as defined in <a href="https://www.w3.org/Protocols/rfc2616/rfc2616-sec5.html">Section 5.1.2 of the HTTP specification - Request-URI</a></p>
</div>
</div>
<div class="sect3">
<h4 id="_request_path">Request path</h4>
<div class="paragraph">
<p>Use <code><a href="../../apidocs/io/vertx/core/http/HttpServerRequest.html#path--">path</a></code> to return the path part of the URI</p>
</div>
<div class="paragraph">
<p>For example, if the request URI was:</p>
</div>
<div class="paragraph">
<p>a/b/c/page.html?param1=abc&amp;param2=xyz</p>
</div>
<div class="paragraph">
<p>Then the path would be</p>
</div>
<div class="paragraph">
<p>/a/b/c/page.html</p>
</div>
</div>
<div class="sect3">
<h4 id="_request_query">Request query</h4>
<div class="paragraph">
<p>Use <code><a href="../../apidocs/io/vertx/core/http/HttpServerRequest.html#query--">query</a></code> to return the query part of the URI</p>
</div>
<div class="paragraph">
<p>For example, if the request URI was:</p>
</div>
<div class="paragraph">
<p>a/b/c/page.html?param1=abc&amp;param2=xyz</p>
</div>
<div class="paragraph">
<p>Then the query would be</p>
</div>
<div class="paragraph">
<p>param1=abc&amp;param2=xyz</p>
</div>
</div>
<div class="sect3">
<h4 id="_request_headers">Request headers</h4>
<div class="paragraph">
<p>Use <code><a href="../../apidocs/io/vertx/core/http/HttpServerRequest.html#headers--">headers</a></code> to return the headers of the HTTP request.</p>
</div>
<div class="paragraph">
<p>This returns an instance of <code><a href="../../apidocs/io/vertx/core/MultiMap.html">MultiMap</a></code> - which is like a normal Map or Hash but allows multiple
values for the same key - this is because HTTP allows multiple header values with the same key.</p>
</div>
<div class="paragraph">
<p>It also has case-insensitive keys, that means you can do the following:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var headers = request.headers()

// Get the User-Agent:
println(&quot;User agent is ${headers.get(&quot;user-agent&quot;)}&quot;)

// You can also do this and get the same result:
println(&quot;User agent is ${headers.get(&quot;User-Agent&quot;)}&quot;)</code></pre>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_request_host">Request host</h4>
<div class="paragraph">
<p>Use <code><a href="../../apidocs/io/vertx/core/http/HttpServerRequest.html#host--">host</a></code> to return the host of the HTTP request.</p>
</div>
<div class="paragraph">
<p>For HTTP/1.x requests the <code>host</code> header is returned, for HTTP/1 requests the <code>:authority</code> pseudo header is returned.</p>
</div>
</div>
<div class="sect3">
<h4 id="_request_parameters">Request parameters</h4>
<div class="paragraph">
<p>Use <code><a href="../../apidocs/io/vertx/core/http/HttpServerRequest.html#params--">params</a></code> to return the parameters of the HTTP request.</p>
</div>
<div class="paragraph">
<p>Just like <code><a href="../../apidocs/io/vertx/core/http/HttpServerRequest.html#headers--">headers</a></code> this returns an instance of <code><a href="../../apidocs/io/vertx/core/MultiMap.html">MultiMap</a></code>
as there can be more than one parameter with the same name.</p>
</div>
<div class="paragraph">
<p>Request parameters are sent on the request URI, after the path. For example if the URI was:</p>
</div>
<div class="paragraph">
<p>/page.html?param1=abc&amp;param2=xyz</p>
</div>
<div class="paragraph">
<p>Then the parameters would contain the following:</p>
</div>
<div class="listingblock">
<div class="content">
<pre>param1: 'abc'
param2: 'xyz</pre>
</div>
</div>
<div class="paragraph">
<p>Note that these request parameters are retrieved from the URL of the request. If you have form attributes that
have been sent as part of the submission of an HTML form submitted in the body of a <code>multi-part/form-data</code> request
then they will not appear in the params here.</p>
</div>
</div>
<div class="sect3">
<h4 id="_remote_address">Remote address</h4>
<div class="paragraph">
<p>The address of the sender of the request can be retrieved with <code><a href="../../apidocs/io/vertx/core/http/HttpServerRequest.html#remoteAddress--">remoteAddress</a></code>.</p>
</div>
</div>
<div class="sect3">
<h4 id="_absolute_uri">Absolute URI</h4>
<div class="paragraph">
<p>The URI passed in an HTTP request is usually relative. If you wish to retrieve the absolute URI corresponding
to the request, you can get it with <code><a href="../../apidocs/io/vertx/core/http/HttpServerRequest.html#absoluteURI--">absoluteURI</a></code></p>
</div>
</div>
<div class="sect3">
<h4 id="_end_handler">End handler</h4>
<div class="paragraph">
<p>The <code><a href="../../apidocs/io/vertx/core/http/HttpServerRequest.html#endHandler-io.vertx.core.Handler-">endHandler</a></code> of the request is invoked when the entire request,
including any body has been fully read.</p>
</div>
</div>
<div class="sect3">
<h4 id="_reading_data_from_the_request_body">Reading Data from the Request Body</h4>
<div class="paragraph">
<p>Often an HTTP request contains a body that we want to read. As previously mentioned the request handler is called
when just the headers of the request have arrived so the request object does not have a body at that point.</p>
</div>
<div class="paragraph">
<p>This is because the body may be very large (e.g. a file upload) and we don&#8217;t generally want to buffer the entire
body in memory before handing it to you, as that could cause the server to exhaust available memory.</p>
</div>
<div class="paragraph">
<p>To receive the body, you can use the <code><a href="../../apidocs/io/vertx/core/http/HttpServerRequest.html#handler-io.vertx.core.Handler-">handler</a></code>  on the request,
this will get called every time a chunk of the request body arrives. Here&#8217;s an example:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">request.handler({ buffer -&gt;
  println(&quot;I have received a chunk of the body of length ${buffer.length()}&quot;)
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>The object passed into the handler is a <code><a href="../../apidocs/io/vertx/core/buffer/Buffer.html">Buffer</a></code>, and the handler can be called
multiple times as data arrives from the network, depending on the size of the body.</p>
</div>
<div class="paragraph">
<p>In some cases (e.g. if the body is small) you will want to aggregate the entire body in memory, so you could do
the aggregation yourself as follows:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">// Create an empty buffer
var totalBuffer = Buffer.buffer()

request.handler({ buffer -&gt;
  println(&quot;I have received a chunk of the body of length ${buffer.length()}&quot;)
  totalBuffer.appendBuffer(buffer)
})

request.endHandler({ v -&gt;
  println(&quot;Full body received, length = ${totalBuffer.length()}&quot;)
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>This is such a common case, that Vert.x provides a <code><a href="../../apidocs/io/vertx/core/http/HttpServerRequest.html#bodyHandler-io.vertx.core.Handler-">bodyHandler</a></code> to do this
for you. The body handler is called once when all the body has been received:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">request.bodyHandler({ totalBuffer -&gt;
  println(&quot;Full body received, length = ${totalBuffer.length()}&quot;)
})</code></pre>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_streaming_requests">Streaming requests</h4>
<div class="paragraph">
<p>The request object is a <code><a href="../../apidocs/io/vertx/core/streams/ReadStream.html">ReadStream</a></code> so you can pipe the request body to any
<code><a href="../../apidocs/io/vertx/core/streams/WriteStream.html">WriteStream</a></code> instance.</p>
</div>
<div class="paragraph">
<p>See the chapter on <a href="#streams">streams</a> for a detailed explanation.</p>
</div>
</div>
<div class="sect3">
<h4 id="_handling_html_forms">Handling HTML forms</h4>
<div class="paragraph">
<p>HTML forms can be submitted with either a content type of <code>application/x-www-form-urlencoded</code> or <code>multipart/form-data</code>.</p>
</div>
<div class="paragraph">
<p>For url encoded forms, the form attributes are encoded in the url, just like normal query parameters.</p>
</div>
<div class="paragraph">
<p>For multi-part forms they are encoded in the request body, and as such are not available until the entire body
has been read from the wire.</p>
</div>
<div class="paragraph">
<p>Multi-part forms can also contain file uploads.</p>
</div>
<div class="paragraph">
<p>If you want to retrieve the attributes of a multi-part form you should tell Vert.x that you expect to receive
such a form <strong>before</strong> any of the body is read by calling <code><a href="../../apidocs/io/vertx/core/http/HttpServerRequest.html#setExpectMultipart-boolean-">setExpectMultipart</a></code>
with true, and then you should retrieve the actual attributes using <code><a href="../../apidocs/io/vertx/core/http/HttpServerRequest.html#formAttributes--">formAttributes</a></code>
once the entire body has been read:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">server.requestHandler({ request -&gt;
  request.setExpectMultipart(true)
  request.endHandler({ v -&gt;
    // The body has now been fully read, so retrieve the form attributes
    var formAttributes = request.formAttributes()
  })
})</code></pre>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_handling_form_file_uploads">Handling form file uploads</h4>
<div class="paragraph">
<p>Vert.x can also handle file uploads which are encoded in a multi-part request body.</p>
</div>
<div class="paragraph">
<p>To receive file uploads you tell Vert.x to expect a multi-part form and set an
<code><a href="../../apidocs/io/vertx/core/http/HttpServerRequest.html#uploadHandler-io.vertx.core.Handler-">uploadHandler</a></code> on the request.</p>
</div>
<div class="paragraph">
<p>This handler will be called once for every
upload that arrives on the server.</p>
</div>
<div class="paragraph">
<p>The object passed into the handler is a <code><a href="../../apidocs/io/vertx/core/http/HttpServerFileUpload.html">HttpServerFileUpload</a></code> instance.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">server.requestHandler({ request -&gt;
  request.setExpectMultipart(true)
  request.uploadHandler({ upload -&gt;
    println(&quot;Got a file upload ${upload.name()}&quot;)
  })
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>File uploads can be large we don&#8217;t provide the entire upload in a single buffer as that might result in memory
exhaustion, instead, the upload data is received in chunks:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">request.uploadHandler({ upload -&gt;
  upload.handler({ chunk -&gt;
    println(&quot;Received a chunk of the upload of length ${chunk.length()}&quot;)
  })
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>The upload object is a <code><a href="../../apidocs/io/vertx/core/streams/ReadStream.html">ReadStream</a></code> so you can pipe the request body to any
<code><a href="../../apidocs/io/vertx/core/streams/WriteStream.html">WriteStream</a></code> instance. See the chapter on <a href="#streams">streams</a> for a
detailed explanation.</p>
</div>
<div class="paragraph">
<p>If you just want to upload the file to disk somewhere you can use <code><a href="../../apidocs/io/vertx/core/http/HttpServerFileUpload.html#streamToFileSystem-java.lang.String-">streamToFileSystem</a></code>:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">request.uploadHandler({ upload -&gt;
  upload.streamToFileSystem(&quot;myuploads_directory/${upload.filename()}&quot;)
})</code></pre>
</div>
</div>
<div class="admonitionblock warning">
<table>
<tr>
<td class="icon">
<div class="title">Warning</div>
</td>
<td class="content">
Make sure you check the filename in a production system to avoid malicious clients uploading files
to arbitrary places on your filesystem. See <a href="#_security_notes">security notes</a> for more information.
</td>
</tr>
</table>
</div>
</div>
<div class="sect3">
<h4 id="_handling_cookies">Handling cookies</h4>
<div class="paragraph">
<p>You use <code><a href="../../apidocs/io/vertx/core/http/HttpServerRequest.html#getCookie-java.lang.String-">getCookie</a></code> to retrieve
a cookie by name, or use <code><a href="../../apidocs/io/vertx/core/http/HttpServerRequest.html#cookieMap--">cookieMap</a></code> to retrieve all the cookies.</p>
</div>
<div class="paragraph">
<p>To remove a cookie, use <code><a href="../../apidocs/io/vertx/core/http/HttpServerResponse.html#removeCookie-java.lang.String-">removeCookie</a></code>.</p>
</div>
<div class="paragraph">
<p>To add a cookie use <code><a href="../../apidocs/io/vertx/core/http/HttpServerResponse.html#addCookie-io.vertx.core.http.Cookie-">addCookie</a></code>.</p>
</div>
<div class="paragraph">
<p>The set of cookies will be written back in the response automatically when the response headers are written so the
browser can store them.</p>
</div>
<div class="paragraph">
<p>Cookies are described by instances of <code><a href="../../apidocs/io/vertx/core/http/Cookie.html">Cookie</a></code>. This allows you to retrieve the name,
value, domain, path and other normal cookie properties.</p>
</div>
<div class="paragraph">
<p>Same Site Cookies let servers require that a cookie shouldn&#8217;t be sent with cross-site (where Site is defined by the
registrable domain) requests, which provides some protection against cross-site request forgery attacks. This kind
of cookies are enabled using the setter: <code><a href="../../apidocs/io/vertx/core/http/Cookie.html#setSameSite-io.vertx.core.http.CookieSameSite-">setSameSite</a></code>.</p>
</div>
<div class="paragraph">
<p>Same site cookies can have one of 3 values:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>None - The browser will send cookies with both cross-site requests and same-site requests.</p>
</li>
<li>
<p>Strict - he browser will only send cookies for same-site requests (requests originating from the site that set the
cookie). If the request originated from a different URL than the URL of the current location, none of the cookies
tagged with the Strict attribute will be included.</p>
</li>
<li>
<p>Lax - Same-site cookies are withheld on cross-site subrequests, such as calls to load images or frames, but will be
sent when a user navigates to the URL from an external site; for example, by following a link.</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>Here&#8217;s an example of querying and adding cookies:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var someCookie = request.getCookie(&quot;mycookie&quot;)
var cookieValue = someCookie.getValue()

// Do something with cookie...

// Add a cookie - this will get written back in the response automatically
request.response().addCookie(Cookie.cookie(&quot;othercookie&quot;, &quot;somevalue&quot;))</code></pre>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_handling_compressed_body">Handling compressed body</h4>
<div class="paragraph">
<p>Vert.x can handle compressed body payloads which are encoded by the client with the <em>deflate</em> or <em>gzip</em>
algorithms.</p>
</div>
<div class="paragraph">
<p>To enable decompression set <code><a href="../../apidocs/io/vertx/core/http/HttpServerOptions.html#setDecompressionSupported-boolean-">setDecompressionSupported</a></code> on the
options when creating the server.</p>
</div>
<div class="paragraph">
<p>By default decompression is disabled.</p>
</div>
</div>
<div class="sect3">
<h4 id="_receiving_custom_http_2_frames">Receiving custom HTTP/2 frames</h4>
<div class="paragraph">
<p>HTTP/2 is a framed protocol with various frames for the HTTP request/response model. The protocol allows other kind
of frames to be sent and received.</p>
</div>
<div class="paragraph">
<p>To receive custom frames, you can use the <code><a href="../../apidocs/io/vertx/core/http/HttpServerRequest.html#customFrameHandler-io.vertx.core.Handler-">customFrameHandler</a></code> on the request,
this will get called every time a custom frame arrives. Here&#8217;s an example:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">request.customFrameHandler({ frame -&gt;

  println(&quot;Received a frame type=${frame.type()} payload${frame.payload().toString()}&quot;)
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>HTTP/2 frames are not subject to flow control - the frame handler will be called immediatly when a
custom frame is received whether the request is paused or is not</p>
</div>
</div>
<div class="sect3">
<h4 id="_non_standard_http_methods">Non standard HTTP methods</h4>
<div class="paragraph">
<p>The <code><a href="../../apidocs/io/vertx/core/http/HttpMethod.html#OTHER">OTHER</a></code> HTTP method is used for non standard methods, in this case
<code><a href="../../apidocs/io/vertx/core/http/HttpServerRequest.html#rawMethod--">rawMethod</a></code> returns the HTTP method as sent by the client.</p>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_sending_back_responses">Sending back responses</h3>
<div class="paragraph">
<p>The server response object is an instance of <code><a href="../../apidocs/io/vertx/core/http/HttpServerResponse.html">HttpServerResponse</a></code> and is obtained from the
request with <code><a href="../../apidocs/io/vertx/core/http/HttpServerRequest.html#response--">response</a></code>.</p>
</div>
<div class="paragraph">
<p>You use the response object to write a response back to the HTTP client.</p>
</div>
<div class="sect3">
<h4 id="_setting_status_code_and_message">Setting status code and message</h4>
<div class="paragraph">
<p>The default HTTP status code for a response is <code>200</code>, representing <code>OK</code>.</p>
</div>
<div class="paragraph">
<p>Use <code><a href="../../apidocs/io/vertx/core/http/HttpServerResponse.html#setStatusCode-int-">setStatusCode</a></code> to set a different code.</p>
</div>
<div class="paragraph">
<p>You can also specify a custom status message with <code><a href="../../apidocs/io/vertx/core/http/HttpServerResponse.html#setStatusMessage-java.lang.String-">setStatusMessage</a></code>.</p>
</div>
<div class="paragraph">
<p>If you don&#8217;t specify a status message, the default one corresponding to the status code will be used.</p>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<div class="title">Note</div>
</td>
<td class="content">
for HTTP/2 the status won&#8217;t be present in the response since the protocol won&#8217;t transmit the message
to the client
</td>
</tr>
</table>
</div>
</div>
<div class="sect3">
<h4 id="_writing_http_responses">Writing HTTP responses</h4>
<div class="paragraph">
<p>To write data to an HTTP response, you use one of the <code><a href="../../apidocs/io/vertx/core/http/HttpServerResponse.html#write-io.vertx.core.buffer.Buffer-">write</a></code> operations.</p>
</div>
<div class="paragraph">
<p>These can be invoked multiple times before the response is ended. They can be invoked in a few ways:</p>
</div>
<div class="paragraph">
<p>With a single buffer:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var response = request.response()
response.write(buffer)</code></pre>
</div>
</div>
<div class="paragraph">
<p>With a string. In this case the string will encoded using UTF-8 and the result written to the wire.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var response = request.response()
response.write(&quot;hello world!&quot;)</code></pre>
</div>
</div>
<div class="paragraph">
<p>With a string and an encoding. In this case the string will encoded using the specified encoding and the
result written to the wire.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var response = request.response()
response.write(&quot;hello world!&quot;, &quot;UTF-16&quot;)</code></pre>
</div>
</div>
<div class="paragraph">
<p>Writing to a response is asynchronous and always returns immediately after the write has been queued.</p>
</div>
<div class="paragraph">
<p>If you are just writing a single string or buffer to the HTTP response you can write it and end the response in a
single call to the <code><a href="../../apidocs/io/vertx/core/http/HttpServerResponse.html#end-java.lang.String-">end</a></code></p>
</div>
<div class="paragraph">
<p>The first call to write results in the response header being written to the response. Consequently, if you are
not using HTTP chunking then you must set the <code>Content-Length</code> header before writing to the response, since it will
be too late otherwise. If you are using HTTP chunking you do not have to worry.</p>
</div>
</div>
<div class="sect3">
<h4 id="_ending_http_responses">Ending HTTP responses</h4>
<div class="paragraph">
<p>Once you have finished with the HTTP response you should <code><a href="../../apidocs/io/vertx/core/streams/WriteStream.html#end-io.vertx.core.Handler-">end</a></code> it.</p>
</div>
<div class="paragraph">
<p>This can be done in several ways:</p>
</div>
<div class="paragraph">
<p>With no arguments, the response is simply ended.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var response = request.response()
response.write(&quot;hello world!&quot;)
response.end()</code></pre>
</div>
</div>
<div class="paragraph">
<p>It can also be called with a string or buffer in the same way <code>write</code> is called. In this case it&#8217;s just the same as
calling write with a string or buffer followed by calling end with no arguments. For example:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var response = request.response()
response.end(&quot;hello world!&quot;)</code></pre>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_closing_the_underlying_connection">Closing the underlying connection</h4>
<div class="paragraph">
<p>You can close the underlying TCP connection with <code><a href="../../apidocs/io/vertx/core/http/HttpServerResponse.html#close--">close</a></code>.</p>
</div>
<div class="paragraph">
<p>Non keep-alive connections will be automatically closed by Vert.x when the response is ended.</p>
</div>
<div class="paragraph">
<p>Keep-alive connections are not automatically closed by Vert.x by default. If you want keep-alive connections to be
closed after an idle time, then you configure <code><a href="../../apidocs/io/vertx/core/http/HttpServerOptions.html#setIdleTimeout-int-">setIdleTimeout</a></code>.</p>
</div>
<div class="paragraph">
<p>HTTP/2 connections send a {@literal GOAWAY} frame before closing the response.</p>
</div>
</div>
<div class="sect3">
<h4 id="_setting_response_headers">Setting response headers</h4>
<div class="paragraph">
<p>HTTP response headers can be added to the response by adding them directly to the
<code><a href="../../apidocs/io/vertx/core/http/HttpServerResponse.html#headers--">headers</a></code>:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var response = request.response()
var headers = response.headers()
headers.set(&quot;content-type&quot;, &quot;text/html&quot;)
headers.set(&quot;other-header&quot;, &quot;wibble&quot;)</code></pre>
</div>
</div>
<div class="paragraph">
<p>Or you can use <code><a href="../../apidocs/io/vertx/core/http/HttpServerResponse.html#putHeader-java.lang.String-java.lang.String-">putHeader</a></code></p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var response = request.response()
response.putHeader(&quot;content-type&quot;, &quot;text/html&quot;).putHeader(&quot;other-header&quot;, &quot;wibble&quot;)</code></pre>
</div>
</div>
<div class="paragraph">
<p>Headers must all be added before any parts of the response body are written.</p>
</div>
</div>
<div class="sect3">
<h4 id="_chunked_http_responses_and_trailers">Chunked HTTP responses and trailers</h4>
<div class="paragraph">
<p>Vert.x supports <a href="https://en.wikipedia.org/wiki/Chunked_transfer_encoding">HTTP Chunked Transfer Encoding</a>.</p>
</div>
<div class="paragraph">
<p>This allows the HTTP response body to be written in chunks, and is normally used when a large response body is
being streamed to a client and the total size is not known in advance.</p>
</div>
<div class="paragraph">
<p>You put the HTTP response into chunked mode as follows:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var response = request.response()
response.setChunked(true)</code></pre>
</div>
</div>
<div class="paragraph">
<p>Default is non-chunked. When in chunked mode, each call to one of the <code><a href="../../apidocs/io/vertx/core/http/HttpServerResponse.html#write-io.vertx.core.buffer.Buffer-">write</a></code>
methods will result in a new HTTP chunk being written out.</p>
</div>
<div class="paragraph">
<p>When in chunked mode you can also write HTTP response trailers to the response. These are actually written in
the final chunk of the response.</p>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<div class="title">Note</div>
</td>
<td class="content">
chunked response has no effect for an HTTP/2 stream
</td>
</tr>
</table>
</div>
<div class="paragraph">
<p>To add trailers to the response, add them directly to the <code><a href="../../apidocs/io/vertx/core/http/HttpServerResponse.html#trailers--">trailers</a></code>.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var response = request.response()
response.setChunked(true)
var trailers = response.trailers()
trailers.set(&quot;X-wibble&quot;, &quot;woobble&quot;).set(&quot;X-quux&quot;, &quot;flooble&quot;)</code></pre>
</div>
</div>
<div class="paragraph">
<p>Or use <code><a href="../../apidocs/io/vertx/core/http/HttpServerResponse.html#putTrailer-java.lang.String-java.lang.String-">putTrailer</a></code>.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var response = request.response()
response.setChunked(true)
response.putTrailer(&quot;X-wibble&quot;, &quot;woobble&quot;).putTrailer(&quot;X-quux&quot;, &quot;flooble&quot;)</code></pre>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_serving_files_directly_from_disk_or_the_classpath">Serving files directly from disk or the classpath</h4>
<div class="paragraph">
<p>If you were writing a web server, one way to serve a file from disk would be to open it as an <code><a href="../../apidocs/io/vertx/core/file/AsyncFile.html">AsyncFile</a></code>
and pipe it to the HTTP response.</p>
</div>
<div class="paragraph">
<p>Or you could load it it one go using <code><a href="../../apidocs/io/vertx/core/file/FileSystem.html#readFile-java.lang.String-io.vertx.core.Handler-">readFile</a></code> and write it straight to the response.</p>
</div>
<div class="paragraph">
<p>Alternatively, Vert.x provides a method which allows you to serve a file from disk or the filesystem to an HTTP response
in one operation.
Where supported by the underlying operating system this may result in the OS directly transferring bytes from the
file to the socket without being copied through user-space at all.</p>
</div>
<div class="paragraph">
<p>This is done by using <code><a href="../../apidocs/io/vertx/core/http/HttpServerResponse.html#sendFile-java.lang.String-">sendFile</a></code>, and is usually more efficient for large
files, but may be slower for small files.</p>
</div>
<div class="paragraph">
<p>Here&#8217;s a very simple web server that serves files from the file system using sendFile:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">vertx.createHttpServer().requestHandler({ request -&gt;
  var file = &quot;&quot;
  if (request.path() == &quot;/&quot;) {
    file = &quot;index.html&quot;
  } else if (!request.path().contains(&quot;..&quot;)) {
    file = request.path()
  }
  request.response().sendFile(&quot;web/${file}&quot;)
}).listen(8080)</code></pre>
</div>
</div>
<div class="paragraph">
<p>Sending a file is asynchronous and may not complete until some time after the call has returned. If you want to
be notified when the file has been writen you can use <code><a href="../../apidocs/io/vertx/core/http/HttpServerResponse.html#sendFile-java.lang.String-io.vertx.core.Handler-">sendFile</a></code></p>
</div>
<div class="paragraph">
<p>Please see the chapter about <a href="#classpath">serving files from the classpath</a> for restrictions about the classpath resolution or disabling it.</p>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<div class="title">Note</div>
</td>
<td class="content">
If you use <code>sendFile</code> while using HTTPS it will copy through user-space, since if the kernel is copying data
directly from disk to socket it doesn&#8217;t give us an opportunity to apply any encryption.
</td>
</tr>
</table>
</div>
<div class="admonitionblock warning">
<table>
<tr>
<td class="icon">
<div class="title">Warning</div>
</td>
<td class="content">
If you&#8217;re going to write web servers directly using Vert.x be careful that users cannot exploit the
path to access files outside the directory from which you want to serve them or the classpath It may be safer instead to use
Vert.x Web.
</td>
</tr>
</table>
</div>
<div class="paragraph">
<p>When there is a need to serve just a segment of a file, say starting from a given byte, you can achieve this by doing:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">vertx.createHttpServer().requestHandler({ request -&gt;
  var offset = 0
  try {
    offset = Long.parseLong(request.getParam(&quot;start&quot;))
  } catch(e: Exception) {
    // error handling...
  }


  var end = Long.MAX_VALUE
  try {
    end = Long.parseLong(request.getParam(&quot;end&quot;))
  } catch(e: Exception) {
    // error handling...
  }


  request.response().sendFile(&quot;web/mybigfile.txt&quot;, offset, end)
}).listen(8080)</code></pre>
</div>
</div>
<div class="paragraph">
<p>You are not required to supply the length if you want to send a file starting from an offset until the end, in this
case you can just do:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">vertx.createHttpServer().requestHandler({ request -&gt;
  var offset = 0
  try {
    offset = Long.parseLong(request.getParam(&quot;start&quot;))
  } catch(e: Exception) {
    // error handling...
  }


  request.response().sendFile(&quot;web/mybigfile.txt&quot;, offset)
}).listen(8080)</code></pre>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_piping_responses">Piping responses</h4>
<div class="paragraph">
<p>The server response is a <code><a href="../../apidocs/io/vertx/core/streams/WriteStream.html">WriteStream</a></code> instance so you can pipe to it from any
<code><a href="../../apidocs/io/vertx/core/streams/ReadStream.html">ReadStream</a></code>, e.g. <code><a href="../../apidocs/io/vertx/core/file/AsyncFile.html">AsyncFile</a></code>, <code><a href="../../apidocs/io/vertx/core/net/NetSocket.html">NetSocket</a></code>,
<code><a href="../../apidocs/io/vertx/core/http/WebSocket.html">WebSocket</a></code> or <code><a href="../../apidocs/io/vertx/core/http/HttpServerRequest.html">HttpServerRequest</a></code>.</p>
</div>
<div class="paragraph">
<p>Here&#8217;s an example which echoes the request body back in the response for any PUT methods.
It uses a pipe for the body, so it will work even if the HTTP request body is much larger than can fit in memory
at any one time:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">vertx.createHttpServer().requestHandler({ request -&gt;
  var response = request.response()
  if (request.method() == HttpMethod.PUT) {
    response.setChunked(true)
    request.pipeTo(response)
  } else {
    response.setStatusCode(400).end()
  }
}).listen(8080)</code></pre>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_writing_http_2_frames">Writing HTTP/2 frames</h4>
<div class="paragraph">
<p>HTTP/2 is a framed protocol with various frames for the HTTP request/response model. The protocol allows other kind
of frames to be sent and received.</p>
</div>
<div class="paragraph">
<p>To send such frames, you can use the <code><a href="../../apidocs/io/vertx/core/http/HttpServerResponse.html#writeCustomFrame-int-int-io.vertx.core.buffer.Buffer-">writeCustomFrame</a></code> on the response.
Here&#8217;s an example:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var frameType = 40
var frameStatus = 10
var payload = Buffer.buffer(&quot;some data&quot;)

// Sending a frame to the client
response.writeCustomFrame(frameType, frameStatus, payload)</code></pre>
</div>
</div>
<div class="paragraph">
<p>These frames are sent immediately and are not subject to flow control - when such frame is sent there it may be done
before other {@literal DATA} frames.</p>
</div>
</div>
<div class="sect3">
<h4 id="_stream_reset">Stream reset</h4>
<div class="paragraph">
<p>HTTP/1.x does not allow a clean reset of a request or a response stream, for example when a client uploads
a resource already present on the server, the server needs to accept the entire response.</p>
</div>
<div class="paragraph">
<p>HTTP/2 supports stream reset at any time during the request/response:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">// Reset the stream
request.response().reset()</code></pre>
</div>
</div>
<div class="paragraph">
<p>By default the <code>NO_ERROR</code> (0) error code is sent, another code can sent instead:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">// Cancel the stream
request.response().reset(8)</code></pre>
</div>
</div>
<div class="paragraph">
<p>The HTTP/2 specification defines the list of <a href="http://httpwg.org/specs/rfc7540.html#ErrorCodes">error codes</a> one can use.</p>
</div>
<div class="paragraph">
<p>The request handler are notified of stream reset events with the <code><a href="../../apidocs/io/vertx/core/http/HttpServerRequest.html#exceptionHandler-io.vertx.core.Handler-">request handler</a></code> and
<code><a href="../../apidocs/io/vertx/core/http/HttpServerResponse.html#exceptionHandler-io.vertx.core.Handler-">response handler</a></code>:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">request.response().exceptionHandler({ err -&gt;
  if (err is io.vertx.core.http.StreamResetException) {
    var reset = err
    println(&quot;Stream reset ${reset.getCode()}&quot;)
  }
})</code></pre>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_server_push">Server push</h4>
<div class="paragraph">
<p>Server push is a new feature of HTTP/2 that enables sending multiple responses in parallel for a single client request.</p>
</div>
<div class="paragraph">
<p>When a server process a request, it can push a request/response to the client:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var response = request.response()

// Push main.js to the client
response.push(HttpMethod.GET, &quot;/main.js&quot;, { ar -&gt;

  if (ar.succeeded()) {

    // The server is ready to push the response
    var pushedResponse = ar.result()

    // Send main.js response
    pushedResponse.putHeader(&quot;content-type&quot;, &quot;application/json&quot;).end(&quot;alert(\&quot;Push response hello\&quot;)&quot;)
  } else {
    println(&quot;Could not push client resource ${ar.cause()}&quot;)
  }
})

// Send the requested resource
response.sendFile(&quot;&lt;html&gt;&lt;head&gt;&lt;script src=\&quot;/main.js\&quot;&gt;&lt;/script&gt;&lt;/head&gt;&lt;body&gt;&lt;/body&gt;&lt;/html&gt;&quot;)</code></pre>
</div>
</div>
<div class="paragraph">
<p>When the server is ready to push the response, the push response handler is called and the handler can send the response.</p>
</div>
<div class="paragraph">
<p>The push response handler may receive a failure, for instance the client may cancel the push because it already has <code>main.js</code> in its
cache and does not want it anymore.</p>
</div>
<div class="paragraph">
<p>The <code><a href="../../apidocs/io/vertx/core/http/HttpServerResponse.html#push-io.vertx.core.http.HttpMethod-java.lang.String-java.lang.String-io.vertx.core.Handler-">push</a></code> method must be called before the initiating response ends, however
the pushed response can be written after.</p>
</div>
</div>
<div class="sect3">
<h4 id="_handling_exceptions_2">Handling exceptions</h4>
<div class="paragraph">
<p>You can set an <code><a href="../../apidocs/io/vertx/core/http/HttpServer.html#exceptionHandler-io.vertx.core.Handler-">exceptionHandler</a></code> to receive any
exceptions that happens before the connection is passed to the <code><a href="../../apidocs/io/vertx/core/http/HttpServer.html#requestHandler-io.vertx.core.Handler-">requestHandler</a></code>
or to the <code><a href="../../apidocs/io/vertx/core/http/HttpServer.html#webSocketHandler-io.vertx.core.Handler-">webSocketHandler</a></code>, e.g during the TLS handshake.</p>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_http_compression">HTTP Compression</h3>
<div class="paragraph">
<p>Vert.x comes with support for HTTP Compression out of the box.</p>
</div>
<div class="paragraph">
<p>This means you are able to automatically compress the body of the responses before they are sent back to the client.</p>
</div>
<div class="paragraph">
<p>If the client does not support HTTP compression the responses are sent back without compressing the body.</p>
</div>
<div class="paragraph">
<p>This allows to handle Client that support HTTP Compression and those that not support it at the same time.</p>
</div>
<div class="paragraph">
<p>To enable compression use can configure it with <code><a href="../../apidocs/io/vertx/core/http/HttpServerOptions.html#setCompressionSupported-boolean-">setCompressionSupported</a></code>.</p>
</div>
<div class="paragraph">
<p>By default compression is not enabled.</p>
</div>
<div class="paragraph">
<p>When HTTP compression is enabled the server will check if the client includes an <code>Accept-Encoding</code> header which
includes the supported compressions. Commonly used are deflate and gzip. Both are supported by Vert.x.</p>
</div>
<div class="paragraph">
<p>If such a header is found the server will automatically compress the body of the response with one of the supported
compressions and send it back to the client.</p>
</div>
<div class="paragraph">
<p>Whenever the response needs to be sent without compression you can set the header <code>content-encoding</code> to <code>identity</code>:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">// Disable compression and send an image
request.response().putHeader(io.vertx.core.http.HttpHeaders.CONTENT_ENCODING, io.vertx.core.http.HttpHeaders.IDENTITY).sendFile(&quot;/path/to/image.jpg&quot;)</code></pre>
</div>
</div>
<div class="paragraph">
<p>Be aware that compression may be able to reduce network traffic but is more CPU-intensive.</p>
</div>
<div class="paragraph">
<p>To address this latter issue Vert.x allows you to tune the 'compression level' parameter that is native of the gzip/deflate compression algorithms.</p>
</div>
<div class="paragraph">
<p>Compression level allows to configure gizp/deflate algorithms in terms of the compression ratio of the resulting data and the computational cost of the compress/decompress operation.</p>
</div>
<div class="paragraph">
<p>The compression level is an integer value ranged from '1' to '9', where '1' means lower compression ratio but fastest algorithm and '9' means maximum compression ratio available but a slower algorithm.</p>
</div>
<div class="paragraph">
<p>Using compression levels higher that 1-2 usually allows to save just some bytes in size - the gain is not linear, and depends on the specific data to be compressed
- but it comports a non-trascurable cost in term of CPU cycles required to the server while generating the compressed response data
( Note that at moment Vert.x doesn&#8217;t support any form caching of compressed response data, even for static files, so the compression is done on-the-fly
at every request body generation ) and in the same way it affects client(s) while decoding (inflating) received responses, operation that becomes more CPU-intensive
the more the level increases.</p>
</div>
<div class="paragraph">
<p>By default - if compression is enabled via <code><a href="../../apidocs/io/vertx/core/http/HttpServerOptions.html#setCompressionSupported-boolean-">setCompressionSupported</a></code> - Vert.x will use '6' as compression level,
but the parameter can be configured to address any case with <code><a href="../../apidocs/io/vertx/core/http/HttpServerOptions.html#setCompressionLevel-int-">setCompressionLevel</a></code>.</p>
</div>
</div>
<div class="sect2">
<h3 id="_creating_an_http_client">Creating an HTTP client</h3>
<div class="paragraph">
<p>You create an <code><a href="../../apidocs/io/vertx/core/http/HttpClient.html">HttpClient</a></code> instance with default options as follows:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var client = vertx.createHttpClient()</code></pre>
</div>
</div>
<div class="paragraph">
<p>If you want to configure options for the client, you create it as follows:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var options = HttpClientOptions(
  keepAlive = false)
var client = vertx.createHttpClient(options)</code></pre>
</div>
</div>
<div class="paragraph">
<p>Vert.x supports HTTP/2 over TLS <code>h2</code> and over TCP <code>h2c</code>.</p>
</div>
<div class="paragraph">
<p>By default the http client performs HTTP/1.1 requests, to perform HTTP/2 requests the <code><a href="../../apidocs/io/vertx/core/http/HttpClientOptions.html#setProtocolVersion-io.vertx.core.http.HttpVersion-">setProtocolVersion</a></code>
must be set to <code><a href="../../apidocs/io/vertx/core/http/HttpVersion.html#HTTP_2">HTTP_2</a></code>.</p>
</div>
<div class="paragraph">
<p>For <code>h2</code> requests, TLS must be enabled with <em>Application-Layer Protocol Negotiation</em>:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var options = HttpClientOptions(
  protocolVersion = HttpVersion.HTTP_2,
  ssl = true,
  useAlpn = true,
  trustAll = true)

var client = vertx.createHttpClient(options)</code></pre>
</div>
</div>
<div class="paragraph">
<p>For <code>h2c</code> requests, TLS must be disabled, the client will do an HTTP/1.1 requests and try an upgrade to HTTP/2:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var options = HttpClientOptions(
  protocolVersion = HttpVersion.HTTP_2)

var client = vertx.createHttpClient(options)</code></pre>
</div>
</div>
<div class="paragraph">
<p><code>h2c</code> connections can also be established directly, i.e connection started with a prior knowledge, when
<code><a href="../../apidocs/io/vertx/core/http/HttpClientOptions.html#setHttp2ClearTextUpgrade-boolean-">setHttp2ClearTextUpgrade</a></code> options is set to false: after the
connection is established, the client will send the HTTP/2 connection preface and expect to receive
the same preface from the server.</p>
</div>
<div class="paragraph">
<p>The http server may not support HTTP/2, the actual version can be checked
with <code><a href="../../apidocs/io/vertx/core/http/HttpClientResponse.html#version--">version</a></code> when the response arrives.</p>
</div>
<div class="paragraph">
<p>When a clients connects to an HTTP/2 server, it sends to the server its <code><a href="../../apidocs/io/vertx/core/http/HttpClientOptions.html#getInitialSettings--">initial settings</a></code>.
The settings define how the server can use the connection, the default initial settings for a client are the default
values defined by the HTTP/2 RFC.</p>
</div>
</div>
<div class="sect2">
<h3 id="_logging_network_client_activity">Logging network client activity</h3>
<div class="paragraph">
<p>For debugging purposes, network activity can be logged.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var options = HttpClientOptions(
  logActivity = true)
var client = vertx.createHttpClient(options)</code></pre>
</div>
</div>
<div class="paragraph">
<p>See the chapter on <a href="#logging_network_activity">logging network activity</a> for a detailed explanation.</p>
</div>
</div>
<div class="sect2">
<h3 id="_making_requests">Making requests</h3>
<div class="paragraph">
<p>The http client is very flexible and there are various ways you can make requests with it.</p>
</div>
<div class="paragraph">
<p>Often you want to make many requests to the same host/port with an http client. To avoid you repeating the host/port
every time you make a request you can configure the client with a default host/port:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">// Set the default host
var options = HttpClientOptions(
  defaultHost = &quot;wibble.com&quot;)
// Can also set default port if you want...
var client = vertx.createHttpClient(options)
client.getNow(&quot;/some-uri&quot;, { response -&gt;
  println(&quot;Received response with status code ${response.statusCode()}&quot;)
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>Alternatively if you find yourself making lots of requests to different host/ports with the same client you can
simply specify the host/port when doing the request.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var client = vertx.createHttpClient()

// Specify both port and host name
client.getNow(8080, &quot;myserver.mycompany.com&quot;, &quot;/some-uri&quot;, { response -&gt;
  println(&quot;Received response with status code ${response.statusCode()}&quot;)
})

// This time use the default port 80 but specify the host name
client.getNow(&quot;foo.othercompany.com&quot;, &quot;/other-uri&quot;, { response -&gt;
  println(&quot;Received response with status code ${response.statusCode()}&quot;)
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>Both methods of specifying host/port are supported for all the different ways of making requests with the client.</p>
</div>
<div class="sect3">
<h4 id="_simple_requests_with_no_request_body">Simple requests with no request body</h4>
<div class="paragraph">
<p>Often, you&#8217;ll want to make HTTP requests with no request body. This is usually the case with HTTP GET, OPTIONS and
HEAD requests.</p>
</div>
<div class="paragraph">
<p>The simplest way to do this with the Vert.x http client is using the methods suffixed with <code>Now</code>. For example
<code><a href="../../apidocs/io/vertx/core/http/HttpClient.html#getNow-io.vertx.core.http.RequestOptions-io.vertx.core.Handler-">getNow</a></code>.</p>
</div>
<div class="paragraph">
<p>These methods create the http request and send it in a single method call and allow you to provide a handler that will be
called with the http response when it comes back.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var client = vertx.createHttpClient()

// Send a GET request
client.getNow(&quot;/some-uri&quot;, { response -&gt;
  println(&quot;Received response with status code ${response.statusCode()}&quot;)
})

// Send a GET request
client.headNow(&quot;/other-uri&quot;, { response -&gt;
  println(&quot;Received response with status code ${response.statusCode()}&quot;)
})</code></pre>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_writing_general_requests">Writing general requests</h4>
<div class="paragraph">
<p>At other times you don&#8217;t know the request method you want to send until run-time. For that use case we provide
general purpose request methods such as <code><a href="../../apidocs/io/vertx/core/http/HttpClient.html#request-io.vertx.core.http.HttpMethod-io.vertx.core.net.SocketAddress-io.vertx.core.http.RequestOptions-">request</a></code> which allow you to specify
the HTTP method at run-time:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var client = vertx.createHttpClient()

client.request(HttpMethod.GET, &quot;some-uri&quot;, { response -&gt;
  println(&quot;Received response with status code ${response.statusCode()}&quot;)
}).end()

client.request(HttpMethod.POST, &quot;foo-uri&quot;, { response -&gt;
  println(&quot;Received response with status code ${response.statusCode()}&quot;)
}).end(&quot;some-data&quot;)</code></pre>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_writing_request_bodies">Writing request bodies</h4>
<div class="paragraph">
<p>Sometimes you&#8217;ll want to write requests which have a body, or perhaps you want to write headers to a request
before sending it.</p>
</div>
<div class="paragraph">
<p>To do this you can call one of the specific request methods such as <code><a href="../../apidocs/io/vertx/core/http/HttpClient.html#post-io.vertx.core.http.RequestOptions-">post</a></code> or
one of the general purpose request methods such as <code><a href="../../apidocs/io/vertx/core/http/HttpClient.html#request-io.vertx.core.http.HttpMethod-io.vertx.core.net.SocketAddress-io.vertx.core.http.RequestOptions-">request</a></code>.</p>
</div>
<div class="paragraph">
<p>These methods don&#8217;t send the request immediately, but instead return an instance of <code><a href="../../apidocs/io/vertx/core/http/HttpClientRequest.html">HttpClientRequest</a></code>
which can be used to write to the request body or write headers.</p>
</div>
<div class="paragraph">
<p>Here are some examples of writing a POST request with a body:
m</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var client = vertx.createHttpClient()

var request = client.post(&quot;some-uri&quot;, { response -&gt;
  println(&quot;Received response with status code ${response.statusCode()}&quot;)
})

// Now do stuff with the request
request.putHeader(&quot;content-length&quot;, &quot;1000&quot;)
request.putHeader(&quot;content-type&quot;, &quot;text/plain&quot;)
request.write(body)

// Make sure the request is ended when you're done with it
request.end()

// Or fluently:

client.post(&quot;some-uri&quot;, { response -&gt;
  println(&quot;Received response with status code ${response.statusCode()}&quot;)
}).putHeader(&quot;content-length&quot;, &quot;1000&quot;).putHeader(&quot;content-type&quot;, &quot;text/plain&quot;).write(body).end()

// Or event more simply:

client.post(&quot;some-uri&quot;, { response -&gt;
  println(&quot;Received response with status code ${response.statusCode()}&quot;)
}).putHeader(&quot;content-type&quot;, &quot;text/plain&quot;).end(body)</code></pre>
</div>
</div>
<div class="paragraph">
<p>Methods exist to write strings in UTF-8 encoding and in any specific encoding and to write buffers:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">// Write string encoded in UTF-8
request.write(&quot;some data&quot;)

// Write string encoded in specific encoding
request.write(&quot;some other data&quot;, &quot;UTF-16&quot;)

// Write a buffer
var buffer = Buffer.buffer()
buffer.appendInt(123).appendLong(245L)
request.write(buffer)</code></pre>
</div>
</div>
<div class="paragraph">
<p>If you are just writing a single string or buffer to the HTTP request you can write it and end the request in a
single call to the <code>end</code> function.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">// Write string and end the request (send it) in a single call
request.end(&quot;some simple data&quot;)

// Write buffer and end the request (send it) in a single call
var buffer = Buffer.buffer().appendDouble(12.34).appendLong(432L)
request.end(buffer)</code></pre>
</div>
</div>
<div class="paragraph">
<p>When you&#8217;re writing to a request, the first call to <code>write</code> will result in the request headers being written
out to the wire.</p>
</div>
<div class="paragraph">
<p>The actual write is asynchronous and might not occur until some time after the call has returned.</p>
</div>
<div class="paragraph">
<p>Non-chunked HTTP requests with a request body require a <code>Content-Length</code> header to be provided.</p>
</div>
<div class="paragraph">
<p>Consequently, if you are not using chunked HTTP then you must set the <code>Content-Length</code> header before writing
to the request, as it will be too late otherwise.</p>
</div>
<div class="paragraph">
<p>If you are calling one of the <code>end</code> methods that take a string or buffer then Vert.x will automatically calculate
and set the <code>Content-Length</code> header before writing the request body.</p>
</div>
<div class="paragraph">
<p>If you are using HTTP chunking a a <code>Content-Length</code> header is not required, so you do not have to calculate the size
up-front.</p>
</div>
</div>
<div class="sect3">
<h4 id="_writing_request_headers">Writing request headers</h4>
<div class="paragraph">
<p>You can write headers to a request using the <code><a href="../../apidocs/io/vertx/core/http/HttpClientRequest.html#headers--">headers</a></code> multi-map as follows:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">// Write some headers using the headers() multimap

var headers = request.headers()
headers.set(&quot;content-type&quot;, &quot;application/json&quot;).set(&quot;other-header&quot;, &quot;foo&quot;)</code></pre>
</div>
</div>
<div class="paragraph">
<p>The headers are an instance of <code><a href="../../apidocs/io/vertx/core/MultiMap.html">MultiMap</a></code> which provides operations for adding, setting and removing
entries. Http headers allow more than one value for a specific key.</p>
</div>
<div class="paragraph">
<p>You can also write headers using <code><a href="../../apidocs/io/vertx/core/http/HttpClientRequest.html#putHeader-java.lang.String-java.lang.String-">putHeader</a></code></p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">// Write some headers using the putHeader method

request.putHeader(&quot;content-type&quot;, &quot;application/json&quot;).putHeader(&quot;other-header&quot;, &quot;foo&quot;)</code></pre>
</div>
</div>
<div class="paragraph">
<p>If you wish to write headers to the request you must do so before any part of the request body is written.</p>
</div>
</div>
<div class="sect3">
<h4 id="_non_standard_http_methods_2">Non standard HTTP methods</h4>
<div class="paragraph">
<p>The <code><a href="../../apidocs/io/vertx/core/http/HttpMethod.html#OTHER">OTHER</a></code> HTTP method is used for non standard methods, when this method
is used, <code><a href="../../apidocs/io/vertx/core/http/HttpClientRequest.html#setRawMethod-java.lang.String-">setRawMethod</a></code> must be used to
set the raw method to send to the server.</p>
</div>
</div>
<div class="sect3">
<h4 id="_ending_http_requests">Ending HTTP requests</h4>
<div class="paragraph">
<p>Once you have finished with the HTTP request you must end it with one of the <code><a href="../../apidocs/io/vertx/core/http/HttpClientRequest.html#end-java.lang.String-">end</a></code>
operations.</p>
</div>
<div class="paragraph">
<p>Ending a request causes any headers to be written, if they have not already been written and the request to be marked
as complete.</p>
</div>
<div class="paragraph">
<p>Requests can be ended in several ways. With no arguments the request is simply ended:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">request.end()</code></pre>
</div>
</div>
<div class="paragraph">
<p>Or a string or buffer can be provided in the call to <code>end</code>. This is like calling <code>write</code> with the string or buffer
before calling <code>end</code> with no arguments</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">// End the request with a string
request.end(&quot;some-data&quot;)

// End it with a buffer
var buffer = Buffer.buffer().appendFloat(12.3f).appendInt(321)
request.end(buffer)</code></pre>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_chunked_http_requests">Chunked HTTP requests</h4>
<div class="paragraph">
<p>Vert.x supports <a href="https://en.wikipedia.org/wiki/Chunked_transfer_encoding">HTTP Chunked Transfer Encoding</a> for requests.</p>
</div>
<div class="paragraph">
<p>This allows the HTTP request body to be written in chunks, and is normally used when a large request body is being streamed
to the server, whose size is not known in advance.</p>
</div>
<div class="paragraph">
<p>You put the HTTP request into chunked mode using <code><a href="../../apidocs/io/vertx/core/http/HttpClientRequest.html#setChunked-boolean-">setChunked</a></code>.</p>
</div>
<div class="paragraph">
<p>In chunked mode each call to write will cause a new chunk to be written to the wire. In chunked mode there is
no need to set the <code>Content-Length</code> of the request up-front.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">request.setChunked(true)

// Write some chunks
for (i in 0 until 10) {
  request.write(&quot;this-is-chunk-${i}&quot;)

}


request.end()</code></pre>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_request_timeouts">Request timeouts</h4>
<div class="paragraph">
<p>You can set a timeout for a specific http request using <code><a href="../../apidocs/io/vertx/core/http/HttpClientRequest.html#setTimeout-long-">setTimeout</a></code>.</p>
</div>
<div class="paragraph">
<p>If the request does not return any data within the timeout period an exception will be passed to the exception handler
(if provided) and the request will be closed.</p>
</div>
</div>
<div class="sect3">
<h4 id="_handling_exceptions_3">Handling exceptions</h4>
<div class="paragraph">
<p>You can handle exceptions corresponding to a request by setting an exception handler on the
<code><a href="../../apidocs/io/vertx/core/http/HttpClientRequest.html">HttpClientRequest</a></code> instance:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var request = client.post(&quot;some-uri&quot;, { response -&gt;
  println(&quot;Received response with status code ${response.statusCode()}&quot;)
})
request.exceptionHandler({ e -&gt;
  println(&quot;Received exception: ${e.getMessage()}&quot;)
  e.printStackTrace()
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>This does not handle non <em>2xx</em> response that need to be handled in the
<code><a href="../../apidocs/io/vertx/core/http/HttpClientResponse.html">HttpClientResponse</a></code> code:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var request = client.post(&quot;some-uri&quot;, { response -&gt;
  if (response.statusCode() == 200) {
    println(&quot;Everything fine&quot;)
    return
  }
  if (response.statusCode() == 500) {
    println(&quot;Unexpected behavior on the server side&quot;)
    return
  }
})
request.end()</code></pre>
</div>
</div>
<div class="admonitionblock important">
<table>
<tr>
<td class="icon">
<div class="title">Important</div>
</td>
<td class="content">
<code>XXXNow</code> methods cannot receive an exception handler.
</td>
</tr>
</table>
</div>
</div>
<div class="sect3">
<h4 id="_specifying_a_handler_on_the_client_request">Specifying a handler on the client request</h4>
<div class="paragraph">
<p>Instead of providing a response handler in the call to create the client request object, alternatively, you can
not provide a handler when the request is created and set it later on the request object itself, using
<code><a href="../../apidocs/io/vertx/core/http/HttpClientRequest.html#handler-io.vertx.core.Handler-">handler</a></code>, for example:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var request = client.post(&quot;some-uri&quot;)
request.handler({ response -&gt;
  println(&quot;Received response with status code ${response.statusCode()}&quot;)
})</code></pre>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_using_the_request_as_a_stream">Using the request as a stream</h4>
<div class="paragraph">
<p>The <code><a href="../../apidocs/io/vertx/core/http/HttpClientRequest.html">HttpClientRequest</a></code> instance is also a <code><a href="../../apidocs/io/vertx/core/streams/WriteStream.html">WriteStream</a></code> which means
you can pump to it from any <code><a href="../../apidocs/io/vertx/core/streams/ReadStream.html">ReadStream</a></code> instance.</p>
</div>
<div class="paragraph">
<p>For, example, you could pump a file on disk to a http request body as follows:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">request.setChunked(true)
var pump = Pump.pump(file, request)
file.endHandler({ v -&gt;
  request.end()
})
pump.start()</code></pre>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_writing_http_2_frames_2">Writing HTTP/2 frames</h4>
<div class="paragraph">
<p>HTTP/2 is a framed protocol with various frames for the HTTP request/response model. The protocol allows other kind
of frames to be sent and received.</p>
</div>
<div class="paragraph">
<p>To send such frames, you can use the <code><a href="../../apidocs/io/vertx/core/http/HttpClientRequest.html#write-io.vertx.core.buffer.Buffer-">write</a></code> on the request. Here&#8217;s an example:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var frameType = 40
var frameStatus = 10
var payload = Buffer.buffer(&quot;some data&quot;)

// Sending a frame to the server
request.writeCustomFrame(frameType, frameStatus, payload)</code></pre>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_stream_reset_2">Stream reset</h4>
<div class="paragraph">
<p>HTTP/1.x does not allow a clean reset of a request or a response stream, for example when a client uploads a resource already
present on the server, the server needs to accept the entire response.</p>
</div>
<div class="paragraph">
<p>HTTP/2 supports stream reset at any time during the request/response:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">request.reset()</code></pre>
</div>
</div>
<div class="paragraph">
<p>By default the NO_ERROR (0) error code is sent, another code can sent instead:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">request.reset(8)</code></pre>
</div>
</div>
<div class="paragraph">
<p>The HTTP/2 specification defines the list of <a href="http://httpwg.org/specs/rfc7540.html#ErrorCodes">error codes</a> one can use.</p>
</div>
<div class="paragraph">
<p>The request handler are notified of stream reset events with the <code><a href="../../apidocs/io/vertx/core/http/HttpClientRequest.html#exceptionHandler-io.vertx.core.Handler-">request handler</a></code> and
<code><a href="../../apidocs/io/vertx/core/http/HttpClientResponse.html#exceptionHandler-io.vertx.core.Handler-">response handler</a></code>:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">request.exceptionHandler({ err -&gt;
  if (err is io.vertx.core.http.StreamResetException) {
    var reset = err
    println(&quot;Stream reset ${reset.getCode()}&quot;)
  }
})</code></pre>
</div>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_handling_http_responses">Handling HTTP responses</h3>
<div class="paragraph">
<p>You receive an instance of <code><a href="../../apidocs/io/vertx/core/http/HttpClientResponse.html">HttpClientResponse</a></code> into the handler that you specify in of
the request methods or by setting a handler directly on the <code><a href="../../apidocs/io/vertx/core/http/HttpClientRequest.html">HttpClientRequest</a></code> object.</p>
</div>
<div class="paragraph">
<p>You can query the status code and the status message of the response with <code><a href="../../apidocs/io/vertx/core/http/HttpClientResponse.html#statusCode--">statusCode</a></code>
and <code><a href="../../apidocs/io/vertx/core/http/HttpClientResponse.html#statusMessage--">statusMessage</a></code>.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">client.getNow(&quot;some-uri&quot;, { response -&gt;
  // the status code - e.g. 200 or 404
  println(&quot;Status code is ${response.statusCode()}&quot;)

  // the status message e.g. &quot;OK&quot; or &quot;Not Found&quot;.
  println(&quot;Status message is ${response.statusMessage()}&quot;)
})</code></pre>
</div>
</div>
<div class="sect3">
<h4 id="_using_the_response_as_a_stream">Using the response as a stream</h4>
<div class="paragraph">
<p>The <code><a href="../../apidocs/io/vertx/core/http/HttpClientResponse.html">HttpClientResponse</a></code> instance is also a <code><a href="../../apidocs/io/vertx/core/streams/ReadStream.html">ReadStream</a></code> which means
you can pipe it to any <code><a href="../../apidocs/io/vertx/core/streams/WriteStream.html">WriteStream</a></code> instance.</p>
</div>
</div>
<div class="sect3">
<h4 id="_response_headers_and_trailers">Response headers and trailers</h4>
<div class="paragraph">
<p>Http responses can contain headers. Use <code><a href="../../apidocs/io/vertx/core/http/HttpClientResponse.html#headers--">headers</a></code> to get the headers.</p>
</div>
<div class="paragraph">
<p>The object returned is a <code><a href="../../apidocs/io/vertx/core/MultiMap.html">MultiMap</a></code> as HTTP headers can contain multiple values for single keys.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var contentType = response.headers().get(&quot;content-type&quot;)
var contentLength = response.headers().get(&quot;content-lengh&quot;)</code></pre>
</div>
</div>
<div class="paragraph">
<p>Chunked HTTP responses can also contain trailers - these are sent in the last chunk of the response body.</p>
</div>
<div class="paragraph">
<p>You use <code><a href="../../apidocs/io/vertx/core/http/HttpClientResponse.html#trailers--">trailers</a></code> to get the trailers. Trailers are also a <code><a href="../../apidocs/io/vertx/core/MultiMap.html">MultiMap</a></code>.</p>
</div>
</div>
<div class="sect3">
<h4 id="_reading_the_request_body">Reading the request body</h4>
<div class="paragraph">
<p>The response handler is called when the headers of the response have been read from the wire.</p>
</div>
<div class="paragraph">
<p>If the response has a body this might arrive in several pieces some time after the headers have been read. We
don&#8217;t wait for all the body to arrive before calling the response handler as the response could be very large and we
might be waiting a long time, or run out of memory for large responses.</p>
</div>
<div class="paragraph">
<p>As parts of the response body arrive, the <code><a href="../../apidocs/io/vertx/core/http/HttpClientResponse.html#handler-io.vertx.core.Handler-">handler</a></code> is called with
a <code><a href="../../apidocs/io/vertx/core/buffer/Buffer.html">Buffer</a></code> representing the piece of the body:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">client.getNow(&quot;some-uri&quot;, { response -&gt;

  response.handler({ buffer -&gt;
    println(&quot;Received a part of the response body: ${buffer}&quot;)
  })
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>If you know the response body is not very large and want to aggregate it all in memory before handling it, you can
either aggregate it yourself:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">client.getNow(&quot;some-uri&quot;, { response -&gt;

  // Create an empty buffer
  var totalBuffer = Buffer.buffer()

  response.handler({ buffer -&gt;
    println(&quot;Received a part of the response body: ${buffer.length()}&quot;)

    totalBuffer.appendBuffer(buffer)
  })

  response.endHandler({ v -&gt;
    // Now all the body has been read
    println(&quot;Total response body length is ${totalBuffer.length()}&quot;)
  })
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>Or you can use the convenience <code><a href="../../apidocs/io/vertx/core/http/HttpClientResponse.html#bodyHandler-io.vertx.core.Handler-">bodyHandler</a></code> which
is called with the entire body when the response has been fully read:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">client.getNow(&quot;some-uri&quot;, { response -&gt;

  response.bodyHandler({ totalBuffer -&gt;
    // Now all the body has been read
    println(&quot;Total response body length is ${totalBuffer.length()}&quot;)
  })
})</code></pre>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_response_end_handler">Response end handler</h4>
<div class="paragraph">
<p>The response <code><a href="../../apidocs/io/vertx/core/http/HttpClientResponse.html#endHandler-io.vertx.core.Handler-">endHandler</a></code> is called when the entire response body has been read
or immediately after the headers have been read and the response handler has been called if there is no body.</p>
</div>
</div>
<div class="sect3">
<h4 id="_reading_cookies_from_the_response">Reading cookies from the response</h4>
<div class="paragraph">
<p>You can retrieve the list of cookies from a response using <code><a href="../../apidocs/io/vertx/core/http/HttpClientResponse.html#cookies--">cookies</a></code>.</p>
</div>
<div class="paragraph">
<p>Alternatively you can just parse the <code>Set-Cookie</code> headers yourself in the response.</p>
</div>
</div>
<div class="sect3">
<h4 id="_30x_redirection_handling">30x redirection handling</h4>
<div class="paragraph">
<p>The client can be configured to follow HTTP redirections provided by the <code>Location</code> response header when the client receives:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>a <code>301</code>, <code>302</code>, <code>307</code> or <code>308</code> status code along with a HTTP GET or HEAD method</p>
</li>
<li>
<p>a <code>303</code> status code, in addition the directed request perform an HTTP GET methodn</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>Here&#8217;s an example:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">client.get(&quot;some-uri&quot;, { response -&gt;
  println(&quot;Received response with status code ${response.statusCode()}&quot;)
}).setFollowRedirects(true).end()</code></pre>
</div>
</div>
<div class="paragraph">
<p>The maximum redirects is <code>16</code> by default and can be changed with <code><a href="../../apidocs/io/vertx/core/http/HttpClientOptions.html#setMaxRedirects-int-">setMaxRedirects</a></code>.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var client = vertx.createHttpClient(HttpClientOptions(
  maxRedirects = 32))

client.get(&quot;some-uri&quot;, { response -&gt;
  println(&quot;Received response with status code ${response.statusCode()}&quot;)
}).setFollowRedirects(true).end()</code></pre>
</div>
</div>
<div class="paragraph">
<p>One size does not fit all and the default redirection policy may not be adapted to your needs.</p>
</div>
<div class="paragraph">
<p>The default redirection policy can changed with a custom implementation:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">client.redirectHandler({ response -&gt;

  // Only follow 301 code
  if (response.statusCode() == 301 &amp;&amp; response.getHeader(&quot;Location&quot;) != null) {

    // Compute the redirect URI
    var absoluteURI = resolveURI(response.request().absoluteURI(), response.getHeader(&quot;Location&quot;))

    // Create a new ready to use request that the client will use
    return Future.succeededFuture(client.getAbs(absoluteURI))
  }

  // We don't redirect
  return null
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>The policy handles the original <code><a href="../../apidocs/io/vertx/core/http/HttpClientResponse.html">HttpClientResponse</a></code> received and returns either <code>null</code>
or a <code>Future&lt;HttpClientRequest&gt;</code>.</p>
</div>
<div class="ulist">
<ul>
<li>
<p>when <code>null</code> is returned, the original response is processed</p>
</li>
<li>
<p>when a future is returned, the request will be sent on its successful completion</p>
</li>
<li>
<p>when a future is returned, the exception handler set on the request is called on its failure</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>The returned request must be unsent so the original request handlers can be sent and the client can send it after.</p>
</div>
<div class="paragraph">
<p>Most of the original request settings will be propagated to the new request:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>request headers, unless if you have set some headers (including <code><a href="../../apidocs/io/vertx/core/http/HttpClientRequest.html#setHost-java.lang.String-">setHost</a></code>)</p>
</li>
<li>
<p>request body unless the returned request uses a <code>GET</code> method</p>
</li>
<li>
<p>response handler</p>
</li>
<li>
<p>request exception handler</p>
</li>
<li>
<p>request timeout</p>
</li>
</ul>
</div>
</div>
<div class="sect3">
<h4 id="_100_continue_handling">100-Continue handling</h4>
<div class="paragraph">
<p>According to the <a href="https://www.w3.org/Protocols/rfc2616/rfc2616-sec8.html">HTTP 1.1 specification</a> a client can set a
header <code>Expect: 100-Continue</code> and send the request header before sending the rest of the request body.</p>
</div>
<div class="paragraph">
<p>The server can then respond with an interim response status <code>Status: 100 (Continue)</code> to signify to the client that
it is ok to send the rest of the body.</p>
</div>
<div class="paragraph">
<p>The idea here is it allows the server to authorise and accept/reject the request before large amounts of data are sent.
Sending large amounts of data if the request might not be accepted is a waste of bandwidth and ties up the server
in reading data that it will just discard.</p>
</div>
<div class="paragraph">
<p>Vert.x allows you to set a <code><a href="../../apidocs/io/vertx/core/http/HttpClientRequest.html#continueHandler-io.vertx.core.Handler-">continueHandler</a></code> on the
client request object</p>
</div>
<div class="paragraph">
<p>This will be called if the server sends back a <code>Status: 100 (Continue)</code> response to signify that it is ok to send
the rest of the request.</p>
</div>
<div class="paragraph">
<p>This is used in conjunction with `<a href="../../apidocs/io/vertx/core/http/HttpClientRequest.html#sendHead--">sendHead</a>`to send the head of the request.</p>
</div>
<div class="paragraph">
<p>Here&#8217;s an example:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var request = client.put(&quot;some-uri&quot;, { response -&gt;
  println(&quot;Received response with status code ${response.statusCode()}&quot;)
})

request.putHeader(&quot;Expect&quot;, &quot;100-Continue&quot;)

request.continueHandler({ v -&gt;
  // OK to send rest of body
  request.write(&quot;Some data&quot;)
  request.write(&quot;Some more data&quot;)
  request.end()
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>On the server side a Vert.x http server can be configured to automatically send back 100 Continue interim responses
when it receives an <code>Expect: 100-Continue</code> header.</p>
</div>
<div class="paragraph">
<p>This is done by setting the option <code><a href="../../apidocs/io/vertx/core/http/HttpServerOptions.html#setHandle100ContinueAutomatically-boolean-">setHandle100ContinueAutomatically</a></code>.</p>
</div>
<div class="paragraph">
<p>If you&#8217;d prefer to decide whether to send back continue responses manually, then this property should be set to
<code>false</code> (the default), then you can inspect the headers and call <code><a href="../../apidocs/io/vertx/core/http/HttpServerResponse.html#writeContinue--">writeContinue</a></code>
to have the client continue sending the body:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">httpServer.requestHandler({ request -&gt;
  if (request.getHeader(&quot;Expect&quot;).equalsIgnoreCase(&quot;100-Continue&quot;)) {

    // Send a 100 continue response
    request.response().writeContinue()

    // The client should send the body when it receives the 100 response
    request.bodyHandler({ body -&gt;
      // Do something with body
    })

    request.endHandler({ v -&gt;
      request.response().end()
    })
  }
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>You can also reject the request by sending back a failure status code directly: in this case the body
should either be ignored or the connection should be closed (100-Continue is a performance hint and
cannot be a logical protocol constraint):</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">httpServer.requestHandler({ request -&gt;
  if (request.getHeader(&quot;Expect&quot;).equalsIgnoreCase(&quot;100-Continue&quot;)) {

    //
    var rejectAndClose = true
    if (rejectAndClose) {

      // Reject with a failure code and close the connection
      // this is probably best with persistent connection
      request.response().setStatusCode(405).putHeader(&quot;Connection&quot;, &quot;close&quot;).end()
    } else {

      // Reject with a failure code and ignore the body
      // this may be appropriate if the body is small
      request.response().setStatusCode(405).end()
    }
  }
})</code></pre>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_client_push">Client push</h4>
<div class="paragraph">
<p>Server push is a new feature of HTTP/2 that enables sending multiple responses in parallel for a single client request.</p>
</div>
<div class="paragraph">
<p>A push handler can be set on a request to receive the request/response pushed by the server:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var request = client.get(&quot;/index.html&quot;, { response -&gt;
  // Process index.html response
})

// Set a push handler to be aware of any resource pushed by the server
request.pushHandler({ pushedRequest -&gt;

  // A resource is pushed for this request
  println(&quot;Server pushed ${pushedRequest.path()}&quot;)

  // Set an handler for the response
  pushedRequest.handler({ pushedResponse -&gt;
    println(&quot;The response for the pushed request&quot;)
  })
})

// End the request
request.end()</code></pre>
</div>
</div>
<div class="paragraph">
<p>If the client does not want to receive a pushed request, it can reset the stream:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">request.pushHandler({ pushedRequest -&gt;
  if (pushedRequest.path() == &quot;/main.js&quot;) {
    pushedRequest.reset()
  } else {
    // Handle it
  }
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>When no handler is set, any stream pushed will be automatically cancelled by the client with
a stream reset (<code>8</code> error code).</p>
</div>
</div>
<div class="sect3">
<h4 id="_receiving_custom_http_2_frames_2">Receiving custom HTTP/2 frames</h4>
<div class="paragraph">
<p>HTTP/2 is a framed protocol with various frames for the HTTP request/response model. The protocol allows other kind of
frames to be sent and received.</p>
</div>
<div class="paragraph">
<p>To receive custom frames, you can use the customFrameHandler on the request, this will get called every time a custom
frame arrives. Here&#8217;s an example:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">response.customFrameHandler({ frame -&gt;

  println(&quot;Received a frame type=${frame.type()} payload${frame.payload().toString()}&quot;)
})</code></pre>
</div>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_enabling_compression_on_the_client">Enabling compression on the client</h3>
<div class="paragraph">
<p>The http client comes with support for HTTP Compression out of the box.</p>
</div>
<div class="paragraph">
<p>This means the client can let the remote http server know that it supports compression, and will be able to handle
compressed response bodies.</p>
</div>
<div class="paragraph">
<p>An http server is free to either compress with one of the supported compression algorithms or to send the body back
without compressing it at all. So this is only a hint for the Http server which it may ignore at will.</p>
</div>
<div class="paragraph">
<p>To tell the http server which compression is supported by the client it will include an <code>Accept-Encoding</code> header with
the supported compression algorithm as value. Multiple compression algorithms are supported. In case of Vert.x this
will result in the following header added:</p>
</div>
<div class="paragraph">
<p>Accept-Encoding: gzip, deflate</p>
</div>
<div class="paragraph">
<p>The server will choose then from one of these. You can detect if a server ompressed the body by checking for the
<code>Content-Encoding</code> header in the response sent back from it.</p>
</div>
<div class="paragraph">
<p>If the body of the response was compressed via gzip it will include for example the following header:</p>
</div>
<div class="paragraph">
<p>Content-Encoding: gzip</p>
</div>
<div class="paragraph">
<p>To enable compression set <code><a href="../../apidocs/io/vertx/core/http/HttpClientOptions.html#setTryUseCompression-boolean-">setTryUseCompression</a></code> on the options
used when creating the client.</p>
</div>
<div class="paragraph">
<p>By default compression is disabled.</p>
</div>
</div>
<div class="sect2">
<h3 id="_http_1_x_pooling_and_keep_alive">HTTP/1.x pooling and keep alive</h3>
<div class="paragraph">
<p>Http keep alive allows http connections to be used for more than one request. This can be a more efficient use of
connections when you&#8217;re making multiple requests to the same server.</p>
</div>
<div class="paragraph">
<p>For HTTP/1.x versions, the http client supports pooling of connections, allowing you to reuse connections between requests.</p>
</div>
<div class="paragraph">
<p>For pooling to work, keep alive must be true using <code><a href="../../apidocs/io/vertx/core/http/HttpClientOptions.html#setKeepAlive-boolean-">setKeepAlive</a></code>
on the options used when configuring the client. The default value is true.</p>
</div>
<div class="paragraph">
<p>When keep alive is enabled. Vert.x will add a <code>Connection: Keep-Alive</code> header to each HTTP/1.0 request sent.
When keep alive is disabled. Vert.x will add a <code>Connection: Close</code> header to each HTTP/1.1 request sent to signal
that the connection will be closed after completion of the response.</p>
</div>
<div class="paragraph">
<p>The maximum number of connections to pool <strong>for each server</strong> is configured using <code><a href="../../apidocs/io/vertx/core/http/HttpClientOptions.html#setMaxPoolSize-int-">setMaxPoolSize</a></code></p>
</div>
<div class="paragraph">
<p>When making a request with pooling enabled, Vert.x will create a new connection if there are less than the maximum number of
connections already created for that server, otherwise it will add the request to a queue.</p>
</div>
<div class="paragraph">
<p>Keep alive connections will be closed by the client automatically after a timeout. The timeout can be specified
by the server using the <code>keep-alive</code> header:</p>
</div>
<div class="listingblock">
<div class="content">
<pre>keep-alive: timeout=30</pre>
</div>
</div>
<div class="paragraph">
<p>You can set the default timeout using <code><a href="../../apidocs/io/vertx/core/http/HttpClientOptions.html#setKeepAliveTimeout-int-">setKeepAliveTimeout</a></code> - any
connections not used within this timeout will be closed. Please note the timeout value is in seconds not milliseconds.</p>
</div>
</div>
<div class="sect2">
<h3 id="_http_1_1_pipe_lining">HTTP/1.1 pipe-lining</h3>
<div class="paragraph">
<p>The client also supports pipe-lining of requests on a connection.</p>
</div>
<div class="paragraph">
<p>Pipe-lining means another request is sent on the same connection before the response from the preceding one has
returned. Pipe-lining is not appropriate for all requests.</p>
</div>
<div class="paragraph">
<p>To enable pipe-lining, it must be enabled using <code><a href="../../apidocs/io/vertx/core/http/HttpClientOptions.html#setPipelining-boolean-">setPipelining</a></code>.
By default pipe-lining is disabled.</p>
</div>
<div class="paragraph">
<p>When pipe-lining is enabled requests will be written to connections without waiting for previous responses to return.</p>
</div>
<div class="paragraph">
<p>The number of pipe-lined requests over a single connection is limited by <code><a href="../../apidocs/io/vertx/core/http/HttpClientOptions.html#setPipeliningLimit-int-">setPipeliningLimit</a></code>.
This option defines the maximum number of http requests sent to the server awaiting for a response. This limit ensures the
fairness of the distribution of the client requests over the connections to the same server.</p>
</div>
</div>
<div class="sect2">
<h3 id="_http_2_multiplexing">HTTP/2 multiplexing</h3>
<div class="paragraph">
<p>HTTP/2 advocates to use a single connection to a server, by default the http client uses a single
connection for each server, all the streams to the same server are multiplexed over the same connection.</p>
</div>
<div class="paragraph">
<p>When the clients needs to use more than a single connection and use pooling, the <code><a href="../../apidocs/io/vertx/core/http/HttpClientOptions.html#setHttp2MaxPoolSize-int-">setHttp2MaxPoolSize</a></code>
shall be used.</p>
</div>
<div class="paragraph">
<p>When it is desirable to limit the number of multiplexed streams per connection and use a connection
pool instead of a single connection, <code><a href="../../apidocs/io/vertx/core/http/HttpClientOptions.html#setHttp2MultiplexingLimit-int-">setHttp2MultiplexingLimit</a></code>
can be used.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var clientOptions = HttpClientOptions(
  http2MultiplexingLimit = 10,
  http2MaxPoolSize = 3)

// Uses up to 3 connections and up to 10 streams per connection
var client = vertx.createHttpClient(clientOptions)</code></pre>
</div>
</div>
<div class="paragraph">
<p>The multiplexing limit for a connection is a setting set on the client that limits the number of streams
of a single connection. The effective value can be even lower if the server sets a lower limit
with the <code><a href="../../apidocs/io/vertx/core/http/Http2Settings.html#setMaxConcurrentStreams-long-">SETTINGS_MAX_CONCURRENT_STREAMS</a></code> setting.</p>
</div>
<div class="paragraph">
<p>HTTP/2 connections will not be closed by the client automatically. To close them you can call <code><a href="../../apidocs/io/vertx/core/http/HttpConnection.html#close--">close</a></code>
or close the client instance.</p>
</div>
<div class="paragraph">
<p>Alternatively you can set idle timeout using <code><a href="../../apidocs/io/vertx/core/http/HttpClientOptions.html#setIdleTimeout-int-">setIdleTimeout</a></code> - any
connections not used within this timeout will be closed. Please note the idle timeout value is in seconds not milliseconds.</p>
</div>
</div>
<div class="sect2">
<h3 id="_http_connections">HTTP connections</h3>
<div class="paragraph">
<p>The <code><a href="../../apidocs/io/vertx/core/http/HttpConnection.html">HttpConnection</a></code> offers the API for dealing with HTTP connection events, lifecycle
and settings.</p>
</div>
<div class="paragraph">
<p>HTTP/2 implements fully the <code><a href="../../apidocs/io/vertx/core/http/HttpConnection.html">HttpConnection</a></code> API.</p>
</div>
<div class="paragraph">
<p>HTTP/1.x implements partially the <code><a href="../../apidocs/io/vertx/core/http/HttpConnection.html">HttpConnection</a></code> API: only the close operation,
the close handler and exception handler are implemented. This protocol does not provide semantics for
the other operations.</p>
</div>
<div class="sect3">
<h4 id="_server_connections">Server connections</h4>
<div class="paragraph">
<p>The <code><a href="../../apidocs/io/vertx/core/http/HttpServerRequest.html#connection--">connection</a></code> method returns the request connection on the server:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var connection = request.connection()</code></pre>
</div>
</div>
<div class="paragraph">
<p>A connection handler can be set on the server to be notified of any incoming connection:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var server = vertx.createHttpServer(http2Options)

server.connectionHandler({ connection -&gt;
  println(&quot;A client connected&quot;)
})</code></pre>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_client_connections">Client connections</h4>
<div class="paragraph">
<p>The <code><a href="../../apidocs/io/vertx/core/http/HttpClientRequest.html#connection--">connection</a></code> method returns the request connection on the client:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var connection = request.connection()</code></pre>
</div>
</div>
<div class="paragraph">
<p>A connection handler can be set on the client to be notified when a connection has been established happens:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">client.connectionHandler({ connection -&gt;
  println(&quot;Connected to the server&quot;)
})</code></pre>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_connection_settings">Connection settings</h4>
<div class="paragraph">
<p>The configuration of an HTTP/2 is configured by the <code><a href="../../apidocs/io/vertx/core/http/Http2Settings.html">Http2Settings</a></code> data object.</p>
</div>
<div class="paragraph">
<p>Each endpoint must respect the settings sent by the other side of the connection.</p>
</div>
<div class="paragraph">
<p>When a connection is established, the client and the server exchange initial settings. Initial settings
are configured by <code><a href="../../apidocs/io/vertx/core/http/HttpClientOptions.html#setInitialSettings-io.vertx.core.http.Http2Settings-">setInitialSettings</a></code> on the client and
<code><a href="../../apidocs/io/vertx/core/http/HttpServerOptions.html#setInitialSettings-io.vertx.core.http.Http2Settings-">setInitialSettings</a></code> on the server.</p>
</div>
<div class="paragraph">
<p>The settings can be changed at any time after the connection is established:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">connection.updateSettings(Http2Settings(
  maxConcurrentStreams = 100))</code></pre>
</div>
</div>
<div class="paragraph">
<p>As the remote side should acknowledge on reception of the settings update, it&#8217;s possible to give a callback
to be notified of the acknowledgment:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">connection.updateSettings(Http2Settings(
  maxConcurrentStreams = 100), { ar -&gt;
  if (ar.succeeded()) {
    println(&quot;The settings update has been acknowledged &quot;)
  }
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>Conversely the <code><a href="../../apidocs/io/vertx/core/http/HttpConnection.html#remoteSettingsHandler-io.vertx.core.Handler-">remoteSettingsHandler</a></code> is notified
when the new remote settings are received:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">connection.remoteSettingsHandler({ settings -&gt;
  println(&quot;Received new settings&quot;)
})</code></pre>
</div>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<div class="title">Note</div>
</td>
<td class="content">
this only applies to the HTTP/2 protocol
</td>
</tr>
</table>
</div>
</div>
<div class="sect3">
<h4 id="_connection_ping">Connection ping</h4>
<div class="paragraph">
<p>HTTP/2 connection ping is useful for determining the connection round-trip time or check the connection
validity: <code><a href="../../apidocs/io/vertx/core/http/HttpConnection.html#ping-io.vertx.core.buffer.Buffer-io.vertx.core.Handler-">ping</a></code> sends a {@literal PING} frame to the remote
endpoint:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var data = Buffer.buffer()
for (i in 0 until 8) {
  data.appendByte(i)

}

connection.ping(data, { pong -&gt;
  println(&quot;Remote side replied&quot;)
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>Vert.x will send automatically an acknowledgement when a {@literal PING} frame is received,
an handler can be set to be notified for each ping received:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">connection.pingHandler({ ping -&gt;
  println(&quot;Got pinged by remote side&quot;)
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>The handler is just notified, the acknowledgement is sent whatsoever. Such feature is aimed for
implementing  protocols on top of HTTP/2.</p>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<div class="title">Note</div>
</td>
<td class="content">
this only applies to the HTTP/2 protocol
</td>
</tr>
</table>
</div>
</div>
<div class="sect3">
<h4 id="_connection_shutdown_and_go_away">Connection shutdown and go away</h4>
<div class="paragraph">
<p>Calling <code><a href="../../apidocs/io/vertx/core/http/HttpConnection.html#shutdown--">shutdown</a></code> will send a {@literal GOAWAY} frame to the
remote side of the connection, asking it to stop creating streams: a client will stop doing new requests
and a server will stop pushing responses. After the {@literal GOAWAY} frame is sent, the connection
waits some time (30 seconds by default) until all current streams closed and close the connection:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">connection.shutdown()</code></pre>
</div>
</div>
<div class="paragraph">
<p>The <code><a href="../../apidocs/io/vertx/core/http/HttpConnection.html#shutdownHandler-io.vertx.core.Handler-">shutdownHandler</a></code> notifies when all streams have been closed, the
connection is not yet closed.</p>
</div>
<div class="paragraph">
<p>It&#8217;s possible to just send a {@literal GOAWAY} frame, the main difference with a shutdown is that
it will just tell the remote side of the connection to stop creating new streams without scheduling a connection
close:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">connection.goAway(0)</code></pre>
</div>
</div>
<div class="paragraph">
<p>Conversely, it is also possible to be notified when {@literal GOAWAY} are received:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">connection.goAwayHandler({ goAway -&gt;
  println(&quot;Received a go away frame&quot;)
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>The <code><a href="../../apidocs/io/vertx/core/http/HttpConnection.html#shutdownHandler-io.vertx.core.Handler-">shutdownHandler</a></code> will be called when all current streams
have been closed and the connection can be closed:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">connection.goAway(0)
connection.shutdownHandler({ v -&gt;

  // All streams are closed, close the connection
  connection.close()
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>This applies also when a {@literal GOAWAY} is received.</p>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<div class="title">Note</div>
</td>
<td class="content">
this only applies to the HTTP/2 protocol
</td>
</tr>
</table>
</div>
</div>
<div class="sect3">
<h4 id="_connection_close">Connection close</h4>
<div class="paragraph">
<p>Connection <code><a href="../../apidocs/io/vertx/core/http/HttpConnection.html#close--">close</a></code> closes the connection:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>it closes the socket for HTTP/1.x</p>
</li>
<li>
<p>a shutdown with no delay for HTTP/2, the {@literal GOAWAY} frame will still be sent before the connection is closed. *</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>The <code><a href="../../apidocs/io/vertx/core/http/HttpConnection.html#closeHandler-io.vertx.core.Handler-">closeHandler</a></code> notifies when a connection is closed.</p>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_httpclient_usage">HttpClient usage</h3>
<div class="paragraph">
<p>The HttpClient can be used in a Verticle or embedded.</p>
</div>
<div class="paragraph">
<p>When used in a Verticle, the Verticle <strong>should use its own client instance</strong>.</p>
</div>
<div class="paragraph">
<p>More generally a client should not be shared between different Vert.x contexts as it can lead to unexpected behavior.</p>
</div>
<div class="paragraph">
<p>For example a keep-alive connection will call the client handlers on the context of the request that opened the connection, subsequent requests will use
the same context.</p>
</div>
<div class="paragraph">
<p>When this happen Vert.x detects it and log a warn:</p>
</div>
<div class="listingblock">
<div class="content">
<pre>Reusing a connection with a different context: an HttpClient is probably shared between different Verticles</pre>
</div>
</div>
<div class="paragraph">
<p>The HttpClient can be embedded in a non Vert.x thread like a unit test or a plain java <code>main</code>: the client handlers
will be called by different Vert.x threads and contexts, such contexts are created as needed. For production this
usage is not recommended.</p>
</div>
</div>
<div class="sect2">
<h3 id="_server_sharing">Server sharing</h3>
<div class="paragraph">
<p>When several HTTP servers listen on the same port, vert.x orchestrates the request handling using a
round-robin strategy.</p>
</div>
<div class="paragraph">
<p>Let&#8217;s take a verticle creating a HTTP server such as:</p>
</div>
<div class="listingblock">
<div class="title">io.vertx.examples.http.sharing.HttpServerVerticle</div>
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">vertx.createHttpServer().requestHandler({ request -&gt;
  request.response().end(&quot;Hello from server ${this}&quot;)
}).listen(8080)</code></pre>
</div>
</div>
<div class="paragraph">
<p>This service is listening on the port 8080. So, when this verticle is instantiated multiple times as with:
<code>vertx run io.vertx.examples.http.sharing.HttpServerVerticle -instances 2</code>, what&#8217;s happening ? If both
verticles would bind to the same port, you would receive a socket exception. Fortunately, vert.x is handling
this case for you. When you deploy another server on the same host and port as an existing server it doesn&#8217;t
actually try and create a new server listening on the same host/port. It binds only once to the socket. When
receiving a request it calls the server handlers following a round robin strategy.</p>
</div>
<div class="paragraph">
<p>Let&#8217;s now imagine a client such as:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">vertx.setPeriodic(100, { l -&gt;
  vertx.createHttpClient().getNow(8080, &quot;localhost&quot;, &quot;/&quot;, { resp -&gt;
    resp.bodyHandler({ body -&gt;
      println(body.toString(&quot;ISO-8859-1&quot;))
    })
  })
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>Vert.x delegates the requests to one of the server sequentially:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code>Hello from <a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="254c0b530b400b4d0b560b6d515155764057534057734057514c4649406514">[email&#160;protected]</a>
Hello from <a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="660f48104803480e4815482e121216350314100314300314120f050a032654">[email&#160;protected]</a>
Hello from <a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="b9d097cf97dc97d197ca97f1cdcdc9eadccbcfdccbefdccbcdd0dad5dcf988">[email&#160;protected]</a>
Hello from <a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="ea83c49cc48fc482c499c4a29e9e9ab98f989c8f98bc8f989e8389868faad8">[email&#160;protected]</a>
...</code></pre>
</div>
</div>
<div class="paragraph">
<p>Consequently the servers can scale over available cores while each Vert.x verticle instance remains strictly
single threaded, and you don&#8217;t have to do any special tricks like writing load-balancers in order to scale your
server on your multi-core machine.</p>
</div>
</div>
<div class="sect2">
<h3 id="_using_https_with_vert_x">Using HTTPS with Vert.x</h3>
<div class="paragraph">
<p>Vert.x http servers and clients can be configured to use HTTPS in exactly the same way as net servers.</p>
</div>
<div class="paragraph">
<p>Please see <a href="#ssl">configuring net servers to use SSL</a> for more information.</p>
</div>
<div class="paragraph">
<p>SSL can also be enabled/disabled per request with <code><a href="../../apidocs/io/vertx/core/http/RequestOptions.html">RequestOptions</a></code> or when
specifying a scheme with <code><a href="../../apidocs/io/vertx/core/http/HttpClient.html#requestAbs-io.vertx.core.http.HttpMethod-java.lang.String-">requestAbs</a></code>
method.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">client.getNow(RequestOptions(
  host = &quot;localhost&quot;,
  port = 8080,
  uRI = &quot;/&quot;,
  ssl = true), { response -&gt;
  println(&quot;Received response with status code ${response.statusCode()}&quot;)
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>The <code><a href="../../apidocs/io/vertx/core/http/HttpClientOptions.html#setSsl-boolean-">setSsl</a></code> setting acts as the default client setting.</p>
</div>
<div class="paragraph">
<p>The <code><a href="../../apidocs/io/vertx/core/http/RequestOptions.html#setSsl-java.lang.Boolean-">setSsl</a></code> overrides the default client setting</p>
</div>
<div class="ulist">
<ul>
<li>
<p>setting the value to <code>false</code> will disable SSL/TLS even if the client is configured to use SSL/TLS</p>
</li>
<li>
<p>setting the value to <code>true</code> will enable SSL/TLS  even if the client is configured to not use SSL/TLS, the actual
client SSL/TLS (such as trust, key/certificate, ciphers, ALPN, &#8230;&#8203;) will be reused</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>Likewise <code><a href="../../apidocs/io/vertx/core/http/HttpClient.html#requestAbs-io.vertx.core.http.HttpMethod-java.lang.String-">requestAbs</a></code> scheme
also overrides the default client setting.</p>
</div>
<div class="sect3">
<h4 id="_server_name_indication_sni_2">Server Name Indication (SNI)</h4>
<div class="paragraph">
<p>Vert.x http servers can be configured to use SNI in exactly the same way as {@linkplain io.vertx.core.net net servers}.</p>
</div>
<div class="paragraph">
<p>Vert.x http client will present the actual hostname as <em>server name</em> during the TLS handshake.</p>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_websockets">WebSockets</h3>
<div class="paragraph">
<p><a href="https://en.wikipedia.org/wiki/WebSocket">WebSockets</a> are a web technology that allows a full duplex socket-like
connection between HTTP servers and HTTP clients (typically browsers).</p>
</div>
<div class="paragraph">
<p>Vert.x supports WebSockets on both the client and server-side.</p>
</div>
<div class="sect3">
<h4 id="_websockets_on_the_server">WebSockets on the server</h4>
<div class="paragraph">
<p>There are two ways of handling WebSockets on the server side.</p>
</div>
<div class="sect4">
<h5 id="_websocket_handler">WebSocket handler</h5>
<div class="paragraph">
<p>The first way involves providing a <code><a href="../../apidocs/io/vertx/core/http/HttpServer.html#webSocketHandler-io.vertx.core.Handler-">webSocketHandler</a></code>
on the server instance.</p>
</div>
<div class="paragraph">
<p>When a WebSocket connection is made to the server, the handler will be called, passing in an instance of
<code><a href="../../apidocs/io/vertx/core/http/ServerWebSocket.html">ServerWebSocket</a></code>.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">server.webSocketHandler({ webSocket -&gt;
  println(&quot;Connected!&quot;)
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>You can choose to reject the WebSocket by calling <code><a href="../../apidocs/io/vertx/core/http/ServerWebSocket.html#reject--">reject</a></code>.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">server.webSocketHandler({ webSocket -&gt;
  if (webSocket.path() == &quot;/myapi&quot;) {
    webSocket.reject()
  } else {
    // Do something
  }
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>You can perform an asynchronous handshake by calling <code><a href="../../apidocs/io/vertx/core/http/ServerWebSocket.html#setHandshake-io.vertx.core.Future-io.vertx.core.Handler-">setHandshake</a></code> with a <code>Future</code>:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">server.webSocketHandler({ webSocket -&gt;
  var promise = Promise.promise&lt;Any&gt;()
  webSocket.setHandshake(promise.future())
  authenticate(webSocket.headers(), { ar -&gt;
    if (ar.succeeded()) {
      // Terminate the handshake with the status code 101 (Switching Protocol)
      // Reject the handshake with 401 (Unauthorized)
      promise.complete(ar.succeeded() ? 101 : 401)
    } else {
      // Will send a 500 error
      promise.fail(ar.cause())
    }
  })
})</code></pre>
</div>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<div class="title">Note</div>
</td>
<td class="content">
the WebSocket will be automatically accepted after the handler is called unless the WebSocket&#8217;s handshake has been set
</td>
</tr>
</table>
</div>
</div>
<div class="sect4">
<h5 id="_upgrading_to_websocket">Upgrading to WebSocket</h5>
<div class="paragraph">
<p>The second way of handling WebSockets is to handle the HTTP Upgrade request that was sent from the client, and
call <code><a href="../../apidocs/io/vertx/core/http/HttpServerRequest.html#upgrade--">upgrade</a></code> on the server request.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">server.requestHandler({ request -&gt;
  if (request.path() == &quot;/myapi&quot;) {

    var webSocket = request.upgrade()
    // Do something

  } else {
    // Reject
    request.response().setStatusCode(400).end()
  }
})</code></pre>
</div>
</div>
</div>
<div class="sect4">
<h5 id="_the_server_websocket">The server WebSocket</h5>
<div class="paragraph">
<p>The <code><a href="../../apidocs/io/vertx/core/http/ServerWebSocket.html">ServerWebSocket</a></code> instance enables you to retrieve the <code><a href="../../apidocs/io/vertx/core/http/WebSocketBase.html#headers--">headers</a></code>,
<code><a href="../../apidocs/io/vertx/core/http/ServerWebSocket.html#path--">path</a></code>, <code><a href="../../apidocs/io/vertx/core/http/ServerWebSocket.html#query--">query</a></code> and
<code><a href="../../apidocs/io/vertx/core/http/ServerWebSocket.html#uri--">URI</a></code> of the HTTP request of the WebSocket handshake.</p>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_websockets_on_the_client">WebSockets on the client</h4>
<div class="paragraph">
<p>The Vert.x <code><a href="../../apidocs/io/vertx/core/http/HttpClient.html">HttpClient</a></code> supports WebSockets.</p>
</div>
<div class="paragraph">
<p>You can connect a WebSocket to a server using one of the <code><a href="../../apidocs/io/vertx/core/http/HttpClient.html#webSocket-int-java.lang.String-java.lang.String-io.vertx.core.Handler-">webSocket</a></code> operations and
providing a handler.</p>
</div>
<div class="paragraph">
<p>The handler will be called with an instance of <code><a href="../../apidocs/io/vertx/core/http/WebSocket.html">WebSocket</a></code> when the connection has been made:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">client.webSocket(&quot;/some-uri&quot;, { res -&gt;
  if (res.succeeded()) {
    var ws = res.result()
    println(&quot;Connected!&quot;)
  }
})</code></pre>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_writing_messages_to_websockets">Writing messages to WebSockets</h4>
<div class="paragraph">
<p>If you wish to write a single WebSocket message to the WebSocket you can do this with
<code><a href="../../apidocs/io/vertx/core/http/WebSocket.html#writeBinaryMessage-io.vertx.core.buffer.Buffer-">writeBinaryMessage</a></code> or
<code><a href="../../apidocs/io/vertx/core/http/WebSocket.html#writeTextMessage-java.lang.String-">writeTextMessage</a></code> :</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">// Write a simple binary message
var buffer = Buffer.buffer().appendInt(123).appendFloat(1.23f)
webSocket.writeBinaryMessage(buffer)

// Write a simple text message
var message = &quot;hello&quot;
webSocket.writeTextMessage(message)</code></pre>
</div>
</div>
<div class="paragraph">
<p>If the WebSocket message is larger than the maximum WebSocket frame size as configured with
<code><a href="../../apidocs/io/vertx/core/http/HttpClientOptions.html#setMaxWebSocketFrameSize-int-">setMaxWebSocketFrameSize</a></code>
then Vert.x will split it into multiple WebSocket frames before sending it on the wire.</p>
</div>
</div>
<div class="sect3">
<h4 id="_writing_frames_to_websockets">Writing frames to WebSockets</h4>
<div class="paragraph">
<p>A WebSocket message can be composed of multiple frames. In this case the first frame is either a <em>binary</em> or <em>text</em> frame
followed by zero or more <em>continuation</em> frames.</p>
</div>
<div class="paragraph">
<p>The last frame in the message is marked as <em>final</em>.</p>
</div>
<div class="paragraph">
<p>To send a message consisting of multiple frames you create frames using
<code><a href="../../apidocs/io/vertx/core/http/WebSocketFrame.html#binaryFrame-io.vertx.core.buffer.Buffer-boolean-">WebSocketFrame.binaryFrame</a></code>
, <code><a href="../../apidocs/io/vertx/core/http/WebSocketFrame.html#textFrame-java.lang.String-boolean-">WebSocketFrame.textFrame</a></code> or
<code><a href="../../apidocs/io/vertx/core/http/WebSocketFrame.html#continuationFrame-io.vertx.core.buffer.Buffer-boolean-">WebSocketFrame.continuationFrame</a></code> and write them
to the WebSocket using <code><a href="../../apidocs/io/vertx/core/http/WebSocket.html#writeFrame-io.vertx.core.http.WebSocketFrame-">writeFrame</a></code>.</p>
</div>
<div class="paragraph">
<p>Here&#8217;s an example for binary frames:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var frame1 = WebSocketFrame.binaryFrame(buffer1, false)
webSocket.writeFrame(frame1)

var frame2 = WebSocketFrame.continuationFrame(buffer2, false)
webSocket.writeFrame(frame2)

// Write the final frame
var frame3 = WebSocketFrame.continuationFrame(buffer2, true)
webSocket.writeFrame(frame3)</code></pre>
</div>
</div>
<div class="paragraph">
<p>In many cases you just want to send a WebSocket message that consists of a single final frame, so we provide a couple
of shortcut methods to do that with <code><a href="../../apidocs/io/vertx/core/http/WebSocket.html#writeFinalBinaryFrame-io.vertx.core.buffer.Buffer-">writeFinalBinaryFrame</a></code>
and <code><a href="../../apidocs/io/vertx/core/http/WebSocket.html#writeFinalTextFrame-java.lang.String-">writeFinalTextFrame</a></code>.</p>
</div>
<div class="paragraph">
<p>Here&#8217;s an example:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">// Send a WebSocket messages consisting of a single final text frame:

webSocket.writeFinalTextFrame(&quot;Geronimo!&quot;)

// Send a WebSocket messages consisting of a single final binary frame:

var buff = Buffer.buffer().appendInt(12).appendString(&quot;foo&quot;)

webSocket.writeFinalBinaryFrame(buff)</code></pre>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_reading_frames_from_websockets">Reading frames from WebSockets</h4>
<div class="paragraph">
<p>To read frames from a WebSocket you use the <code><a href="../../apidocs/io/vertx/core/http/WebSocket.html#frameHandler-io.vertx.core.Handler-">frameHandler</a></code>.</p>
</div>
<div class="paragraph">
<p>The frame handler will be called with instances of <code><a href="../../apidocs/io/vertx/core/http/WebSocketFrame.html">WebSocketFrame</a></code> when a frame arrives,
for example:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">webSocket.frameHandler({ frame -&gt;
  println(&quot;Received a frame of size!&quot;)
})</code></pre>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_closing_websockets">Closing WebSockets</h4>
<div class="paragraph">
<p>Use <code><a href="../../apidocs/io/vertx/core/http/WebSocketBase.html#close--">close</a></code> to close the WebSocket connection when you have finished with it.</p>
</div>
</div>
<div class="sect3">
<h4 id="_piping_websockets">Piping WebSockets</h4>
<div class="paragraph">
<p>The <code><a href="../../apidocs/io/vertx/core/http/WebSocket.html">WebSocket</a></code> instance is also a <code><a href="../../apidocs/io/vertx/core/streams/ReadStream.html">ReadStream</a></code> and a
<code><a href="../../apidocs/io/vertx/core/streams/WriteStream.html">WriteStream</a></code> so it can be used with pipes.</p>
</div>
<div class="paragraph">
<p>When using a WebSocket as a write stream or a read stream it can only be used with WebSockets connections that are
used with binary frames that are no split over multiple frames.</p>
</div>
</div>
<div class="sect3">
<h4 id="_event_bus_handlers">Event bus handlers</h4>
<div class="paragraph">
<p>Every WebSocket automatically registers two handler on the event bus, and when any data are received in this handler,
it writes them to itself. Those are local subscriptions not routed on the cluster.</p>
</div>
<div class="paragraph">
<p>This enables you to write data to a WebSocket which is potentially in a completely different verticle sending data
to the address of that handler.</p>
</div>
<div class="paragraph">
<p>The addresses of the handlers are given by <code><a href="../../apidocs/io/vertx/core/http/WebSocketBase.html#binaryHandlerID--">binaryHandlerID</a></code> and
<code><a href="../../apidocs/io/vertx/core/http/WebSocketBase.html#textHandlerID--">textHandlerID</a></code>.</p>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_using_a_proxy_for_http_https_connections">Using a proxy for HTTP/HTTPS connections</h3>
<div class="paragraph">
<p>The http client supports accessing http/https URLs via a HTTP proxy (e.g. Squid) or <em>SOCKS4a</em> or <em>SOCKS5</em> proxy.
The CONNECT protocol uses HTTP/1.x but can connect to HTTP/1.x and HTTP/2 servers.</p>
</div>
<div class="paragraph">
<p>Connecting to h2c (unencrypted HTTP/2 servers) is likely not supported by http proxies since they will support
HTTP/1.1 only.</p>
</div>
<div class="paragraph">
<p>The proxy can be configured in the <code><a href="../../apidocs/io/vertx/core/http/HttpClientOptions.html">HttpClientOptions</a></code> by setting a
<code><a href="../../apidocs/io/vertx/core/net/ProxyOptions.html">ProxyOptions</a></code> object containing proxy type, hostname, port and optionally username and password.</p>
</div>
<div class="paragraph">
<p>Here&#8217;s an example of using an HTTP proxy:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var options = HttpClientOptions(
  proxyOptions = ProxyOptions(
    type = ProxyType.HTTP,
    host = &quot;localhost&quot;,
    port = 3128,
    username = &quot;username&quot;,
    password = &quot;secret&quot;))
var client = vertx.createHttpClient(options)</code></pre>
</div>
</div>
<div class="paragraph">
<p>When the client connects to an http URL, it connects to the proxy server and provides the full URL in the
HTTP request ("GET <a href="http://www.somehost.com/path/file.html" class="bare">http://www.somehost.com/path/file.html</a> HTTP/1.1").</p>
</div>
<div class="paragraph">
<p>When the client connects to an https URL, it asks the proxy to create a tunnel to the remote host with
the CONNECT method.</p>
</div>
<div class="paragraph">
<p>For a SOCKS5 proxy:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var options = HttpClientOptions(
  proxyOptions = ProxyOptions(
    type = ProxyType.SOCKS5,
    host = &quot;localhost&quot;,
    port = 1080,
    username = &quot;username&quot;,
    password = &quot;secret&quot;))
var client = vertx.createHttpClient(options)</code></pre>
</div>
</div>
<div class="paragraph">
<p>The DNS resolution is always done on the proxy server, to achieve the functionality of a SOCKS4 client, it is necessary
to resolve the DNS address locally.</p>
</div>
<div class="sect3">
<h4 id="_handling_of_other_protocols">Handling of other protocols</h4>
<div class="paragraph">
<p>The HTTP proxy implementation supports getting ftp:// urls if the proxy supports
that, which isn&#8217;t available in non-proxy getAbs requests.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var options = HttpClientOptions(
  proxyOptions = ProxyOptions(
    type = ProxyType.HTTP))
var client = vertx.createHttpClient(options)
client.getAbs(&quot;ftp://ftp.gnu.org/gnu/&quot;, { response -&gt;
  println(&quot;Received response with status code ${response.statusCode()}&quot;)
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>Support for other protocols is not available since java.net.URL does not
support them (gopher:// for example).</p>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_automatic_clean_up_in_verticles_4">Automatic clean-up in verticles</h3>
<div class="paragraph">
<p>If you&#8217;re creating http servers and clients from inside verticles, those servers and clients will be automatically closed
when the verticle is undeployed.</p>
</div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_using_the_shareddata_api">Using the SharedData API</h2>
<div class="sectionbody">
<div class="paragraph">
<p>As its name suggests, the <code><a href="../../apidocs/io/vertx/core/shareddata/SharedData.html">SharedData</a></code> API allows you to safely share data between:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>different parts of your application, or</p>
</li>
<li>
<p>different applications in the same Vert.x instance, or</p>
</li>
<li>
<p>different applications across a cluster of Vert.x instances.</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>In practice, it provides:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>synchronous maps (local-only)</p>
</li>
<li>
<p>asynchronous maps</p>
</li>
<li>
<p>asynchronous locks</p>
</li>
<li>
<p>asynchronous counters</p>
</li>
</ul>
</div>
<div class="admonitionblock important">
<table>
<tr>
<td class="icon">
<div class="title">Important</div>
</td>
<td class="content">
The behavior of the distributed data structure depends on the cluster manager you use.
Backup (replication) and behavior when a network partition is faced are defined by the cluster manager and its configuration.
Please refer to the cluster manager documentation as well as to the underlying framework manual.
</td>
</tr>
</table>
</div>
<div class="sect2">
<h3 id="_local_maps">Local maps</h3>
<div class="paragraph">
<p><code><a href="../../apidocs/io/vertx/core/shareddata/LocalMap.html">Local maps</a></code> allow you to share data safely between different event loops (e.g. different verticles) in the same Vert.x instance.</p>
</div>
<div class="paragraph">
<p>They only allow certain data types to be used as keys and values:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>immutable types (e.g. strings, booleans, &#8230;&#8203; etc), or</p>
</li>
<li>
<p>types implementing the <code><a href="../../apidocs/io/vertx/core/shareddata/Shareable.html">Shareable</a></code> interface (buffers, JSON arrays, JSON objects, or your own shareable objects).</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>In the latter case the key/value will be copied before putting it into the map.</p>
</div>
<div class="paragraph">
<p>This way we can ensure there is no <em>shared access to mutable state</em> between different threads in your Vert.x application.
And you won&#8217;t have to worry about protecting that state by synchronising access to it.</p>
</div>
<div class="paragraph">
<p>Here&#8217;s an example of using a shared local map:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var sharedData = vertx.sharedData()

var map1 = sharedData.getLocalMap&lt;Any, Any&gt;(&quot;mymap1&quot;)

map1.put(&quot;foo&quot;, &quot;bar&quot;)

var map2 = sharedData.getLocalMap&lt;Any, Any&gt;(&quot;mymap2&quot;)

map2.put(&quot;eek&quot;, Buffer.buffer().appendInt(123))

// Then... in another part of your application:

map1 = sharedData.getLocalMap&lt;Any, Any&gt;(&quot;mymap1&quot;)

var val = map1.get(&quot;foo&quot;)

map2 = sharedData.getLocalMap&lt;Any, Any&gt;(&quot;mymap2&quot;)

var buff = map2.get(&quot;eek&quot;)</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_asynchronous_shared_maps">Asynchronous shared maps</h3>
<div class="paragraph">
<p><code><a href="../../apidocs/io/vertx/core/shareddata/AsyncMap.html">Asynchronous shared maps</a></code> allow data to be put in the map and retrieved locally or from any other node.</p>
</div>
<div class="paragraph">
<p>This makes them really useful for things like storing session state in a farm of servers hosting a Vert.x Web application.</p>
</div>
<div class="paragraph">
<p>Getting the map is asynchronous and the result is returned to you in the handler that you specify. Here&#8217;s an example:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var sharedData = vertx.sharedData()

sharedData.getAsyncMap&lt;String, String&gt;(&quot;mymap&quot;, { res -&gt;
  if (res.succeeded()) {
    var map = res.result()
  } else {
    // Something went wrong!
  }
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>When Vert.x is clustered, data that you put into the map is accessible locally as well as on any of the other cluster members.</p>
</div>
<div class="admonitionblock important">
<table>
<tr>
<td class="icon">
<div class="title">Important</div>
</td>
<td class="content">
In clustered mode, asynchronous shared maps rely on distributed data structures provided by the cluster manager.
Beware that the latency relative to asynchronous shared map operations can be much higher in clustered than in local mode.
</td>
</tr>
</table>
</div>
<div class="paragraph">
<p>If your application doesn&#8217;t need data to be shared with every other node, you can retrieve a local-only map:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var sharedData = vertx.sharedData()

sharedData.getLocalAsyncMap&lt;String, String&gt;(&quot;mymap&quot;, { res -&gt;
  if (res.succeeded()) {
    // Local-only async map
    var map = res.result()
  } else {
    // Something went wrong!
  }
})</code></pre>
</div>
</div>
<div class="sect3">
<h4 id="_putting_data_in_a_map">Putting data in a map</h4>
<div class="paragraph">
<p>You put data in a map with <code><a href="../../apidocs/io/vertx/core/shareddata/AsyncMap.html#put-java.lang.Object-java.lang.Object-io.vertx.core.Handler-">put</a></code>.</p>
</div>
<div class="paragraph">
<p>The actual put is asynchronous and the handler is notified once it is complete:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">map.put(&quot;foo&quot;, &quot;bar&quot;, { resPut -&gt;
  if (resPut.succeeded()) {
    // Successfully put the value
  } else {
    // Something went wrong!
  }
})</code></pre>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_getting_data_from_a_map">Getting data from a map</h4>
<div class="paragraph">
<p>You get data from a map with <code><a href="../../apidocs/io/vertx/core/shareddata/AsyncMap.html#get-java.lang.Object-io.vertx.core.Handler-">get</a></code>.</p>
</div>
<div class="paragraph">
<p>The actual get is asynchronous and the handler is notified with the result some time later:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">map.get(&quot;foo&quot;, { resGet -&gt;
  if (resGet.succeeded()) {
    // Successfully got the value
    var val = resGet.result()
  } else {
    // Something went wrong!
  }
})</code></pre>
</div>
</div>
<div class="sect4">
<h5 id="_other_map_operations">Other map operations</h5>
<div class="paragraph">
<p>You can also remove entries from an asynchronous map, clear them and get the size.</p>
</div>
<div class="paragraph">
<p>See the <code><a href="../../apidocs/io/vertx/core/shareddata/AsyncMap.html">API docs</a></code> for a detailed list of map operations.</p>
</div>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_asynchronous_locks">Asynchronous locks</h3>
<div class="paragraph">
<p><code><a href="../../apidocs/io/vertx/core/shareddata/Lock.html">Asynchronous locks</a></code> allow you to obtain exclusive locks locally or across the cluster.
This is useful when you want to do something or access a resource on only one node of a cluster at any one time.</p>
</div>
<div class="paragraph">
<p>Asynchronous locks have an asynchronous API unlike most lock APIs which block the calling thread until the lock is obtained.</p>
</div>
<div class="paragraph">
<p>To obtain a lock use <code><a href="../../apidocs/io/vertx/core/shareddata/SharedData.html#getLock-java.lang.String-io.vertx.core.Handler-">getLock</a></code>.
This won&#8217;t block, but when the lock is available, the handler will be called with an instance of <code><a href="../../apidocs/io/vertx/core/shareddata/Lock.html">Lock</a></code>, signalling that you now own the lock.</p>
</div>
<div class="paragraph">
<p>While you own the lock, no other caller, locally or on the cluster, will be able to obtain the lock.</p>
</div>
<div class="paragraph">
<p>When you&#8217;ve finished with the lock, you call <code><a href="../../apidocs/io/vertx/core/shareddata/Lock.html#release--">release</a></code> to release it, so another caller can obtain it:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var sharedData = vertx.sharedData()

sharedData.getLock(&quot;mylock&quot;, { res -&gt;
  if (res.succeeded()) {
    // Got the lock!
    var lock = res.result()

    // 5 seconds later we release the lock so someone else can get it

    vertx.setTimer(5000, { tid -&gt;
      lock.release()
    })

  } else {
    // Something went wrong
  }
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>You can also get a lock with a timeout. If it fails to obtain the lock within the timeout the handler will be called with a failure:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var sharedData = vertx.sharedData()

sharedData.getLockWithTimeout(&quot;mylock&quot;, 10000, { res -&gt;
  if (res.succeeded()) {
    // Got the lock!
    var lock = res.result()

  } else {
    // Failed to get lock
  }
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>See the <code><a href="../../apidocs/io/vertx/core/shareddata/Lock.html">API docs</a></code> for a detailed list of lock operations.</p>
</div>
<div class="admonitionblock important">
<table>
<tr>
<td class="icon">
<div class="title">Important</div>
</td>
<td class="content">
In clustered mode, asynchronous locks rely on distributed data structures provided by the cluster manager.
Beware that the latency relative to asynchronous shared lock operations can be much higher in clustered than in local mode.
</td>
</tr>
</table>
</div>
<div class="paragraph">
<p>If your application doesn&#8217;t need the lock to be shared with every other node, you can retrieve a local-only lock:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var sharedData = vertx.sharedData()

sharedData.getLocalLock(&quot;mylock&quot;, { res -&gt;
  if (res.succeeded()) {
    // Local-only lock
    var lock = res.result()

    // 5 seconds later we release the lock so someone else can get it

    vertx.setTimer(5000, { tid -&gt;
      lock.release()
    })

  } else {
    // Something went wrong
  }
})</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_asynchronous_counters">Asynchronous counters</h3>
<div class="paragraph">
<p>It&#8217;s often useful to maintain an atomic counter locally or across the different nodes of your application.</p>
</div>
<div class="paragraph">
<p>You can do this with <code><a href="../../apidocs/io/vertx/core/shareddata/Counter.html">Counter</a></code>.</p>
</div>
<div class="paragraph">
<p>You obtain an instance with <code><a href="../../apidocs/io/vertx/core/shareddata/SharedData.html#getCounter-java.lang.String-io.vertx.core.Handler-">getCounter</a></code>:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var sharedData = vertx.sharedData()

sharedData.getCounter(&quot;mycounter&quot;, { res -&gt;
  if (res.succeeded()) {
    var counter = res.result()
  } else {
    // Something went wrong!
  }
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>Once you have an instance you can retrieve the current count, atomically increment it, decrement and add a value to
it using the various methods.</p>
</div>
<div class="paragraph">
<p>See the <code><a href="../../apidocs/io/vertx/core/shareddata/Counter.html">API docs</a></code> for a detailed list of counter operations.</p>
</div>
<div class="admonitionblock important">
<table>
<tr>
<td class="icon">
<div class="title">Important</div>
</td>
<td class="content">
In clustered mode, asynchronous counters rely on distributed data structures provided by the cluster manager.
Beware that the latency relative to asynchronous shared counter operations can be much higher in clustered than in local mode.
</td>
</tr>
</table>
</div>
<div class="paragraph">
<p>If your application doesn&#8217;t need the counter to be shared with every other node, you can retrieve a local-only counter:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var sharedData = vertx.sharedData()

sharedData.getLocalCounter(&quot;mycounter&quot;, { res -&gt;
  if (res.succeeded()) {
    // Local-only counter
    var counter = res.result()
  } else {
    // Something went wrong!
  }
})</code></pre>
</div>
</div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_using_the_file_system_with_vert_x">Using the file system with Vert.x</h2>
<div class="sectionbody">
<div class="paragraph">
<p>The Vert.x <code><a href="../../apidocs/io/vertx/core/file/FileSystem.html">FileSystem</a></code> object provides many operations for manipulating the file system.</p>
</div>
<div class="paragraph">
<p>There is one file system object per Vert.x instance, and you obtain it with  <code><a href="../../apidocs/io/vertx/core/Vertx.html#fileSystem--">fileSystem</a></code>.</p>
</div>
<div class="paragraph">
<p>A blocking and a non blocking version of each operation is provided. The non blocking versions take a handler
which is called when the operation completes or an error occurs.</p>
</div>
<div class="paragraph">
<p>Here&#8217;s an example of an asynchronous copy of a file:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var fs = vertx.fileSystem()

// Copy file from foo.txt to bar.txt
fs.copy(&quot;foo.txt&quot;, &quot;bar.txt&quot;, { res -&gt;
  if (res.succeeded()) {
    // Copied ok!
  } else {
    // Something went wrong
  }
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>The blocking versions are named <code>xxxBlocking</code> and return the results or throw exceptions directly. In many
cases, depending on the operating system and file system, some of the potentially blocking operations can return
quickly, which is why we provide them, but it&#8217;s highly recommended that you test how long they take to return in your
particular application before using them from an event loop, so as not to break the Golden Rule.</p>
</div>
<div class="paragraph">
<p>Here&#8217;s the copy using the blocking API:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var fs = vertx.fileSystem()

// Copy file from foo.txt to bar.txt synchronously
fs.copyBlocking(&quot;foo.txt&quot;, &quot;bar.txt&quot;)</code></pre>
</div>
</div>
<div class="paragraph">
<p>Many operations exist to copy, move, truncate, chmod and many other file operations. We won&#8217;t list them all here,
please consult the <code><a href="../../apidocs/io/vertx/core/file/FileSystem.html">API docs</a></code> for the full list.</p>
</div>
<div class="paragraph">
<p>Let&#8217;s see a couple of examples using asynchronous methods:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">// Read a file
vertx.fileSystem().readFile(&quot;target/classes/readme.txt&quot;, { result -&gt;
  if (result.succeeded()) {
    println(result.result())
  } else {
    System.err.println(&quot;Oh oh ...${result.cause()}&quot;)
  }
})

// Copy a file
vertx.fileSystem().copy(&quot;target/classes/readme.txt&quot;, &quot;target/classes/readme2.txt&quot;, { result -&gt;
  if (result.succeeded()) {
    println(&quot;File copied&quot;)
  } else {
    System.err.println(&quot;Oh oh ...${result.cause()}&quot;)
  }
})

// Write a file
vertx.fileSystem().writeFile(&quot;target/classes/hello.txt&quot;, Buffer.buffer(&quot;Hello&quot;), { result -&gt;
  if (result.succeeded()) {
    println(&quot;File written&quot;)
  } else {
    System.err.println(&quot;Oh oh ...${result.cause()}&quot;)
  }
})

// Check existence and delete
vertx.fileSystem().exists(&quot;target/classes/junk.txt&quot;, { result -&gt;
  if (result.succeeded() &amp;&amp; result.result()) {
    vertx.fileSystem().delete(&quot;target/classes/junk.txt&quot;, { r -&gt;
      println(&quot;File deleted&quot;)
    })
  } else {
    System.err.println(&quot;Oh oh ... - cannot delete the file: ${result.cause()}&quot;)
  }
})</code></pre>
</div>
</div>
<div class="sect2">
<h3 id="_asynchronous_files">Asynchronous files</h3>
<div class="paragraph">
<p>Vert.x provides an asynchronous file abstraction that allows you to manipulate a file on the file system.</p>
</div>
<div class="paragraph">
<p>You open an <code><a href="../../apidocs/io/vertx/core/file/AsyncFile.html">AsyncFile</a></code> as follows:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var options = OpenOptions()
fileSystem.open(&quot;myfile.txt&quot;, options, { res -&gt;
  if (res.succeeded()) {
    var file = res.result()
  } else {
    // Something went wrong!
  }
})</code></pre>
</div>
</div>
<div class="paragraph">
<p><code>AsyncFile</code> implements <code>ReadStream</code> and <code>WriteStream</code> so you can <em>pipe</em>
files to and from other stream objects such as net sockets, http requests and responses, and WebSockets.</p>
</div>
<div class="paragraph">
<p>They also allow you to read and write directly to them.</p>
</div>
<div class="sect3">
<h4 id="_random_access_writes">Random access writes</h4>
<div class="paragraph">
<p>To use an <code>AsyncFile</code> for random access writing you use the
<code><a href="../../apidocs/io/vertx/core/file/AsyncFile.html#write-io.vertx.core.buffer.Buffer-long-io.vertx.core.Handler-">write</a></code> method.</p>
</div>
<div class="paragraph">
<p>The parameters to the method are:</p>
</div>
<div class="ulist">
<ul>
<li>
<p><code>buffer</code>: the buffer to write.</p>
</li>
<li>
<p><code>position</code>: an integer position in the file where to write the buffer. If the position is greater or equal to the size
of the file, the file will be enlarged to accommodate the offset.</p>
</li>
<li>
<p><code>handler</code>: the result handler</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>Here is an example of random access writes:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">vertx.fileSystem().open(&quot;target/classes/hello.txt&quot;, OpenOptions(), { result -&gt;
  if (result.succeeded()) {
    var file = result.result()
    var buff = Buffer.buffer(&quot;foo&quot;)
    for (i in 0 until 5) {
      file.write(buff, buff.length() * i, { ar -&gt;
        if (ar.succeeded()) {
          println(&quot;Written ok!&quot;)
          // etc
        } else {
          System.err.println(&quot;Failed to write: ${ar.cause()}&quot;)
        }
      })

    }

  } else {
    System.err.println(&quot;Cannot open file ${result.cause()}&quot;)
  }
})</code></pre>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_random_access_reads">Random access reads</h4>
<div class="paragraph">
<p>To use an <code>AsyncFile</code> for random access reads you use the
<code><a href="../../apidocs/io/vertx/core/file/AsyncFile.html#read-io.vertx.core.buffer.Buffer-int-long-int-io.vertx.core.Handler-">read</a></code>
method.</p>
</div>
<div class="paragraph">
<p>The parameters to the method are:</p>
</div>
<div class="ulist">
<ul>
<li>
<p><code>buffer</code>: the buffer into which the data will be read.</p>
</li>
<li>
<p><code>offset</code>: an integer offset into the buffer where the read data will be placed.</p>
</li>
<li>
<p><code>position</code>: the position in the file where to read data from.</p>
</li>
<li>
<p><code>length</code>: the number of bytes of data to read</p>
</li>
<li>
<p><code>handler</code>: the result handler</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>Here&#8217;s an example of random access reads:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">vertx.fileSystem().open(&quot;target/classes/les_miserables.txt&quot;, OpenOptions(), { result -&gt;
  if (result.succeeded()) {
    var file = result.result()
    var buff = Buffer.buffer(1000)
    for (i in 0 until 10) {
      file.read(buff, i * 100, i * 100, 100, { ar -&gt;
        if (ar.succeeded()) {
          println(&quot;Read ok!&quot;)
        } else {
          System.err.println(&quot;Failed to write: ${ar.cause()}&quot;)
        }
      })

    }

  } else {
    System.err.println(&quot;Cannot open file ${result.cause()}&quot;)
  }
})</code></pre>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_opening_options">Opening Options</h4>
<div class="paragraph">
<p>When opening an <code>AsyncFile</code>, you pass an <code><a href="../../apidocs/io/vertx/core/file/OpenOptions.html">OpenOptions</a></code> instance.
These options describe the behavior of the file access. For instance, you can configure the file permissions with the
<code><a href="../../apidocs/io/vertx/core/file/OpenOptions.html#setRead-boolean-">setRead</a></code>, <code><a href="../../apidocs/io/vertx/core/file/OpenOptions.html#setWrite-boolean-">setWrite</a></code>
and <code><a href="../../apidocs/io/vertx/core/file/OpenOptions.html#setPerms-java.lang.String-">setPerms</a></code> methods.</p>
</div>
<div class="paragraph">
<p>You can also configure the behavior if the open file already exists with
<code><a href="../../apidocs/io/vertx/core/file/OpenOptions.html#setCreateNew-boolean-">setCreateNew</a></code> and
<code><a href="../../apidocs/io/vertx/core/file/OpenOptions.html#setTruncateExisting-boolean-">setTruncateExisting</a></code>.</p>
</div>
<div class="paragraph">
<p>You can also mark the file to be deleted on
close or when the JVM is shutdown with <code><a href="../../apidocs/io/vertx/core/file/OpenOptions.html#setDeleteOnClose-boolean-">setDeleteOnClose</a></code>.</p>
</div>
</div>
<div class="sect3">
<h4 id="_flushing_data_to_underlying_storage">Flushing data to underlying storage.</h4>
<div class="paragraph">
<p>In the <code>OpenOptions</code>, you can enable/disable the automatic synchronisation of the content on every write using
<code><a href="../../apidocs/io/vertx/core/file/OpenOptions.html#setDsync-boolean-">setDsync</a></code>. In that case, you can manually flush any writes from the OS
cache by calling the <code><a href="../../apidocs/io/vertx/core/file/AsyncFile.html#flush--">flush</a></code> method.</p>
</div>
<div class="paragraph">
<p>This method can also be called with an handler which will be called when the flush is complete.</p>
</div>
</div>
<div class="sect3">
<h4 id="_using_asyncfile_as_readstream_and_writestream">Using AsyncFile as ReadStream and WriteStream</h4>
<div class="paragraph">
<p><code>AsyncFile</code> implements <code>ReadStream</code> and <code>WriteStream</code>. You can then
use them with a <em>pipe</em> to pipe data to and from other read and write streams. For example, this would
copy the content to another <code>AsyncFile</code>:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var output = vertx.fileSystem().openBlocking(&quot;target/classes/plagiary.txt&quot;, OpenOptions())

vertx.fileSystem().open(&quot;target/classes/les_miserables.txt&quot;, OpenOptions(), { result -&gt;
  if (result.succeeded()) {
    var file = result.result()
    file.pipeTo(output, { ar -&gt;
      if (ar.succeeded()) {
        println(&quot;Copy done&quot;)
      }
    })
  } else {
    System.err.println(&quot;Cannot open file ${result.cause()}&quot;)
  }
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>You can also use the <em>pipe</em> to write file content into HTTP responses, or more generally in any
<code>WriteStream</code>.</p>
</div>
</div>
<div class="sect3">
<h4 id="classpath">Accessing files from the classpath</h4>
<div class="paragraph">
<p>When vert.x cannot find the file on the filesystem it tries to resolve the
file from the class path. Note that classpath resource paths never start with
a <code>/</code>.</p>
</div>
<div class="paragraph">
<p>Due to the fact that Java does not offer async access to classpath
resources, the file is copied to the filesystem in a worker thread when the
classpath resource is accessed the very first time and served from there
asynchronously. When the same resource is accessed a second time, the file from
the filesystem is served directly from the filesystem. The original content
is served even if the classpath resource changes (e.g. in a development
system).</p>
</div>
<div class="paragraph">
<p>This caching behaviour can be set on the <code><a href="../../apidocs/io/vertx/core/file/FileSystemOptions.html#setFileCachingEnabled-boolean-">setFileCachingEnabled</a></code>
option. The default value of this option is <code>true</code> unless the system property <code>vertx.disableFileCaching</code> is
defined.</p>
</div>
<div class="paragraph">
<p>The path where the files are cached is <code>.vertx</code> by default and can be customized by setting the system
property <code>vertx.cacheDirBase</code>.</p>
</div>
<div class="paragraph">
<p>The whole classpath resolving feature can be disabled system-wide by setting the system
property <code>vertx.disableFileCPResolving</code> to <code>true</code>.</p>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<div class="title">Note</div>
</td>
<td class="content">
these system properties are evaluated once when the the <code>io.vertx.core.file.FileSystemOptions</code> class is loaded, so
these properties should be set before loading this class or as a JVM system property when launching it.
</td>
</tr>
</table>
</div>
<div class="paragraph">
<p>If you want to disable classpath resolving for a particular application but keep it enabled by default system-wide,
you can do so via the <code><a href="../../apidocs/io/vertx/core/file/FileSystemOptions.html#setClassPathResolvingEnabled-boolean-">setClassPathResolvingEnabled</a></code> option.</p>
</div>
</div>
<div class="sect3">
<h4 id="_closing_an_asyncfile">Closing an AsyncFile</h4>
<div class="paragraph">
<p>To close an <code>AsyncFile</code> call the <code><a href="../../apidocs/io/vertx/core/file/AsyncFile.html#close--">close</a></code> method. Closing is asynchronous and
if you want to be notified when the close has been completed you can specify a handler function as an argument.</p>
</div>
</div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_datagram_sockets_udp">Datagram sockets (UDP)</h2>
<div class="sectionbody">
<div class="paragraph">
<p>Using User Datagram Protocol (UDP) with Vert.x is a piece of cake.</p>
</div>
<div class="paragraph">
<p>UDP is a connection-less transport which basically means you have no persistent connection to a remote peer.</p>
</div>
<div class="paragraph">
<p>Instead you can send and receive packages and the remote address is contained in each of them.</p>
</div>
<div class="paragraph">
<p>Beside this UDP is not as safe as TCP to use, which means there are no guarantees that a send Datagram packet will
receive it&#8217;s endpoint at all.</p>
</div>
<div class="paragraph">
<p>The only guarantee is that it will either receive complete or not at all.</p>
</div>
<div class="paragraph">
<p>Also you usually can&#8217;t send data which is bigger then the MTU size of your network interface, this is because each
packet will be send as one packet.</p>
</div>
<div class="paragraph">
<p>But be aware even if the packet size is smaller then the MTU it may still fail.</p>
</div>
<div class="paragraph">
<p>At which size it will fail depends on the Operating System etc. So rule of thumb is to try to send small packets.</p>
</div>
<div class="paragraph">
<p>Because of the nature of UDP it is best fit for Applications where you are allowed to drop packets (like for
example a monitoring application).</p>
</div>
<div class="paragraph">
<p>The benefits are that it has a lot less overhead compared to TCP, which can be handled by the NetServer
and NetClient (see above).</p>
</div>
<div class="sect2">
<h3 id="_creating_a_datagramsocket">Creating a DatagramSocket</h3>
<div class="paragraph">
<p>To use UDP you first need t create a <code><a href="../../apidocs/io/vertx/core/datagram/DatagramSocket.html">DatagramSocket</a></code>. It does not matter here if you only want to send data or send
and receive.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var socket = vertx.createDatagramSocket(DatagramSocketOptions())</code></pre>
</div>
</div>
<div class="paragraph">
<p>The returned <code><a href="../../apidocs/io/vertx/core/datagram/DatagramSocket.html">DatagramSocket</a></code> will not be bound to a specific port. This is not a
problem if you only want to send data (like a client), but more on this in the next section.</p>
</div>
</div>
<div class="sect2">
<h3 id="_sending_datagram_packets">Sending Datagram packets</h3>
<div class="paragraph">
<p>As mentioned before, User Datagram Protocol (UDP) sends data in packets to remote peers but is not connected to
them in a persistent fashion.</p>
</div>
<div class="paragraph">
<p>This means each packet can be sent to a different remote peer.</p>
</div>
<div class="paragraph">
<p>Sending packets is as easy as shown here:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var socket = vertx.createDatagramSocket(DatagramSocketOptions())
var buffer = Buffer.buffer(&quot;content&quot;)
// Send a Buffer
socket.send(buffer, 1234, &quot;10.0.0.1&quot;, { asyncResult -&gt;
  println(&quot;Send succeeded? ${asyncResult.succeeded()}&quot;)
})
// Send a String
socket.send(&quot;A string used as content&quot;, 1234, &quot;10.0.0.1&quot;, { asyncResult -&gt;
  println(&quot;Send succeeded? ${asyncResult.succeeded()}&quot;)
})</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_receiving_datagram_packets">Receiving Datagram packets</h3>
<div class="paragraph">
<p>If you want to receive packets you need to bind the <code><a href="../../apidocs/io/vertx/core/datagram/DatagramSocket.html">DatagramSocket</a></code> by calling
<code>listen(&#8230;&#8203;)}</code> on it.</p>
</div>
<div class="paragraph">
<p>This way you will be able to receive <code><a href="../../apidocs/io/vertx/core/datagram/DatagramPacket.html">DatagramPacket</a>`s that were sent to the address and port on
which the `<a href="../../apidocs/io/vertx/core/datagram/DatagramSocket.html">DatagramSocket</a></code> listens.</p>
</div>
<div class="paragraph">
<p>Beside this you also want to set a <code>Handler</code> which will be called for each received <code><a href="../../apidocs/io/vertx/core/datagram/DatagramPacket.html">DatagramPacket</a></code>.</p>
</div>
<div class="paragraph">
<p>The <code><a href="../../apidocs/io/vertx/core/datagram/DatagramPacket.html">DatagramPacket</a></code> has the following methods:</p>
</div>
<div class="ulist">
<ul>
<li>
<p><code><a href="../../apidocs/io/vertx/core/datagram/DatagramPacket.html#sender--">sender</a></code>: The InetSocketAddress which represent the sender of the packet</p>
</li>
<li>
<p><code><a href="../../apidocs/io/vertx/core/datagram/DatagramPacket.html#data--">data</a></code>: The Buffer which holds the data which was received.</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>So to listen on a specific address and port you would do something like shown here:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var socket = vertx.createDatagramSocket(DatagramSocketOptions())
socket.listen(1234, &quot;0.0.0.0&quot;, { asyncResult -&gt;
  if (asyncResult.succeeded()) {
    socket.handler({ packet -&gt;
      // Do something with the packet
    })
  } else {
    println(&quot;Listen failed${asyncResult.cause()}&quot;)
  }
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>Be aware that even if the {code AsyncResult} is successed it only means it might be written on the network
stack, but gives no guarantee that it ever reached or will reach the remote peer at all.</p>
</div>
<div class="paragraph">
<p>If you need such a guarantee then you want to use TCP with some handshaking logic build on top.</p>
</div>
</div>
<div class="sect2">
<h3 id="_multicast">Multicast</h3>
<div class="sect3">
<h4 id="_sending_multicast_packets">Sending Multicast packets</h4>
<div class="paragraph">
<p>Multicast allows multiple sockets to receive the same packets. This works by having the sockets join the same multicast group
to which you can then send packets.</p>
</div>
<div class="paragraph">
<p>We will look at how you can join a Multicast Group and receive packets in the next section.</p>
</div>
<div class="paragraph">
<p>Sending multicast packets is not different than sending normal Datagram packets.  The difference is that you pass
in a multicast group address to the send method.</p>
</div>
<div class="paragraph">
<p>This is show here:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var socket = vertx.createDatagramSocket(DatagramSocketOptions())
var buffer = Buffer.buffer(&quot;content&quot;)
// Send a Buffer to a multicast address
socket.send(buffer, 1234, &quot;230.0.0.1&quot;, { asyncResult -&gt;
  println(&quot;Send succeeded? ${asyncResult.succeeded()}&quot;)
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>All sockets that have joined the multicast group 230.0.0.1 will receive the packet.</p>
</div>
<div class="sect4">
<h5 id="_receiving_multicast_packets">Receiving Multicast packets</h5>
<div class="paragraph">
<p>If you want to receive packets for specific Multicast group you need to bind the <code><a href="../../apidocs/io/vertx/core/datagram/DatagramSocket.html">DatagramSocket</a></code> by
calling <code>listen(&#8230;&#8203;)</code> on it to join the Multicast group.</p>
</div>
<div class="paragraph">
<p>This way you will receive DatagramPackets that were sent to the address and port on which the
<code><a href="../../apidocs/io/vertx/core/datagram/DatagramSocket.html">DatagramSocket</a></code> listens and also to those sent to the Multicast group.</p>
</div>
<div class="paragraph">
<p>Beside this you also want to set a Handler which will be called for each received DatagramPacket.</p>
</div>
<div class="paragraph">
<p>The <code><a href="../../apidocs/io/vertx/core/datagram/DatagramPacket.html">DatagramPacket</a></code> has the following methods:</p>
</div>
<div class="ulist">
<ul>
<li>
<p><code>sender()</code>: The InetSocketAddress which represent the sender of the packet</p>
</li>
<li>
<p><code>data()</code>: The Buffer which holds the data which was received.</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>So to listen on a specific address and port and also receive packets for the Multicast group 230.0.0.1 you
would do something like shown here:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var socket = vertx.createDatagramSocket(DatagramSocketOptions())
socket.listen(1234, &quot;0.0.0.0&quot;, { asyncResult -&gt;
  if (asyncResult.succeeded()) {
    socket.handler({ packet -&gt;
      // Do something with the packet
    })

    // join the multicast group
    socket.listenMulticastGroup(&quot;230.0.0.1&quot;, { asyncResult2 -&gt;
      println(&quot;Listen succeeded? ${asyncResult2.succeeded()}&quot;)
    })
  } else {
    println(&quot;Listen failed${asyncResult.cause()}&quot;)
  }
})</code></pre>
</div>
</div>
</div>
<div class="sect4">
<h5 id="_unlisten_leave_a_multicast_group">Unlisten / leave a Multicast group</h5>
<div class="paragraph">
<p>There are sometimes situations where you want to receive packets for a Multicast group for a limited time.</p>
</div>
<div class="paragraph">
<p>In this situations you can first start to listen for them and then later unlisten.</p>
</div>
<div class="paragraph">
<p>This is shown here:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var socket = vertx.createDatagramSocket(DatagramSocketOptions())
socket.listen(1234, &quot;0.0.0.0&quot;, { asyncResult -&gt;
  if (asyncResult.succeeded()) {
    socket.handler({ packet -&gt;
      // Do something with the packet
    })

    // join the multicast group
    socket.listenMulticastGroup(&quot;230.0.0.1&quot;, { asyncResult2 -&gt;
      if (asyncResult2.succeeded()) {
        // will now receive packets for group

        // do some work

        socket.unlistenMulticastGroup(&quot;230.0.0.1&quot;, { asyncResult3 -&gt;
          println(&quot;Unlisten succeeded? ${asyncResult3.succeeded()}&quot;)
        })
      } else {
        println(&quot;Listen failed${asyncResult2.cause()}&quot;)
      }
    })
  } else {
    println(&quot;Listen failed${asyncResult.cause()}&quot;)
  }
})</code></pre>
</div>
</div>
</div>
<div class="sect4">
<h5 id="_blocking_multicast">Blocking multicast</h5>
<div class="paragraph">
<p>Beside unlisten a Multicast address it&#8217;s also possible to just block multicast for a specific sender address.</p>
</div>
<div class="paragraph">
<p>Be aware this only work on some Operating Systems and kernel versions. So please check the Operating System
documentation if it&#8217;s supported.</p>
</div>
<div class="paragraph">
<p>This an expert feature.</p>
</div>
<div class="paragraph">
<p>To block multicast from a specific address you can call <code>blockMulticastGroup(&#8230;&#8203;)</code> on the DatagramSocket
like shown here:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var socket = vertx.createDatagramSocket(DatagramSocketOptions())

// Some code

// This would block packets which are send from 10.0.0.2
socket.blockMulticastGroup(&quot;230.0.0.1&quot;, &quot;10.0.0.2&quot;, { asyncResult -&gt;
  println(&quot;block succeeded? ${asyncResult.succeeded()}&quot;)
})</code></pre>
</div>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_datagramsocket_properties">DatagramSocket properties</h4>
<div class="paragraph">
<p>When creating a <code><a href="../../apidocs/io/vertx/core/datagram/DatagramSocket.html">DatagramSocket</a></code> there are multiple properties you can set to
change it&#8217;s behaviour with the <code><a href="../../apidocs/io/vertx/core/datagram/DatagramSocketOptions.html">DatagramSocketOptions</a></code> object. Those are listed here:</p>
</div>
<div class="ulist">
<ul>
<li>
<p><code><a href="../../apidocs/io/vertx/core/datagram/DatagramSocketOptions.html#setSendBufferSize-int-">setSendBufferSize</a></code> Sets the send buffer size in bytes.</p>
</li>
<li>
<p><code><a href="../../apidocs/io/vertx/core/datagram/DatagramSocketOptions.html#setReceiveBufferSize-int-">setReceiveBufferSize</a></code> Sets the TCP receive buffer size
in bytes.</p>
</li>
<li>
<p><code><a href="../../apidocs/io/vertx/core/datagram/DatagramSocketOptions.html#setReuseAddress-boolean-">setReuseAddress</a></code> If true then addresses in TIME_WAIT
state can be reused after they have been closed.</p>
</li>
<li>
<p><code><a href="../../apidocs/io/vertx/core/datagram/DatagramSocketOptions.html#setTrafficClass-int-">setTrafficClass</a></code></p>
</li>
<li>
<p><code><a href="../../apidocs/io/vertx/core/datagram/DatagramSocketOptions.html#setBroadcast-boolean-">setBroadcast</a></code> Sets or clears the SO_BROADCAST socket
option. When this option is set, Datagram (UDP) packets may be sent to a local interface&#8217;s broadcast address.</p>
</li>
<li>
<p><code><a href="../../apidocs/io/vertx/core/datagram/DatagramSocketOptions.html#setMulticastNetworkInterface-java.lang.String-">setMulticastNetworkInterface</a></code> Sets or clears
the IP_MULTICAST_LOOP socket option. When this option is set, multicast packets will also be received on the
local interface.</p>
</li>
<li>
<p><code><a href="../../apidocs/io/vertx/core/datagram/DatagramSocketOptions.html#setMulticastTimeToLive-int-">setMulticastTimeToLive</a></code> Sets the IP_MULTICAST_TTL socket
option. TTL stands for "Time to Live," but in this context it specifies the number of IP hops that a packet is
allowed to go through, specifically for multicast traffic. Each router or gateway that forwards a packet decrements
the TTL. If the TTL is decremented to 0 by a router, it will not be forwarded.</p>
</li>
</ul>
</div>
</div>
<div class="sect3">
<h4 id="_datagramsocket_local_address">DatagramSocket Local Address</h4>
<div class="paragraph">
<p>You can find out the local address of the socket (i.e. the address of this side of the UDP Socket) by calling
<code><a href="../../apidocs/io/vertx/core/datagram/DatagramSocket.html#localAddress--">localAddress</a></code>. This will only return an <code>InetSocketAddress</code> if you
bound the <code><a href="../../apidocs/io/vertx/core/datagram/DatagramSocket.html">DatagramSocket</a></code> with <code>listen(&#8230;&#8203;)</code> before, otherwise it will return null.</p>
</div>
</div>
<div class="sect3">
<h4 id="_closing_a_datagramsocket">Closing a DatagramSocket</h4>
<div class="paragraph">
<p>You can close a socket by invoking the <code><a href="../../apidocs/io/vertx/core/datagram/DatagramSocket.html#close-io.vertx.core.Handler-">close</a></code> method. This will close
the socket and release all resources</p>
</div>
</div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_dns_client">DNS client</h2>
<div class="sectionbody">
<div class="paragraph">
<p>Often you will find yourself in situations where you need to obtain DNS informations in an asynchronous fashion.
Unfortunally this is not possible with the API that is shipped with the Java Virtual Machine itself. Because of
this Vert.x offers it&#8217;s own API for DNS resolution which is fully asynchronous.</p>
</div>
<div class="paragraph">
<p>To obtain a DnsClient instance you will create a new via the Vertx instance.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var client = vertx.createDnsClient(53, &quot;10.0.0.1&quot;)</code></pre>
</div>
</div>
<div class="paragraph">
<p>You can also create the client with options and configure the query timeout.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var client = vertx.createDnsClient(DnsClientOptions(
  port = 53,
  host = &quot;10.0.0.1&quot;,
  queryTimeout = 10000))</code></pre>
</div>
</div>
<div class="paragraph">
<p>Creating the client with no arguments or omitting the server address will use the address of the server used internally
for non blocking address resolution.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var client1 = vertx.createDnsClient()

// Just the same but with a different query timeout
var client2 = vertx.createDnsClient(DnsClientOptions(
  queryTimeout = 10000))</code></pre>
</div>
</div>
<div class="sect2">
<h3 id="_lookup">lookup</h3>
<div class="paragraph">
<p>Try to lookup the A (ipv4) or AAAA (ipv6) record for a given name. The first which is returned will be used,
so it behaves the same way as you may be used from when using "nslookup" on your operation system.</p>
</div>
<div class="paragraph">
<p>To lookup the A / AAAA record for "vertx.io" you would typically use it like:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var client = vertx.createDnsClient(53, &quot;9.9.9.9&quot;)
client.lookup(&quot;vertx.io&quot;, { ar -&gt;
  if (ar.succeeded()) {
    println(ar.result())
  } else {
    println(&quot;Failed to resolve entry${ar.cause()}&quot;)
  }
})</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_lookup4">lookup4</h3>
<div class="paragraph">
<p>Try to lookup the A (ipv4) record for a given name. The first which is returned will be used, so it behaves
the same way as you may be used from when using "nslookup" on your operation system.</p>
</div>
<div class="paragraph">
<p>To lookup the A record for "vertx.io" you would typically use it like:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var client = vertx.createDnsClient(53, &quot;9.9.9.9&quot;)
client.lookup4(&quot;vertx.io&quot;, { ar -&gt;
  if (ar.succeeded()) {
    println(ar.result())
  } else {
    println(&quot;Failed to resolve entry${ar.cause()}&quot;)
  }
})</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_lookup6">lookup6</h3>
<div class="paragraph">
<p>Try to lookup the AAAA (ipv6) record for a given name. The first which is returned will be used, so it behaves the
same way as you may be used from when using "nslookup" on your operation system.</p>
</div>
<div class="paragraph">
<p>To lookup the A record for "vertx.io" you would typically use it like:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var client = vertx.createDnsClient(53, &quot;9.9.9.9&quot;)
client.lookup6(&quot;vertx.io&quot;, { ar -&gt;
  if (ar.succeeded()) {
    println(ar.result())
  } else {
    println(&quot;Failed to resolve entry${ar.cause()}&quot;)
  }
})</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_resolvea">resolveA</h3>
<div class="paragraph">
<p>Try to resolve all A (ipv4) records for a given name. This is quite similar to using "dig" on unix like operation
systems.</p>
</div>
<div class="paragraph">
<p>To lookup all the A records for "vertx.io" you would typically do:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var client = vertx.createDnsClient(53, &quot;9.9.9.9&quot;)
client.resolveA(&quot;vertx.io&quot;, { ar -&gt;
  if (ar.succeeded()) {
    var records = ar.result()
    for (record in records) {
      println(record)
    }
  } else {
    println(&quot;Failed to resolve entry${ar.cause()}&quot;)
  }
})</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_resolveaaaa">resolveAAAA</h3>
<div class="paragraph">
<p>Try to resolve all AAAA (ipv6) records for a given name. This is quite similar to using "dig" on unix like
operation systems.</p>
</div>
<div class="paragraph">
<p>To lookup all the AAAAA records for "vertx.io" you would typically do:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var client = vertx.createDnsClient(53, &quot;9.9.9.9&quot;)
client.resolveAAAA(&quot;vertx.io&quot;, { ar -&gt;
  if (ar.succeeded()) {
    var records = ar.result()
    for (record in records) {
      println(record)
    }
  } else {
    println(&quot;Failed to resolve entry${ar.cause()}&quot;)
  }
})</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_resolvecname">resolveCNAME</h3>
<div class="paragraph">
<p>Try to resolve all CNAME records for a given name. This is quite similar to using "dig" on unix like operation
systems.</p>
</div>
<div class="paragraph">
<p>To lookup all the CNAME records for "vertx.io" you would typically do:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var client = vertx.createDnsClient(53, &quot;9.9.9.9&quot;)
client.resolveCNAME(&quot;vertx.io&quot;, { ar -&gt;
  if (ar.succeeded()) {
    var records = ar.result()
    for (record in records) {
      println(record)
    }
  } else {
    println(&quot;Failed to resolve entry${ar.cause()}&quot;)
  }
})</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_resolvemx">resolveMX</h3>
<div class="paragraph">
<p>Try to resolve all MX records for a given name. The MX records are used to define which Mail-Server accepts
emails for a given domain.</p>
</div>
<div class="paragraph">
<p>To lookup all the MX records for "vertx.io" you would typically do:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var client = vertx.createDnsClient(53, &quot;9.9.9.9&quot;)
client.resolveMX(&quot;vertx.io&quot;, { ar -&gt;
  if (ar.succeeded()) {
    var records = ar.result()
    for (record in records) {
      println(record)
    }
  } else {
    println(&quot;Failed to resolve entry${ar.cause()}&quot;)
  }
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>Be aware that the List will contain the <code><a href="../../apidocs/io/vertx/core/dns/MxRecord.html">MxRecord</a></code> sorted by the priority of them, which
means MX records with smaller priority coming first in the List.</p>
</div>
<div class="paragraph">
<p>The <code><a href="../../apidocs/io/vertx/core/dns/MxRecord.html">MxRecord</a></code> allows you to access the priority and the name of the MX record by offer methods for it like:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">record.priority()
record.name()</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_resolvetxt">resolveTXT</h3>
<div class="paragraph">
<p>Try to resolve all TXT records for a given name. TXT records are often used to define extra informations for a domain.</p>
</div>
<div class="paragraph">
<p>To resolve all the TXT records for "vertx.io" you could use something along these lines:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var client = vertx.createDnsClient(53, &quot;9.9.9.9&quot;)
client.resolveTXT(&quot;vertx.io&quot;, { ar -&gt;
  if (ar.succeeded()) {
    var records = ar.result()
    for (record in records) {
      println(record)
    }
  } else {
    println(&quot;Failed to resolve entry${ar.cause()}&quot;)
  }
})</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_resolvens">resolveNS</h3>
<div class="paragraph">
<p>Try to resolve all NS records for a given name. The NS records specify which DNS Server hosts the DNS informations
for a given domain.</p>
</div>
<div class="paragraph">
<p>To resolve all the NS records for "vertx.io" you could use something along these lines:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var client = vertx.createDnsClient(53, &quot;9.9.9.9&quot;)
client.resolveNS(&quot;vertx.io&quot;, { ar -&gt;
  if (ar.succeeded()) {
    var records = ar.result()
    for (record in records) {
      println(record)
    }
  } else {
    println(&quot;Failed to resolve entry${ar.cause()}&quot;)
  }
})</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_resolvesrv">resolveSRV</h3>
<div class="paragraph">
<p>Try to resolve all SRV records for a given name. The SRV records are used to define extra informations like port and
hostname of services. Some protocols need this extra informations.</p>
</div>
<div class="paragraph">
<p>To lookup all the SRV records for "vertx.io" you would typically do:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var client = vertx.createDnsClient(53, &quot;9.9.9.9&quot;)
client.resolveSRV(&quot;vertx.io&quot;, { ar -&gt;
  if (ar.succeeded()) {
    var records = ar.result()
    for (record in records) {
      println(record)
    }
  } else {
    println(&quot;Failed to resolve entry${ar.cause()}&quot;)
  }
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>Be aware that the List will contain the SrvRecords sorted by the priority of them, which means SrvRecords
with smaller priority coming first in the List.</p>
</div>
<div class="paragraph">
<p>The <code><a href="../../apidocs/io/vertx/core/dns/SrvRecord.html">SrvRecord</a></code> allows you to access all informations contained in the SRV record itself:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">record.priority()
record.name()
record.weight()
record.port()
record.protocol()
record.service()
record.target()</code></pre>
</div>
</div>
<div class="paragraph">
<p>Please refer to the API docs for the exact details.</p>
</div>
</div>
<div class="sect2">
<h3 id="_resolveptr">resolvePTR</h3>
<div class="paragraph">
<p>Try to resolve the PTR record for a given name. The PTR record maps an ipaddress to a name.</p>
</div>
<div class="paragraph">
<p>To resolve the PTR record for the ipaddress 10.0.0.1 you would use the PTR notion of "1.0.0.10.in-addr.arpa"</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var client = vertx.createDnsClient(53, &quot;9.9.9.9&quot;)
client.resolvePTR(&quot;1.0.0.10.in-addr.arpa&quot;, { ar -&gt;
  if (ar.succeeded()) {
    var record = ar.result()
    println(record)
  } else {
    println(&quot;Failed to resolve entry${ar.cause()}&quot;)
  }
})</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_reverselookup">reverseLookup</h3>
<div class="paragraph">
<p>Try to do a reverse lookup for an ipaddress. This is basically the same as resolve a PTR record, but allows you to
just pass in the ipaddress and not a valid PTR query string.</p>
</div>
<div class="paragraph">
<p>To do a reverse lookup for the ipaddress 10.0.0.1 do something similar like this:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var client = vertx.createDnsClient(53, &quot;9.9.9.9&quot;)
client.reverseLookup(&quot;10.0.0.1&quot;, { ar -&gt;
  if (ar.succeeded()) {
    var record = ar.result()
    println(record)
  } else {
    println(&quot;Failed to resolve entry${ar.cause()}&quot;)
  }
})</code></pre>
</div>
</div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="streams">Streams</h2>
<div class="sectionbody">
<div class="paragraph">
<p>There are several objects in Vert.x that allow items to be read from and written.</p>
</div>
<div class="paragraph">
<p>In previous versions the <code>io.vertx.core.streams</code> package was manipulating <code><a href="../../apidocs/io/vertx/core/buffer/Buffer.html">Buffer</a></code>
objects exclusively. From now, streams are not coupled to buffers anymore and they work with any kind of objects.</p>
</div>
<div class="paragraph">
<p>In Vert.x, write calls return immediately, and writes are queued internally.</p>
</div>
<div class="paragraph">
<p>It&#8217;s not hard to see that if you write to an object faster than it can actually write the data to
its underlying resource, then the write queue can grow unbounded - eventually resulting in
memory exhaustion.</p>
</div>
<div class="paragraph">
<p>To solve this problem a simple flow control (<em>back-pressure</em>) capability is provided by some objects in the Vert.x API.</p>
</div>
<div class="paragraph">
<p>Any flow control aware object that can be <em>written-to</em> implements <code><a href="../../apidocs/io/vertx/core/streams/WriteStream.html">WriteStream</a></code>,
while any flow control object that can be <em>read-from</em> is said to implement <code><a href="../../apidocs/io/vertx/core/streams/ReadStream.html">ReadStream</a></code>.</p>
</div>
<div class="paragraph">
<p>Let&#8217;s take an example where we want to read from a <code>ReadStream</code> then write the data to a <code>WriteStream</code>.</p>
</div>
<div class="paragraph">
<p>A very simple example would be reading from a <code><a href="../../apidocs/io/vertx/core/net/NetSocket.html">NetSocket</a></code> then writing back to the
same <code>NetSocket</code> - since <code>NetSocket</code> implements both <code>ReadStream</code> and <code>WriteStream</code>. Note that this works
between any <code>ReadStream</code> and <code>WriteStream</code> compliant object, including HTTP requests, HTTP responses,
async files I/O, WebSockets, etc.</p>
</div>
<div class="paragraph">
<p>A naive way to do this would be to directly take the data that has been read and immediately write it
to the <code>NetSocket</code>:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var server = vertx.createNetServer(NetServerOptions(
  port = 1234,
  host = &quot;localhost&quot;))
server.connectHandler({ sock -&gt;
  sock.handler({ buffer -&gt;
    // Write the data straight back
    sock.write(buffer)
  })
}).listen()</code></pre>
</div>
</div>
<div class="paragraph">
<p>There is a problem with the example above: if data is read from the socket faster than it can be
written back to the socket, it will build up in the write queue of the <code>NetSocket</code>, eventually
running out of RAM. This might happen, for example if the client at the other end of the socket
wasn&#8217;t reading fast enough, effectively putting back-pressure on the connection.</p>
</div>
<div class="paragraph">
<p>Since <code>NetSocket</code> implements <code>WriteStream</code>, we can check if the <code>WriteStream</code> is full before
writing to it:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var server = vertx.createNetServer(NetServerOptions(
  port = 1234,
  host = &quot;localhost&quot;))
server.connectHandler({ sock -&gt;
  sock.handler({ buffer -&gt;
    if (!sock.writeQueueFull()) {
      sock.write(buffer)
    }
  })

}).listen()</code></pre>
</div>
</div>
<div class="paragraph">
<p>This example won&#8217;t run out of RAM but we&#8217;ll end up losing data if the write queue gets full. What we
really want to do is pause the <code>NetSocket</code> when the write queue is full:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var server = vertx.createNetServer(NetServerOptions(
  port = 1234,
  host = &quot;localhost&quot;))
server.connectHandler({ sock -&gt;
  sock.handler({ buffer -&gt;
    sock.write(buffer)
    if (sock.writeQueueFull()) {
      sock.pause()
    }
  })
}).listen()</code></pre>
</div>
</div>
<div class="paragraph">
<p>We&#8217;re almost there, but not quite. The <code>NetSocket</code> now gets paused when the file is full, but we also need to unpause
it when the write queue has processed its backlog:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var server = vertx.createNetServer(NetServerOptions(
  port = 1234,
  host = &quot;localhost&quot;))
server.connectHandler({ sock -&gt;
  sock.handler({ buffer -&gt;
    sock.write(buffer)
    if (sock.writeQueueFull()) {
      sock.pause()
      sock.drainHandler({ done -&gt;
        sock.resume()
      })
    }
  })
}).listen()</code></pre>
</div>
</div>
<div class="paragraph">
<p>And there we have it. The <code><a href="../../apidocs/io/vertx/core/streams/WriteStream.html#drainHandler-io.vertx.core.Handler-">drainHandler</a></code> event handler will
get called when the write queue is ready to accept more data, this resumes the <code>NetSocket</code> that
allows more data to be read.</p>
</div>
<div class="paragraph">
<p>Wanting to do this is quite common while writing Vert.x applications, so we added the
<code><a href="../../apidocs/io/vertx/core/streams/ReadStream.html#pipeTo-io.vertx.core.streams.WriteStream-">pipeTo</a></code> method that does all of this hard work for you.
You just feed it the <code>WriteStream</code> and use it:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var server = vertx.createNetServer(NetServerOptions(
  port = 1234,
  host = &quot;localhost&quot;))
server.connectHandler({ sock -&gt;
  sock.pipeTo(sock)
}).listen()</code></pre>
</div>
</div>
<div class="paragraph">
<p>This does exactly the same thing as the more verbose example, plus it handles stream failures and termination: the
destination <code>WriteStream</code> is ended when the pipe completes with success or a failure.</p>
</div>
<div class="paragraph">
<p>You can be notified when the operation completes:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">server.connectHandler({ sock -&gt;

  // Pipe the socket providing an handler to be notified of the result
  sock.pipeTo(sock, { ar -&gt;
    if (ar.succeeded()) {
      println(&quot;Pipe succeeded&quot;)
    } else {
      println(&quot;Pipe failed&quot;)
    }
  })
}).listen()</code></pre>
</div>
</div>
<div class="paragraph">
<p>When you deal with an asynchronous destination, you can create a <code><a href="../../apidocs/io/vertx/core/streams/Pipe.html">Pipe</a></code> instance that
pauses the source and resumes it when the source is piped to the destination:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">server.connectHandler({ sock -&gt;

  // Create a pipe to use asynchronously
  var pipe = sock.pipe()

  // Open a destination file
  fs.open(&quot;/path/to/file&quot;, OpenOptions(), { ar -&gt;
    if (ar.succeeded()) {
      var file = ar.result()

      // Pipe the socket to the file and close the file at the end
      pipe.to(file)
    } else {
      sock.close()
    }
  })
}).listen()</code></pre>
</div>
</div>
<div class="paragraph">
<p>When you need to abort the transfer, you need to close it:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">vertx.createHttpServer().requestHandler({ request -&gt;

  // Create a pipe that to use asynchronously
  var pipe = request.pipe()

  // Open a destination file
  fs.open(&quot;/path/to/file&quot;, OpenOptions(), { ar -&gt;
    if (ar.succeeded()) {
      var file = ar.result()

      // Pipe the socket to the file and close the file at the end
      pipe.to(file)
    } else {
      // Close the pipe and resume the request, the body buffers will be discarded
      pipe.close()

      // Send an error response
      request.response().setStatusCode(500).end()
    }
  })
}).listen(8080)</code></pre>
</div>
</div>
<div class="paragraph">
<p>When the pipe is closed, the streams handlers are unset and the <code>ReadStream</code> resumed.</p>
</div>
<div class="paragraph">
<p>As seen above, by default the destination is always ended when the stream completes, you can control this behavior
on the pipe object:</p>
</div>
<div class="ulist">
<ul>
<li>
<p><code><a href="../../apidocs/io/vertx/core/streams/Pipe.html#endOnFailure-boolean-">endOnFailure</a></code> controls the behavior when a failure happens</p>
</li>
<li>
<p><code><a href="../../apidocs/io/vertx/core/streams/Pipe.html#endOnSuccess-boolean-">endOnSuccess</a></code> controls the behavior when the read stream ends</p>
</li>
<li>
<p><code><a href="../../apidocs/io/vertx/core/streams/Pipe.html#endOnComplete-boolean-">endOnComplete</a></code> controls the behavior in all cases</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>Here is a short example:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">src.pipe().endOnSuccess(false).to(dst, { rs -&gt;
  // Append some text and close the file
  dst.end(Buffer.buffer(&quot;done&quot;))
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>Let&#8217;s now look at the methods on <code>ReadStream</code> and <code>WriteStream</code> in more detail:</p>
</div>
<div class="sect2">
<h3 id="_readstream">ReadStream</h3>
<div class="paragraph">
<p><code>ReadStream</code> is implemented by <code><a href="../../apidocs/io/vertx/core/http/HttpClientResponse.html">HttpClientResponse</a></code>, <code><a href="../../apidocs/io/vertx/core/datagram/DatagramSocket.html">DatagramSocket</a></code>,
<code><a href="../../apidocs/io/vertx/core/http/HttpClientRequest.html">HttpClientRequest</a></code>, <code><a href="../../apidocs/io/vertx/core/http/HttpServerFileUpload.html">HttpServerFileUpload</a></code>,
<code><a href="../../apidocs/io/vertx/core/http/HttpServerRequest.html">HttpServerRequest</a></code>, <code><a href="../../apidocs/io/vertx/core/eventbus/MessageConsumer.html">MessageConsumer</a></code>,
<code><a href="../../apidocs/io/vertx/core/net/NetSocket.html">NetSocket</a></code>, <code><a href="../../apidocs/io/vertx/core/http/WebSocket.html">WebSocket</a></code>, <code><a href="../../apidocs/io/vertx/core/TimeoutStream.html">TimeoutStream</a></code>,
<code><a href="../../apidocs/io/vertx/core/file/AsyncFile.html">AsyncFile</a></code>.</p>
</div>
<div class="paragraph">
<p>Functions:</p>
</div>
<div class="ulist">
<ul>
<li>
<p><code><a href="../../apidocs/io/vertx/core/streams/ReadStream.html#handler-io.vertx.core.Handler-">handler</a></code>:
set a handler which will receive items from the ReadStream.</p>
</li>
<li>
<p><code><a href="../../apidocs/io/vertx/core/streams/ReadStream.html#pause--">pause</a></code>:
pause the handler. When paused no items will be received in the handler.</p>
</li>
<li>
<p><code><a href="../../apidocs/io/vertx/core/streams/ReadStream.html#resume--">resume</a></code>:
resume the handler. The handler will be called if any item arrives.</p>
</li>
<li>
<p><code><a href="../../apidocs/io/vertx/core/streams/ReadStream.html#exceptionHandler-io.vertx.core.Handler-">exceptionHandler</a></code>:
Will be called if an exception occurs on the ReadStream.</p>
</li>
<li>
<p><code><a href="../../apidocs/io/vertx/core/streams/ReadStream.html#endHandler-io.vertx.core.Handler-">endHandler</a></code>:
Will be called when end of stream is reached. This might be when EOF is reached if the ReadStream represents a file,
or when end of request is reached if it&#8217;s an HTTP request, or when the connection is closed if it&#8217;s a TCP socket.</p>
</li>
</ul>
</div>
</div>
<div class="sect2">
<h3 id="_writestream">WriteStream</h3>
<div class="paragraph">
<p><code>WriteStream</code> is implemented by <code><a href="../../apidocs/io/vertx/core/http/HttpClientRequest.html">HttpClientRequest</a></code>, <code><a href="../../apidocs/io/vertx/core/http/HttpServerResponse.html">HttpServerResponse</a></code>
<code><a href="../../apidocs/io/vertx/core/http/WebSocket.html">WebSocket</a></code>, <code><a href="../../apidocs/io/vertx/core/net/NetSocket.html">NetSocket</a></code>, <code><a href="../../apidocs/io/vertx/core/file/AsyncFile.html">AsyncFile</a></code>,
and <code><a href="../../apidocs/io/vertx/core/eventbus/MessageProducer.html">MessageProducer</a></code></p>
</div>
<div class="paragraph">
<p>Functions:</p>
</div>
<div class="ulist">
<ul>
<li>
<p><code><a href="../../apidocs/io/vertx/core/streams/WriteStream.html#write-java.lang.Object-">write</a></code>:
write an object to the WriteStream. This method will never block. Writes are queued internally and asynchronously
written to the underlying resource.</p>
</li>
<li>
<p><code><a href="../../apidocs/io/vertx/core/streams/WriteStream.html#setWriteQueueMaxSize-int-">setWriteQueueMaxSize</a></code>:
set the number of object at which the write queue is considered <em>full</em>, and the method <code><a href="../../apidocs/io/vertx/core/streams/WriteStream.html#writeQueueFull--">writeQueueFull</a></code>
returns <code>true</code>. Note that, when the write queue is considered full, if write is called the data will still be accepted
and queued. The actual number depends on the stream implementation, for <code><a href="../../apidocs/io/vertx/core/buffer/Buffer.html">Buffer</a></code> the size
represents the actual number of bytes written and not the number of buffers.</p>
</li>
<li>
<p><code><a href="../../apidocs/io/vertx/core/streams/WriteStream.html#writeQueueFull--">writeQueueFull</a></code>:
returns <code>true</code> if the write queue is considered full.</p>
</li>
<li>
<p><code><a href="../../apidocs/io/vertx/core/streams/WriteStream.html#exceptionHandler-io.vertx.core.Handler-">exceptionHandler</a></code>:
Will be called if an exception occurs on the <code>WriteStream</code>.</p>
</li>
<li>
<p><code><a href="../../apidocs/io/vertx/core/streams/WriteStream.html#drainHandler-io.vertx.core.Handler-">drainHandler</a></code>:
The handler will be called if the <code>WriteStream</code> is considered no longer full.</p>
</li>
</ul>
</div>
</div>
<div class="sect2">
<h3 id="_pump">Pump</h3>
<div class="paragraph">
<p>The pump exposes a subset of the pipe API and only transfers the items between streams, it does not handle
the completion or failure of the transfer operation.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var server = vertx.createNetServer(NetServerOptions(
  port = 1234,
  host = &quot;localhost&quot;))
server.connectHandler({ sock -&gt;
  Pump.pump(sock, sock).start()
}).listen()</code></pre>
</div>
</div>
<div class="admonitionblock important">
<table>
<tr>
<td class="icon">
<div class="title">Important</div>
</td>
<td class="content">
Before Vert.x 3.7 the <code><a href="../../apidocs/io/vertx/core/streams/Pump.html">Pump</a></code> was the advocated API for transferring a read stream to
a write stream. Since 3.7 the pipe API supersedes the pump API.
</td>
</tr>
</table>
</div>
<div class="paragraph">
<p>Instances of Pump have the following methods:</p>
</div>
<div class="ulist">
<ul>
<li>
<p><code><a href="../../apidocs/io/vertx/core/streams/Pump.html#start--">start</a></code>:
Start the pump.</p>
</li>
<li>
<p><code><a href="../../apidocs/io/vertx/core/streams/Pump.html#stop--">stop</a></code>:
Stops the pump. When the pump starts it is in stopped mode.</p>
</li>
<li>
<p><code><a href="../../apidocs/io/vertx/core/streams/Pump.html#setWriteQueueMaxSize-int-">setWriteQueueMaxSize</a></code>:
This has the same meaning as <code><a href="../../apidocs/io/vertx/core/streams/WriteStream.html#setWriteQueueMaxSize-int-">setWriteQueueMaxSize</a></code> on the <code>WriteStream</code>.</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>A pump can be started and stopped multiple times.</p>
</div>
<div class="paragraph">
<p>When a pump is first created it is <em>not</em> started. You need to call the <code>start()</code> method to start it.</p>
</div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_record_parser">Record Parser</h2>
<div class="sectionbody">
<div class="paragraph">
<p>The record parser allows you to easily parse protocols which are delimited by a sequence of bytes, or fixed
size records. It transforms a sequence of input buffer to a sequence of buffer structured as configured (either
fixed size or separated records).</p>
</div>
<div class="paragraph">
<p>For example, if you have a simple ASCII text protocol delimited by '\n' and the input is the following:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code>buffer1:HELLO\nHOW ARE Y
buffer2:OU?\nI AM
buffer3: DOING OK
buffer4:\n</code></pre>
</div>
</div>
<div class="paragraph">
<p>The record parser would produce</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code>buffer1:HELLO
buffer2:HOW ARE YOU?
buffer3:I AM DOING OK</code></pre>
</div>
</div>
<div class="paragraph">
<p>Let&#8217;s see the associated code:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var parser = RecordParser.newDelimited(&quot;\n&quot;, { h -&gt;
  println(h.toString())
})

parser.handle(Buffer.buffer(&quot;HELLO\nHOW ARE Y&quot;))
parser.handle(Buffer.buffer(&quot;OU?\nI AM&quot;))
parser.handle(Buffer.buffer(&quot;DOING OK&quot;))
parser.handle(Buffer.buffer(&quot;\n&quot;))</code></pre>
</div>
</div>
<div class="paragraph">
<p>You can also produce fixed sized chunks as follows:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">RecordParser.newFixed(4, { h -&gt;
  println(h.toString())
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>For more details, check out the <code><a href="../../apidocs/io/vertx/core/parsetools/RecordParser.html">RecordParser</a></code> class.</p>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_json_parser">Json Parser</h2>
<div class="sectionbody">
<div class="paragraph">
<p>You can easily parse JSON structures but that requires to provide the JSON content at once, but it
may not be convenient when you need to parse very large structures.</p>
</div>
<div class="paragraph">
<p>The non-blocking JSON parser is an event driven parser able to deal with very large structures.
It transforms a sequence of input buffer to a sequence of JSON parse events.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">Code not translatable</code></pre>
</div>
</div>
<div class="paragraph">
<p>The parser is non-blocking and emitted events are driven by the input buffers.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var parser = JsonParser.newParser()

// start array event
// start object event
// &quot;firstName&quot;:&quot;Bob&quot; event
parser.handle(Buffer.buffer(&quot;[{\&quot;firstName\&quot;:\&quot;Bob\&quot;,&quot;))

// &quot;lastName&quot;:&quot;Morane&quot; event
// end object event
parser.handle(Buffer.buffer(&quot;\&quot;lastName\&quot;:\&quot;Morane\&quot;},&quot;))

// start object event
// &quot;firstName&quot;:&quot;Luke&quot; event
// &quot;lastName&quot;:&quot;Lucky&quot; event
// end object event
parser.handle(Buffer.buffer(&quot;{\&quot;firstName\&quot;:\&quot;Luke\&quot;,\&quot;lastName\&quot;:\&quot;Lucky\&quot;}&quot;))

// end array event
parser.handle(Buffer.buffer(&quot;]&quot;))

// Always call end
parser.end()</code></pre>
</div>
</div>
<div class="paragraph">
<p>Event driven parsing provides more control but comes at the price of dealing with fine grained events, which can be
inconvenient sometimes. The JSON parser allows you to handle JSON structures as values when it is desired:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">Code not translatable</code></pre>
</div>
</div>
<div class="paragraph">
<p>The value mode can be set and unset during the parsing allowing you to switch between fine grained
events or JSON object value events.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">Code not translatable</code></pre>
</div>
</div>
<div class="paragraph">
<p>You can do the same with arrays as well</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">Code not translatable</code></pre>
</div>
</div>
<div class="paragraph">
<p>You can also decode POJOs</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">parser.handler({ event -&gt;
  // Handle each object
  // Get the field in which this object was parsed
  var id = event.fieldName()
  var user = event.mapTo(examples.ParseToolsExamples.User.`class`)
  println(&quot;User with id ${id} : ${user.firstName} ${user.lastName}&quot;)
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>Whenever the parser fails to process a buffer, an exception will be thrown unless you set an exception handler:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var parser = JsonParser.newParser()

parser.exceptionHandler({ err -&gt;
  // Catch any parsing or decoding error
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>The parser also parses json streams:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>concatenated json streams: <code>{"temperature":30}{"temperature":50}</code></p>
</li>
<li>
<p>line delimited json streams: <code>{"an":"object"}\r\n3\r\n"a string"\r\nnull</code></p>
</li>
</ul>
</div>
<div class="paragraph">
<p>For more details, check out the <code><a href="../../apidocs/io/vertx/core/parsetools/JsonParser.html">JsonParser</a></code> class.</p>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_thread_safety">Thread safety</h2>
<div class="sectionbody">
<div class="paragraph">
<p>Most Vert.x objects are safe to access from different threads. <em>However</em> performance is optimised when they are
accessed from the same context they were created from.</p>
</div>
<div class="paragraph">
<p>For example if you have deployed a verticle which creates a <code><a href="../../apidocs/io/vertx/core/net/NetServer.html">NetServer</a></code> which provides
<code><a href="../../apidocs/io/vertx/core/net/NetSocket.html">NetSocket</a></code> instances in it&#8217;s handler, then it&#8217;s best to always access that socket instance
from the event loop of the verticle.</p>
</div>
<div class="paragraph">
<p>If you stick to the standard Vert.x verticle deployment model and avoid sharing objects between verticles then this
should be the case without you having to think about it.</p>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_metrics_spi">Metrics SPI</h2>
<div class="sectionbody">
<div class="paragraph">
<p>By default Vert.x does not record any metrics. Instead it provides an SPI for others to implement which can be added
to the classpath. The metrics SPI is an advanced feature which allows implementers to capture events from Vert.x in
order to gather metrics. For more information on this, please consult the
<code><a href="../../apidocs/io/vertx/core/spi/metrics/VertxMetrics.html">API Documentation</a></code>.</p>
</div>
<div class="paragraph">
<p>You can also specify a metrics factory programmatically if embedding Vert.x using
<code><a href="../../apidocs/io/vertx/core/metrics/MetricsOptions.html#setFactory-io.vertx.core.spi.VertxMetricsFactory-">setFactory</a></code>.</p>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_osgi">OSGi</h2>
<div class="sectionbody">
<div class="paragraph">
<p>Vert.x Core is packaged as an OSGi bundle, so can be used in any OSGi R4.2+ environment such as Apache Felix
or Eclipse Equinox. The bundle exports <code>io.vertx.core*</code>.</p>
</div>
<div class="paragraph">
<p>However, the bundle has some dependencies on Jackson and Netty. To get the vert.x core bundle resolved deploy:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>Jackson Annotation [2.6.0,3)</p>
</li>
<li>
<p>Jackson Core [2.6.2,3)</p>
</li>
<li>
<p>Jackson Databind [2.6.2,3)</p>
</li>
<li>
<p>Netty Buffer [4.0.31,5)</p>
</li>
<li>
<p>Netty Codec [4.0.31,5)</p>
</li>
<li>
<p>Netty Codec/Socks [4.0.31,5)</p>
</li>
<li>
<p>Netty Codec/Common [4.0.31,5)</p>
</li>
<li>
<p>Netty Codec/Handler [4.0.31,5)</p>
</li>
<li>
<p>Netty Codec/Transport [4.0.31,5)</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>Here is a working deployment on Apache Felix 5.2.0:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code>14|Active     |    1|Jackson-annotations (2.6.0)
15|Active     |    1|Jackson-core (2.6.2)
16|Active     |    1|jackson-databind (2.6.2)
18|Active     |    1|Netty/Buffer (4.0.31.Final)
19|Active     |    1|Netty/Codec (4.0.31.Final)
20|Active     |    1|Netty/Codec/HTTP (4.0.31.Final)
21|Active     |    1|Netty/Codec/Socks (4.0.31.Final)
22|Active     |    1|Netty/Common (4.0.31.Final)
23|Active     |    1|Netty/Handler (4.0.31.Final)
24|Active     |    1|Netty/Transport (4.0.31.Final)
25|Active     |    1|Netty/Transport/SCTP (4.0.31.Final)
26|Active     |    1|Vert.x Core (3.1.0)</code></pre>
</div>
</div>
<div class="paragraph">
<p>On Equinox, you may want to disable the <code>ContextFinder</code> with the following framework property:
<code>eclipse.bundle.setTCCL=false</code></p>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_the_vertx_command_line">The 'vertx' command line</h2>
<div class="sectionbody">
<div class="paragraph">
<p>The <code>vertx</code> command is used to interact with Vert.x from the command line. It&#8217;s main use is to run Vert.x verticles.
To do this you need to download and install a Vert.x distribution, and add the <code>bin</code> directory of the installation
to your <code>PATH</code> environment variable. Also make sure you have a Java 8 JDK on your <code>PATH</code>.</p>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<div class="title">Note</div>
</td>
<td class="content">
The JDK is required to support on the fly compilation of Java code.
</td>
</tr>
</table>
</div>
<div class="sect2">
<h3 id="_run_verticles">Run verticles</h3>
<div class="paragraph">
<p>You can run raw Vert.x verticles directly from the command line using <code>vertx run</code>. Here is a couple of examples of
the <code>run</code> <em>command</em>:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code>vertx run my-verticle.js                                 (1)
vertx run my-verticle.groovy                             (2)
vertx run my-verticle.rb                                 (3)

vertx run io.vertx.example.MyVerticle                    (4)
vertx run io.vertx.example.MVerticle -cp my-verticle.jar (5)

vertx run MyVerticle.java                                (6)</code></pre>
</div>
</div>
<div class="olist arabic">
<ol class="arabic">
<li>
<p>Deploys a JavaScript verticle</p>
</li>
<li>
<p>Deploys a Groovy verticle</p>
</li>
<li>
<p>Deploys a Ruby verticle</p>
</li>
<li>
<p>Deploys an already compiled Java verticle. Classpath root is the current directory</p>
</li>
<li>
<p>Deploys a verticle packaged in a Jar, the jar need to be in the classpath</p>
</li>
<li>
<p>Compiles the Java source and deploys it</p>
</li>
</ol>
</div>
<div class="paragraph">
<p>As you can see in the case of Java, the name can either be the fully qualified class name of the verticle, or
you can specify the Java Source file directly and Vert.x compiles it for you.</p>
</div>
<div class="paragraph">
<p>You can also prefix the verticle with the name of the language implementation to use. For example if the verticle is
a compiled Groovy class, you prefix it with <code>groovy:</code> so that Vert.x knows it&#8217;s a Groovy class not a Java class.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code>vertx run groovy:io.vertx.example.MyGroovyVerticle</code></pre>
</div>
</div>
<div class="paragraph">
<p>The <code>vertx run</code> command can take a few optional parameters, they are:</p>
</div>
<div class="ulist">
<ul>
<li>
<p><code>-options &lt;options&gt;</code> - Provides the Vert.x options.
<code>options</code> is the name of a JSON file that represents the Vert.x options, or a JSON string. This is optional.</p>
</li>
<li>
<p><code>-conf &lt;config&gt;</code> - Provides some configuration to the verticle.
<code>config</code> is the name of a JSON file that represents the configuration for the verticle, or a JSON string. This is optional.</p>
</li>
<li>
<p><code>-cp &lt;path&gt;</code> - The path on which to search for the verticle and any other resources used by the verticle. This
defaults to <code>.</code> (current directory). If your verticle references other scripts, classes or other resources
(e.g. jar files) then make sure these are on this path. The path can contain multiple path entries separated by
<code>:</code> (colon) or <code>;</code> (semi-colon) depending on the operating system. Each path entry can be an absolute or relative
path to a directory containing scripts, or absolute or relative filenames for jar or zip files. An example path
might be <code>-cp classes:lib/otherscripts:jars/myjar.jar:jars/otherjar.jar</code>. Always use the path to reference any
resources that your verticle requires. Do <strong>not</strong> put them on the system classpath as this can cause isolation
issues between deployed verticles.</p>
</li>
<li>
<p><code>-instances &lt;instances&gt;</code>  - The number of instances of the verticle to instantiate. Each verticle instance is
strictly single threaded so to scale your application across available cores you might want to deploy more than
one instance. If omitted a single instance will be deployed.</p>
</li>
<li>
<p><code>-worker</code> - This option determines whether the verticle is a worker verticle or not.</p>
</li>
<li>
<p><code>-cluster</code> -  This option determines whether the Vert.x instance will attempt to form a cluster with other Vert.x
instances on the network. Clustering Vert.x instances allows Vert.x to form a distributed event bus with
other nodes. Default is <code>false</code> (not clustered).</p>
</li>
<li>
<p><code>-cluster-port</code> - If the <code>cluster</code> option has also been specified then this determines which port will be bound for
cluster communication with other Vert.x instances. Default is <code>0</code> - which means '<em>choose a free random port</em>'. You
don&#8217;t usually need to specify this parameter unless you really need to bind to a specific port.</p>
</li>
<li>
<p><code>-cluster-host</code> - If the <code>cluster</code> option has also been specified then this determines which host address will be
bound for cluster communication with other Vert.x instances. By default it will try and pick one from the available
interfaces. If you have more than one interface and you want to use a specific one, specify it here.</p>
</li>
<li>
<p><code>-cluster-public-port</code> - If the <code>cluster</code> option has also been specified then this determines which port will be advertised for
cluster communication with other Vert.x instances. Default is <code>-1</code>, which means same as <code>cluster-port</code>.</p>
</li>
<li>
<p><code>-cluster-public-host</code> - If the <code>cluster</code> option has also been specified then this determines which host address will be advertised for
cluster communication with other Vert.x instances. If not specified, Vert.x uses the value of <code>cluster-host</code>.</p>
</li>
<li>
<p><code>-ha</code> - if specified the verticle will be deployed as  high availability (HA) deployment. See related section
for more details</p>
</li>
<li>
<p><code>-quorum</code> - used in conjunction with <code>-ha</code>. It specifies the minimum number of nodes in the cluster for any <em>HA
deploymentIDs</em> to be active. Defaults to 0.</p>
</li>
<li>
<p><code>-hagroup</code> - used in conjunction with <code>-ha</code>. It specifies the HA group this node will join. There can be
multiple HA groups in a cluster. Nodes will only failover to other nodes in the same group. The default value is `
__DEFAULT__`</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>You can also set system properties using: <code>-Dkey=value</code>.</p>
</div>
<div class="paragraph">
<p>Here are some more examples:</p>
</div>
<div class="paragraph">
<p>Run a JavaScript verticle server.js with default settings</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code>vertx run server.js</code></pre>
</div>
</div>
<div class="paragraph">
<p>Run 10 instances of a pre-compiled Java verticle specifying classpath</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code>vertx run com.acme.MyVerticle -cp "classes:lib/myjar.jar" -instances 10</code></pre>
</div>
</div>
<div class="paragraph">
<p>Run 10 instances of a Java verticle by source <em>file</em></p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code>vertx run MyVerticle.java -instances 10</code></pre>
</div>
</div>
<div class="paragraph">
<p>Run 20 instances of a ruby worker verticle</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code>vertx run order_worker.rb -instances 20 -worker</code></pre>
</div>
</div>
<div class="paragraph">
<p>Run two JavaScript verticles on the same machine and let them cluster together with each other and any other servers
on the network</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code>vertx run handler.js -cluster
vertx run sender.js -cluster</code></pre>
</div>
</div>
<div class="paragraph">
<p>Run a Ruby verticle passing it some config</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code>vertx run my_verticle.rb -conf my_verticle.conf</code></pre>
</div>
</div>
<div class="paragraph">
<p>Where <code>my_verticle.conf</code> might contain something like:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="json">{
<span class="key"><span class="delimiter">&quot;</span><span class="content">name</span><span class="delimiter">&quot;</span></span>: <span class="string"><span class="delimiter">&quot;</span><span class="content">foo</span><span class="delimiter">&quot;</span></span>,
<span class="key"><span class="delimiter">&quot;</span><span class="content">num_widgets</span><span class="delimiter">&quot;</span></span>: <span class="integer">46</span>
}</code></pre>
</div>
</div>
<div class="paragraph">
<p>The config will be available inside the verticle via the core API.</p>
</div>
<div class="paragraph">
<p>When using the high-availability feature of vert.x you may want to create a <em>bare</em> instance of vert.x. This
instance does not deploy any verticles when launched, but will receive a verticle if another node of the cluster
dies. To create a <em>bare</em> instance, launch:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code>vertx bare</code></pre>
</div>
</div>
<div class="paragraph">
<p>Depending on your cluster configuration, you may have to append the <code>cluster-host</code> and <code>cluster-port</code> parameters.</p>
</div>
</div>
<div class="sect2">
<h3 id="_executing_a_vert_x_application_packaged_as_a_fat_jar">Executing a Vert.x application packaged as a fat jar</h3>
<div class="paragraph">
<p>A <em>fat jar</em> is an executable jar embedding its dependencies. This means you don&#8217;t have to have Vert.x pre-installed
on the machine on which you execute the jar. Like any executable Java jar it can be executed with.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code>java -jar my-application-fat.jar</code></pre>
</div>
</div>
<div class="paragraph">
<p>There is nothing really Vert.x specific about this, you could do this with any Java application</p>
</div>
<div class="paragraph">
<p>You can either create your own main class and specify that in the manifest, but it&#8217;s recommended that you write your
code as verticles and use the Vert.x <code><a href="../../apidocs/io/vertx/core/Launcher.html">Launcher</a></code> class (<code>io.vertx.core.Launcher</code>) as your main
class. This is the same main class used when running Vert.x at the command line and therefore allows you to
specify command line arguments, such as <code>-instances</code> in order to scale your application more easily.</p>
</div>
<div class="paragraph">
<p>To deploy your verticle in a <em>fatjar</em> like this you must have a <em>manifest</em> with:</p>
</div>
<div class="ulist">
<ul>
<li>
<p><code>Main-Class</code> set to <code>io.vertx.core.Launcher</code></p>
</li>
<li>
<p><code>Main-Verticle</code> specifying the main verticle (fully qualified class name or script file name)</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>You can also provide the usual command line arguments that you would pass to <code>vertx run</code>:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code>java -jar my-verticle-fat.jar -cluster -conf myconf.json
java -jar my-verticle-fat.jar -cluster -conf myconf.json -cp path/to/dir/conf/cluster_xml</code></pre>
</div>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<div class="title">Note</div>
</td>
<td class="content">
Please consult the Maven/Gradle simplest and Maven/Gradle verticle examples in the examples repository for
examples of building applications as fatjars.
</td>
</tr>
</table>
</div>
<div class="paragraph">
<p>A fat jar executes the <code>run</code> command, by default.</p>
</div>
</div>
<div class="sect2">
<h3 id="_displaying_version_of_vert_x">Displaying version of Vert.x</h3>
<div class="paragraph">
<p>To display the vert.x version, just launch:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code>vertx version</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_other_commands">Other commands</h3>
<div class="paragraph">
<p>The <code>vertx</code> command line and the <code>Launcher</code> also provide other <em>commands</em> in addition to <code>run</code> and <code>version</code>:</p>
</div>
<div class="paragraph">
<p>You can create a <code>bare</code> instance using:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code>vertx bare
# or
java -jar my-verticle-fat.jar bare</code></pre>
</div>
</div>
<div class="paragraph">
<p>You can also start an application in background using:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code>java -jar my-verticle-fat.jar start --vertx-id=my-app-name</code></pre>
</div>
</div>
<div class="paragraph">
<p>If <code>my-app-name</code> is not set, a random id will be generated, and printed on the command prompt. You can pass <code>run</code>
options to the <code>start</code> command:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code>java -jar my-verticle-fat.jar start —-vertx-id=my-app-name -cluster</code></pre>
</div>
</div>
<div class="paragraph">
<p>Once launched in background, you can stop it with the <code>stop</code> command:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code>java -jar my-verticle-fat.jar stop my-app-name</code></pre>
</div>
</div>
<div class="paragraph">
<p>You can also list the vert.x application launched in background using:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code>java -jar my-verticle-fat.jar list</code></pre>
</div>
</div>
<div class="paragraph">
<p>The <code>start</code>, <code>stop</code> and <code>list</code> command are also available from the <code>vertx</code> tool. The start` command supports a couple of options:</p>
</div>
<div class="ulist">
<ul>
<li>
<p><code>vertx-id</code> : the application id, uses a random UUID if not set</p>
</li>
<li>
<p><code>java-opts</code> : the Java Virtual Machine options, uses the <code>JAVA_OPTS</code> environment variable if not set.</p>
</li>
<li>
<p><code>redirect-output</code> : redirect the spawned process output and error streams to the parent process streams.</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>If option values contain spaces, don&#8217;t forget to wrap the value between <code>""</code> (double-quotes).</p>
</div>
<div class="paragraph">
<p>As the <code>start</code> command spawns a new process, the java options passed to the JVM are not propagated, so you <strong>must</strong>
use <code>java-opts</code> to configure the JVM (<code>-X</code>, <code>-D</code>&#8230;&#8203;). If you use the <code>CLASSPATH</code> environment variable, be sure it
contains all the required jars (vertx-core, your jars and all the dependencies).</p>
</div>
<div class="paragraph">
<p>The set of commands is extensible, refer to the <a href="#_extending_the_vert_x_launcher">Extending the vert.x Launcher</a> section.</p>
</div>
</div>
<div class="sect2">
<h3 id="_live_redeploy">Live Redeploy</h3>
<div class="paragraph">
<p>When developing it may be convenient to automatically redeploy your application upon file changes. The <code>vertx</code>
command line tool and more generally the <code><a href="../../apidocs/io/vertx/core/Launcher.html">Launcher</a></code> class offers this feature. Here are some
examples:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code>vertx run MyVerticle.groovy --redeploy="**&amp;#47;*.groovy" --launcher-class=io.vertx.core.Launcher
vertx run MyVerticle.groovy --redeploy="**&amp;#47;*.groovy,**&amp;#47;*.rb"  --launcher-class=io.vertx.core.Launcher
java io.vertx.core.Launcher run org.acme.MyVerticle --redeploy="**&amp;#47;*.class"  --launcher-class=io.vertx.core
.Launcher -cp ...</code></pre>
</div>
</div>
<div class="paragraph">
<p>The redeployment process is implemented as follows. First your application is launched as a background application
(with the <code>start</code> command). On matching file changes, the process is stopped and the application is restarted.
This avoids leaks, as the process is restarted.</p>
</div>
<div class="paragraph">
<p>To enable the live redeploy, pass the <code>--redeploy</code> option to the <code>run</code> command. The <code>--redeploy</code> indicates the
set of file to <em>watch</em>. This set can use Ant-style patterns (with <code>**</code>, <code>*</code> and <code>?</code>). You can specify
several sets by separating them using a comma (<code>,</code>). Patterns are relative to the current working directory.</p>
</div>
<div class="paragraph">
<p>Parameters passed to the <code>run</code> command are passed to the application. Java Virtual Machine options can be
configured using <code>--java-opts</code>. For instance, to pass the the <code>conf</code> parameter or a system property, you need to
use: <code>--java-opts="-conf=my-conf.json -Dkey=value"</code></p>
</div>
<div class="paragraph">
<p>The <code>--launcher-class</code> option determine with with <em>main</em> class the application is launcher. It&#8217;s generally
<code><a href="../../apidocs/io/vertx/core/Launcher.html">Launcher</a></code>, but you have use you own <em>main</em>.</p>
</div>
<div class="paragraph">
<p>The redeploy feature can be used in your IDE:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>Eclipse - create a <em>Run</em> configuration, using the <code>io.vertx.core.Launcher</code> class a <em>main class</em>. In the <em>Program
arguments</em> area (in the <em>Arguments</em> tab), write <code>run your-verticle-fully-qualified-name --redeploy=**&#47;*.java
--launcher-class=io.vertx.core.Launcher</code>. You can also add other parameters. The redeployment works smoothly as
Eclipse incrementally compiles your files on save.</p>
</li>
<li>
<p>IntelliJ - create a <em>Run</em> configuration (<em>Application</em>), set the <em>Main class</em> to <code>io.vertx.core.Launcher</code>. In
the Program arguments write: <code>run your-verticle-fully-qualified-name --redeploy=**&#47;*.class
--launcher-class=io.vertx.core.Launcher</code>. To trigger the redeployment, you need to <em>make</em> the project or
the module explicitly (<em>Build</em> menu &#8594; <em>Make project</em>).</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>To debug your application, create your run configuration as a remote application and configure the debugger
using <code>--java-opts</code>. However, don&#8217;t forget to re-plug the debugger after every redeployment as a new process is
created every time.</p>
</div>
<div class="paragraph">
<p>You can also hook your build process in the redeploy cycle:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code>java -jar target/my-fat-jar.jar --redeploy="**&amp;#47;*.java" --on-redeploy="mvn package"
java -jar build/libs/my-fat-jar.jar --redeploy="src&amp;#47;**&amp;#47;*.java" --on-redeploy='./gradlew shadowJar'</code></pre>
</div>
</div>
<div class="paragraph">
<p>The "on-redeploy" option specifies a command invoked after the shutdown of the application and before the
restart. So you can hook your build tool if it updates some runtime artifacts. For instance, you can launch <code>gulp</code>
or <code>grunt</code> to update your resources. Don&#8217;t forget that passing parameters to your application requires the
<code>--java-opts</code> param:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code>java -jar target/my-fat-jar.jar --redeploy="**&amp;#47;*.java" --on-redeploy="mvn package" --java-opts="-Dkey=val"
java -jar build/libs/my-fat-jar.jar --redeploy="src&amp;#47;**&amp;#47;*.java" --on-redeploy='./gradlew shadowJar' --java-opts="-Dkey=val"</code></pre>
</div>
</div>
<div class="paragraph">
<p>The redeploy feature also supports the following settings:</p>
</div>
<div class="ulist">
<ul>
<li>
<p><code>redeploy-scan-period</code> : the file system check period (in milliseconds), 250ms by default</p>
</li>
<li>
<p><code>redeploy-grace-period</code> : the amount of time (in milliseconds) to wait between 2 re-deployments, 1000ms by default</p>
</li>
<li>
<p><code>redeploy-termination-period</code> : the amount of time to wait after having stopped the application (before
launching user command). This is useful on Windows, where the process is not killed immediately. The time is given
in milliseconds. 0 ms by default.</p>
</li>
</ul>
</div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_cluster_managers">Cluster Managers</h2>
<div class="sectionbody">
<div class="paragraph">
<p>In Vert.x a cluster manager is used for various functions including:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>Discovery and group membership of Vert.x nodes in a cluster</p>
</li>
<li>
<p>Maintaining cluster wide topic subscriber lists (so we know which nodes are interested in which event bus addresses)</p>
</li>
<li>
<p>Distributed Map support</p>
</li>
<li>
<p>Distributed Locks</p>
</li>
<li>
<p>Distributed Counters</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>Cluster managers <em>do not</em> handle the event bus inter-node transport, this is done directly by Vert.x with TCP connections.</p>
</div>
<div class="paragraph">
<p>The default cluster manager used in the Vert.x distributions is one that uses <a href="http://hazelcast.com">Hazelcast</a> but this
can be easily replaced by a different implementation as Vert.x cluster managers are pluggable.</p>
</div>
<div class="paragraph">
<p>A cluster manager must implement the interface <code><a href="../../apidocs/io/vertx/core/spi/cluster/ClusterManager.html">ClusterManager</a></code>. Vert.x locates
cluster managers at run-time by using the Java
<a href="https://docs.oracle.com/javase/8/docs/api/java/util/ServiceLoader.html">Service Loader</a> functionality to locate
instances of <code><a href="../../apidocs/io/vertx/core/spi/cluster/ClusterManager.html">ClusterManager</a></code> on the classpath.</p>
</div>
<div class="paragraph">
<p>If you are using Vert.x at the command line and you want to use clustering you should make sure the <code>lib</code> directory
of the Vert.x installation contains your cluster manager jar.</p>
</div>
<div class="paragraph">
<p>If you are using Vert.x from a Maven or Gradle project just add the cluster manager jar as a dependency of your project.</p>
</div>
<div class="paragraph">
<p>You can also specify cluster managers programmatically if embedding Vert.x using
<code><a href="../../apidocs/io/vertx/core/VertxOptions.html#setClusterManager-io.vertx.core.spi.cluster.ClusterManager-">setClusterManager</a></code>.</p>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_logging">Logging</h2>
<div class="sectionbody">
<div class="paragraph">
<p>Vert.x logs using it&#8217;s in-built logging API. The default implementation uses the JDK (JUL) logging so no extra
logging dependencies are needed.</p>
</div>
<div class="sect2">
<h3 id="_configuring_jul_logging">Configuring JUL logging</h3>
<div class="paragraph">
<p>A JUL logging configuration file can be specified in the normal JUL way by providing a system property called:
<code>java.util.logging.config.file</code> with the value being your configuration file. For more information on this and
the structure of a JUL config file please consult the JUL logging documentation.</p>
</div>
<div class="paragraph">
<p>Vert.x also provides a slightly more convenient way to specify a configuration file without having to set a system
property. Just provide a JUL config file with the name <code>vertx-default-jul-logging.properties</code> on your classpath (e.g.
inside your fatjar) and Vert.x will use that to configure JUL.</p>
</div>
</div>
<div class="sect2">
<h3 id="_using_another_logging_framework">Using another logging framework</h3>
<div class="paragraph">
<p>If you don&#8217;t want Vert.x to use JUL for it&#8217;s own logging you can configure it to use another logging framework, e.g.
Log4J or SLF4J.</p>
</div>
<div class="paragraph">
<p>To do this you should set a system property called <code>vertx.logger-delegate-factory-class-name</code> with the name of a Java
class which implements the interface <code><a href="../../apidocs/io/vertx/core/spi/logging/LogDelegateFactory.html">LogDelegateFactory</a></code>. We provide pre-built
implementations for Log4J (version 1), Log4J 2 and SLF4J with the class names
<code>io.vertx.core.logging.Log4jLogDelegateFactory</code>, <code>io.vertx.core.logging.Log4j2LogDelegateFactory</code> and
<code>io.vertx.core.logging.SLF4JLogDelegateFactory</code> respectively. If you want to use these implementations you should
also make sure the relevant Log4J or SLF4J jars are on your classpath.</p>
</div>
<div class="paragraph">
<p>Notice that, the provided delegate for Log4J 1 does not support parameterized message. The delegate for Log4J 2
uses the <code>{}</code> syntax like the SLF4J delegate. JUL delegate uses the <code>{x}</code> syntax.</p>
</div>
</div>
<div class="sect2">
<h3 id="netty-logging">Netty logging</h3>
<div class="paragraph">
<p>When configuring logging, you should care about configuring Netty logging as well.</p>
</div>
<div class="paragraph">
<p>Netty does not rely on external logging configuration (e.g system properties) and instead implements a logging
configuration based on the logging libraries visible from the Netty classes:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>use <code>SLF4J</code> library if it is visible</p>
</li>
<li>
<p>otherwise use <code>Log4j</code> if it is visible</p>
</li>
<li>
<p>otherwise fallback <code>java.util.logging</code></p>
</li>
</ul>
</div>
<div class="paragraph">
<p>The logger implementation can be forced to a specific implementation by setting Netty&#8217;s internal logger implementation directly
on <code>io.netty.util.internal.logging.InternalLoggerFactory</code>:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="java"><span class="comment">// Force logging to Log4j</span>
InternalLoggerFactory.setDefaultFactory(Log4JLoggerFactory.INSTANCE);</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_troubleshooting">Troubleshooting</h3>
<div class="sect3">
<h4 id="_slf4j_warning_at_startup">SLF4J warning at startup</h4>
<div class="paragraph">
<p>If, when you start your application, you see the following message:</p>
</div>
<div class="listingblock">
<div class="content">
<pre>SLF4J: Failed to load class "org.slf4j.impl.StaticLoggerBinder".
SLF4J: Defaulting to no-operation (NOP) logger implementation
SLF4J: See http://www.slf4j.org/codes.html#StaticLoggerBinder for further details.</pre>
</div>
</div>
<div class="paragraph">
<p>It means that you have SLF4J-API in your classpath but no actual binding. Messages logged with SLF4J will be dropped.
You should add a binding to your classpath. Check <a href="https://www.slf4j.org/manual.html#swapping" class="bare">https://www.slf4j.org/manual.html#swapping</a> to pick a binding and configure it.</p>
</div>
<div class="paragraph">
<p>Be aware that Netty looks for the SLF4-API jar and uses it by default.</p>
</div>
</div>
<div class="sect3">
<h4 id="_connection_reset_by_peer">Connection reset by peer</h4>
<div class="paragraph">
<p>If your logs show a bunch of:</p>
</div>
<div class="listingblock">
<div class="content">
<pre>io.vertx.core.net.impl.ConnectionBase
SEVERE: java.io.IOException: Connection reset by peer</pre>
</div>
</div>
<div class="paragraph">
<p>It means that the client is resetting the HTTP connection instead of closing it. This message also indicates that you
may have not consumed the complete payload (the connection was cut before you were able to).</p>
</div>
<div class="paragraph">
<p>Unresolved directive in index.adoc - include::override/hostname-resolution.adoc[]</p>
</div>
</div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_high_availability_and_fail_over">High Availability and Fail-Over</h2>
<div class="sectionbody">
<div class="paragraph">
<p>Vert.x allows you to run your verticles with high availability (HA) support. In that case, when a vert.x
instance running a verticle dies abruptly, the verticle is migrated to another vertx instance. The vert.x
instances must be in the same cluster.</p>
</div>
<div class="sect2">
<h3 id="_automatic_failover">Automatic failover</h3>
<div class="paragraph">
<p>When vert.x runs with <em>HA</em> enabled, if a vert.x instance where a verticle runs fails or dies, the verticle is
redeployed automatically on another vert.x instance of the cluster. We call this <em>verticle fail-over</em>.</p>
</div>
<div class="paragraph">
<p>To run vert.x with the <em>HA</em> enabled, just add the <code>-ha</code> flag to the command line:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code>vertx run my-verticle.js -ha</code></pre>
</div>
</div>
<div class="paragraph">
<p>Now for HA to work, you need more than one Vert.x instances in the cluster, so let&#8217;s say you have another
Vert.x instance that you have already started, for example:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code>vertx run my-other-verticle.js -ha</code></pre>
</div>
</div>
<div class="paragraph">
<p>If the Vert.x instance that is running <code>my-verticle.js</code> now dies (you can test this by killing the process
with <code>kill -9</code>), the Vert.x instance that is running <code>my-other-verticle.js</code> will automatic deploy <code>my-verticle
.js</code> so now that Vert.x instance is running both verticles.</p>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<div class="title">Note</div>
</td>
<td class="content">
the migration is only possible if the second vert.x instance has access to the verticle file (here
<code>my-verticle.js</code>).
</td>
</tr>
</table>
</div>
<div class="admonitionblock important">
<table>
<tr>
<td class="icon">
<div class="title">Important</div>
</td>
<td class="content">
Please note that cleanly closing a Vert.x instance will not cause failover to occur, e.g. <code>CTRL-C</code>
or <code>kill -SIGINT</code>
</td>
</tr>
</table>
</div>
<div class="paragraph">
<p>You can also start <em>bare</em> Vert.x instances - i.e. instances that are not initially running any verticles, they
will also failover for nodes in the cluster. To start a bare instance you simply do:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code>vertx run -ha</code></pre>
</div>
</div>
<div class="paragraph">
<p>When using the <code>-ha</code> switch you do not need to provide the <code>-cluster</code> switch, as a cluster is assumed if you
want HA.</p>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<div class="title">Note</div>
</td>
<td class="content">
depending on your cluster configuration, you may need to customize the cluster manager configuration
(Hazelcast by default), and/or add the <code>cluster-host</code> and <code>cluster-port</code> parameters.
</td>
</tr>
</table>
</div>
</div>
<div class="sect2">
<h3 id="_ha_groups">HA groups</h3>
<div class="paragraph">
<p>When running a Vert.x instance with HA you can also optional specify a <em>HA group</em>. A HA group denotes a
logical group of nodes in the cluster. Only nodes with the same HA group will failover onto one another. If
you don&#8217;t specify a HA group the default group <code>__DEFAULT__</code> is used.</p>
</div>
<div class="paragraph">
<p>To specify an HA group you use the <code>-hagroup</code> switch when running the verticle, e.g.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code>vertx run my-verticle.js -ha -hagroup my-group</code></pre>
</div>
</div>
<div class="paragraph">
<p>Let&#8217;s look at an example:</p>
</div>
<div class="paragraph">
<p>In a first terminal:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code>vertx run my-verticle.js -ha -hagroup g1</code></pre>
</div>
</div>
<div class="paragraph">
<p>In a second terminal, let&#8217;s run another verticle using the same group:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code>vertx run my-other-verticle.js -ha -hagroup g1</code></pre>
</div>
</div>
<div class="paragraph">
<p>Finally, in a third terminal, launch another verticle using a different group:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code>vertx run yet-another-verticle.js -ha -hagroup g2</code></pre>
</div>
</div>
<div class="paragraph">
<p>If we kill the instance in terminal 1, it will fail over to the instance in terminal 2, not the instance in
terminal 3 as that has a different group.</p>
</div>
<div class="paragraph">
<p>If we kill the instance in terminal 3, it won&#8217;t get failed over as there is no other vert.x instance in that
group.</p>
</div>
</div>
<div class="sect2">
<h3 id="_dealing_with_network_partitions_quora">Dealing with network partitions - Quora</h3>
<div class="paragraph">
<p>The HA implementation also supports quora. A quorum is the minimum number of votes that a distributed
transaction has to obtain in order to be allowed to perform an operation in a distributed system.</p>
</div>
<div class="paragraph">
<p>When starting a Vert.x instance you can instruct it that it requires a <code>quorum</code> before any HA deployments will
be deployed. In this context, a quorum is a minimum number of nodes for a particular group in the cluster.
Typically you chose your quorum size to <code>Q = 1 + N/2</code> where <code>N</code> is the number of nodes in the group. If there
are less than <code>Q</code> nodes in the cluster the HA deployments will undeploy. They will redeploy again if/when a
quorum is re-attained. By doing this you can prevent against network partitions, a.k.a. <em>split brain</em>.</p>
</div>
<div class="paragraph">
<p>There is more information on quora <a href="https://en.wikipedia.org/wiki/Quorum_(distributed_computing)">here</a>.</p>
</div>
<div class="paragraph">
<p>To run vert.x instances with a quorum you specify <code>-quorum</code> on the command line, e.g.</p>
</div>
<div class="paragraph">
<p>In a first terminal:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code>vertx run my-verticle.js -ha -quorum 3</code></pre>
</div>
</div>
<div class="paragraph">
<p>At this point the Vert.x instance will start but not deploy the module (yet) because there is only one node
in the cluster, not 3.</p>
</div>
<div class="paragraph">
<p>In a second terminal:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code>vertx run my-other-verticle.js -ha -quorum 3</code></pre>
</div>
</div>
<div class="paragraph">
<p>At this point the Vert.x instance will start but not deploy the module (yet) because there are only two nodes
in the cluster, not 3.</p>
</div>
<div class="paragraph">
<p>In a third console, you can start another instance of vert.x:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code>vertx run yet-another-verticle.js -ha -quorum 3</code></pre>
</div>
</div>
<div class="paragraph">
<p>Yay! - we have three nodes, that&#8217;s a quorum. At this point the modules will automatically deploy on all
instances.</p>
</div>
<div class="paragraph">
<p>If we now close or kill one of the nodes the modules will automatically undeploy on the other nodes, as there
is no longer a quorum.</p>
</div>
<div class="paragraph">
<p>Quora can also be used in conjunction with ha groups. In that case, quora are resolved for each particular
group.</p>
</div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_native_transports">Native transports</h2>
<div class="sectionbody">
<div class="paragraph">
<p>Vert.x can run with <a href="http://netty.io/wiki/native-transports.html">native transports</a> (when available) on BSD (OSX) and Linux:</p>
</div>
<div class="paragraph">
<p>Unresolved directive in index.adoc - include::override/configuring-native.adoc[]</p>
</div>
<div class="sect2">
<h3 id="_native_linux_transport">Native Linux Transport</h3>
<div class="paragraph">
<p>You need to add the following dependency in your classpath:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="xml"><span class="tag">&lt;dependency&gt;</span>
 <span class="tag">&lt;groupId&gt;</span>io.netty<span class="tag">&lt;/groupId&gt;</span>
 <span class="tag">&lt;artifactId&gt;</span>netty-transport-native-epoll<span class="tag">&lt;/artifactId&gt;</span>
 <span class="tag">&lt;version&gt;</span>4.1.15.Final<span class="tag">&lt;/version&gt;</span>
 <span class="tag">&lt;classifier&gt;</span>linux-x86_64<span class="tag">&lt;/classifier&gt;</span>
<span class="tag">&lt;/dependency&gt;</span></code></pre>
</div>
</div>
<div class="paragraph">
<p>Native on Linux gives you extra networking options:</p>
</div>
<div class="ulist">
<ul>
<li>
<p><code>SO_REUSEPORT</code></p>
</li>
<li>
<p><code>TCP_QUICKACK</code></p>
</li>
<li>
<p><code>TCP_CORK</code></p>
</li>
<li>
<p><code>TCP_FASTOPEN</code></p>
</li>
</ul>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">// Available on Linux
vertx.createHttpServer(HttpServerOptions(
  tcpFastOpen = fastOpen,
  tcpCork = cork,
  tcpQuickAck = quickAck,
  reusePort = reusePort))</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_native_bsd_transport">Native BSD Transport</h3>
<div class="paragraph">
<p>You need to add the following dependency in your classpath:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="xml"><span class="tag">&lt;dependency&gt;</span>
 <span class="tag">&lt;groupId&gt;</span>io.netty<span class="tag">&lt;/groupId&gt;</span>
 <span class="tag">&lt;artifactId&gt;</span>netty-transport-native-kqueue<span class="tag">&lt;/artifactId&gt;</span>
 <span class="tag">&lt;version&gt;</span>4.1.15.Final<span class="tag">&lt;/version&gt;</span>
 <span class="tag">&lt;classifier&gt;</span>osx-x86_64<span class="tag">&lt;/classifier&gt;</span>
<span class="tag">&lt;/dependency&gt;</span></code></pre>
</div>
</div>
<div class="paragraph">
<p>MacOS Sierra and above are supported.</p>
</div>
<div class="paragraph">
<p>Native on BSD gives you extra networking options:</p>
</div>
<div class="ulist">
<ul>
<li>
<p><code>SO_REUSEPORT</code></p>
</li>
</ul>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">// Available on BSD
vertx.createHttpServer(HttpServerOptions(
  reusePort = reusePort))</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_domain_sockets">Domain sockets</h3>
<div class="paragraph">
<p>Natives provide domain sockets support for servers:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">// Only available on BSD and Linux
vertx.createNetServer().connectHandler({ so -&gt;
  // Handle application
}).listen(SocketAddress.domainSocketAddress(&quot;/var/tmp/myservice.sock&quot;))</code></pre>
</div>
</div>
<div class="paragraph">
<p>or for http:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">vertx.createHttpServer().requestHandler({ req -&gt;
  // Handle application
}).listen(SocketAddress.domainSocketAddress(&quot;/var/tmp/myservice.sock&quot;), { ar -&gt;
  if (ar.succeeded()) {
    // Bound to socket
  } else {
    ar.cause().printStackTrace()
  }
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>As well as clients:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var netClient = vertx.createNetClient()

// Only available on BSD and Linux
var addr = SocketAddress.domainSocketAddress(&quot;/var/tmp/myservice.sock&quot;)

// Connect to the server
netClient.connect(addr, { ar -&gt;
  if (ar.succeeded()) {
    // Connected
  } else {
    ar.cause().printStackTrace()
  }
})</code></pre>
</div>
</div>
<div class="paragraph">
<p>or for http:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var httpClient = vertx.createHttpClient()

// Only available on BSD and Linux
var addr = SocketAddress.domainSocketAddress(&quot;/var/tmp/myservice.sock&quot;)

// Send request to the server
httpClient.request(HttpMethod.GET, addr, 8080, &quot;localhost&quot;, &quot;/&quot;, { resp -&gt;
  // Process response
}).end()</code></pre>
</div>
</div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_security_notes">Security notes</h2>
<div class="sectionbody">
<div class="paragraph">
<p>Vert.x is a toolkit, not an opinionated framework where we force you to do things in a certain way. This gives you
great power as a developer but with that comes great responsibility.</p>
</div>
<div class="paragraph">
<p>As with any toolkit, it&#8217;s possible to write insecure applications, so you should always be careful when developing
your application especially if it&#8217;s exposed to the public (e.g. over the internet).</p>
</div>
<div class="sect2">
<h3 id="_web_applications">Web applications</h3>
<div class="paragraph">
<p>If writing a web application it&#8217;s highly recommended that you use Vert.x-Web instead of Vert.x core directly for
serving resources and handling file uploads.</p>
</div>
<div class="paragraph">
<p>Vert.x-Web normalises the path in requests to prevent malicious clients from crafting URLs to access resources
outside of the web root.</p>
</div>
<div class="paragraph">
<p>Similarly for file uploads Vert.x-Web provides functionality for uploading to a known place on disk and does not rely
on the filename provided by the client in the upload which could be crafted to upload to a different place on disk.</p>
</div>
<div class="paragraph">
<p>Vert.x core itself does not provide such checks so it would be up to you as a developer to implement them yourself.</p>
</div>
</div>
<div class="sect2">
<h3 id="_clustered_event_bus_traffic">Clustered event bus traffic</h3>
<div class="paragraph">
<p>When clustering the event bus between different Vert.x nodes on a network, the traffic is sent un-encrypted across the
wire, so do not use this if you have confidential data to send and your Vert.x nodes are not on a trusted network.</p>
</div>
</div>
<div class="sect2">
<h3 id="_standard_security_best_practices">Standard security best practices</h3>
<div class="paragraph">
<p>Any service can have potentially vulnerabilities whether it&#8217;s written using Vert.x or any other toolkit so always
follow security best practice, especially if your service is public facing.</p>
</div>
<div class="paragraph">
<p>For example you should always run them in a DMZ and with an user account that has limited rights in order to limit
the extent of damage in case the service was compromised.</p>
</div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_vert_x_command_line_interface_api">Vert.x Command Line Interface API</h2>
<div class="sectionbody">
<div class="paragraph">
<p>Vert.x Core provides an API for parsing command line arguments passed to programs. It&#8217;s also able to print help
messages detailing the options available for a command line tool. Even if such features are far from
the Vert.x core topics, this API is used in the <code><a href="../../apidocs/io/vertx/core/Launcher.html">Launcher</a></code> class that you can use in <em>fat-jar</em>
and in the <code>vertx</code> command line tools. In addition, it&#8217;s polyglot (can be used from any supported language) and is
used in Vert.x Shell.</p>
</div>
<div class="paragraph">
<p>Vert.x CLI provides a model to describe your command line interface, but also a parser. This parser supports
different types of syntax:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>POSIX like options (ie. <code>tar -zxvf foo.tar.gz</code>)</p>
</li>
<li>
<p>GNU like long options (ie. <code>du --human-readable --max-depth=1</code>)</p>
</li>
<li>
<p>Java like properties (ie. <code>java -Djava.awt.headless=true -Djava.net.useSystemProxies=true Foo</code>)</p>
</li>
<li>
<p>Short options with value attached (ie. <code>gcc -O2 foo.c</code>)</p>
</li>
<li>
<p>Long options with single hyphen (ie. <code>ant -projecthelp</code>)</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>Using the CLI api is a 3-steps process:</p>
</div>
<div class="olist arabic">
<ol class="arabic">
<li>
<p>The definition of the command line interface</p>
</li>
<li>
<p>The parsing of the user command line</p>
</li>
<li>
<p>The query / interrogation</p>
</li>
</ol>
</div>
<div class="sect2">
<h3 id="_definition_stage">Definition Stage</h3>
<div class="paragraph">
<p>Each command line interface must define the set of options and arguments that will be used. It also requires a
name. The CLI API uses the <code><a href="../../apidocs/io/vertx/core/cli/Option.html">Option</a></code> and <code><a href="../../apidocs/io/vertx/core/cli/Argument.html">Argument</a></code> classes to
describe options and arguments:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var cli = CLI.create(&quot;copy&quot;).setSummary(&quot;A command line interface to copy files.&quot;).addOption(Option(
  longName = &quot;directory&quot;,
  shortName = &quot;R&quot;,
  description = &quot;enables directory support&quot;,
  flag = true)).addArgument(Argument(
  index = 0,
  description = &quot;The source&quot;,
  argName = &quot;source&quot;)).addArgument(Argument(
  index = 1,
  description = &quot;The destination&quot;,
  argName = &quot;target&quot;))</code></pre>
</div>
</div>
<div class="paragraph">
<p>As you can see, you can create a new <code><a href="../../apidocs/io/vertx/core/cli/CLI.html">CLI</a></code> using
<code><a href="../../apidocs/io/vertx/core/cli/CLI.html#create-java.lang.String-">CLI.create</a></code>. The passed string is the name of the CLI. Once created you
can set the summary and description. The summary is intended to be short (one line), while the description can
contain more details. Each option and argument are also added on the <code>CLI</code> object using the
<code><a href="../../apidocs/io/vertx/core/cli/CLI.html#addArgument-io.vertx.core.cli.Argument-">addArgument</a></code> and
<code><a href="../../apidocs/io/vertx/core/cli/CLI.html#addOption-io.vertx.core.cli.Option-">addOption</a></code> methods.</p>
</div>
<div class="sect3">
<h4 id="_options">Options</h4>
<div class="paragraph">
<p>An <code><a href="../../apidocs/io/vertx/core/cli/Option.html">Option</a></code> is a command line parameter identified by a <em>key</em> present in the user command
line. Options must have at least a long name or a short name. Long name are generally used using a <code>--</code> prefix,
while short names are used with a single <code>-</code>. Options can get a description displayed in the usage (see below).
Options can receive 0, 1 or several values. An option receiving 0 values is a <code>flag</code>, and must be declared using
<code><a href="../../apidocs/io/vertx/core/cli/Option.html#setFlag-boolean-">setFlag</a></code>. By default, options receive a single value, however, you can
configure the option to receive several values using <code><a href="../../apidocs/io/vertx/core/cli/Option.html#setMultiValued-boolean-">setMultiValued</a></code>:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var cli = CLI.create(&quot;some-name&quot;).setSummary(&quot;A command line interface illustrating the options valuation.&quot;).addOption(Option(
  longName = &quot;flag&quot;,
  shortName = &quot;f&quot;,
  flag = true,
  description = &quot;a flag&quot;)).addOption(Option(
  longName = &quot;single&quot;,
  shortName = &quot;s&quot;,
  description = &quot;a single-valued option&quot;)).addOption(Option(
  longName = &quot;multiple&quot;,
  shortName = &quot;m&quot;,
  multiValued = true,
  description = &quot;a multi-valued option&quot;))</code></pre>
</div>
</div>
<div class="paragraph">
<p>Options can be marked as mandatory. A mandatory option not set in the user command line throws an exception during
the parsing:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var cli = CLI.create(&quot;some-name&quot;).addOption(Option(
  longName = &quot;mandatory&quot;,
  required = true,
  description = &quot;a mandatory option&quot;))</code></pre>
</div>
</div>
<div class="paragraph">
<p>Non-mandatory options can have a <em>default value</em>. This value would be used if the user does not set the option in
the command line:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var cli = CLI.create(&quot;some-name&quot;).addOption(Option(
  longName = &quot;optional&quot;,
  defaultValue = &quot;hello&quot;,
  description = &quot;an optional option with a default value&quot;))</code></pre>
</div>
</div>
<div class="paragraph">
<p>An option can be <em>hidden</em> using the <code><a href="../../apidocs/io/vertx/core/cli/Option.html#setHidden-boolean-">setHidden</a></code> method. Hidden option are
not listed in the usage, but can still be used in the user command line (for power-users).</p>
</div>
<div class="paragraph">
<p>If the option value is contrained to a fixed set, you can set the different acceptable choices:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var cli = CLI.create(&quot;some-name&quot;).addOption(Option(
  longName = &quot;color&quot;,
  defaultValue = &quot;green&quot;,
  choices = listOf(&quot;blue&quot;, &quot;red&quot;, &quot;green&quot;),
  description = &quot;a color&quot;))</code></pre>
</div>
</div>
<div class="paragraph">
<p>Options can also be instantiated from their JSON form.</p>
</div>
</div>
<div class="sect3">
<h4 id="_arguments">Arguments</h4>
<div class="paragraph">
<p>Unlike options, arguments do not have a <em>key</em> and are identified by their <em>index</em>. For example, in
<code>java com.acme.Foo</code>, <code>com.acme.Foo</code> is an argument.</p>
</div>
<div class="paragraph">
<p>Arguments do not have a name, there are identified using a 0-based index. The first parameter has the
index <code>0</code>:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var cli = CLI.create(&quot;some-name&quot;).addArgument(Argument(
  index = 0,
  description = &quot;the first argument&quot;,
  argName = &quot;arg1&quot;)).addArgument(Argument(
  index = 1,
  description = &quot;the second argument&quot;,
  argName = &quot;arg2&quot;))</code></pre>
</div>
</div>
<div class="paragraph">
<p>If you don&#8217;t set the argument indexes, it computes it automatically by using the declaration order.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var cli = CLI.create(&quot;some-name&quot;).addArgument(Argument(
  description = &quot;the first argument&quot;,
  argName = &quot;arg1&quot;)).addArgument(Argument(
  description = &quot;the second argument&quot;,
  argName = &quot;arg2&quot;))</code></pre>
</div>
</div>
<div class="paragraph">
<p>The <code>argName</code> is optional and used in the usage message.</p>
</div>
<div class="paragraph">
<p>As options, <code><a href="../../apidocs/io/vertx/core/cli/Argument.html">Argument</a></code> can:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>be hidden using <code><a href="../../apidocs/io/vertx/core/cli/Argument.html#setHidden-boolean-">setHidden</a></code></p>
</li>
<li>
<p>be mandatory using <code><a href="../../apidocs/io/vertx/core/cli/Argument.html#setRequired-boolean-">setRequired</a></code></p>
</li>
<li>
<p>have a default value using <code><a href="../../apidocs/io/vertx/core/cli/Argument.html#setDefaultValue-java.lang.String-">setDefaultValue</a></code></p>
</li>
<li>
<p>receive several values using <code><a href="../../apidocs/io/vertx/core/cli/Argument.html#setMultiValued-boolean-">setMultiValued</a></code> - only the last argument
can be multi-valued.</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>Arguments can also be instantiated from their JSON form.</p>
</div>
</div>
<div class="sect3">
<h4 id="_usage_generation">Usage generation</h4>
<div class="paragraph">
<p>Once your <code><a href="../../apidocs/io/vertx/core/cli/CLI.html">CLI</a></code> instance is configured, you can generate the <em>usage</em> message:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var cli = CLI.create(&quot;copy&quot;).setSummary(&quot;A command line interface to copy files.&quot;).addOption(Option(
  longName = &quot;directory&quot;,
  shortName = &quot;R&quot;,
  description = &quot;enables directory support&quot;,
  flag = true)).addArgument(Argument(
  index = 0,
  description = &quot;The source&quot;,
  argName = &quot;source&quot;)).addArgument(Argument(
  index = 0,
  description = &quot;The destination&quot;,
  argName = &quot;target&quot;))

var builder = java.lang.StringBuilder()
cli.usage(builder)</code></pre>
</div>
</div>
<div class="paragraph">
<p>It generates an usage message like this one:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code>Usage: copy [-R] source target

A command line interface to copy files.

 -R,--directory   enables directory support</code></pre>
</div>
</div>
<div class="paragraph">
<p>If you need to tune the usage message, check the <code><a href="../../apidocs/io/vertx/core/cli/UsageMessageFormatter.html">UsageMessageFormatter</a></code> class.</p>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_parsing_stage">Parsing Stage</h3>
<div class="paragraph">
<p>Once your <code><a href="../../apidocs/io/vertx/core/cli/CLI.html">CLI</a></code> instance is configured, you can parse the user command line to evaluate
each option and argument:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var commandLine = cli.parse(userCommandLineArguments)</code></pre>
</div>
</div>
<div class="paragraph">
<p>The <code><a href="../../apidocs/io/vertx/core/cli/CLI.html#parse-java.util.List-">parse</a></code> method returns a <code><a href="../../apidocs/io/vertx/core/cli/CommandLine.html">CommandLine</a></code>
object containing the values. By default, it validates the user command line and checks that each mandatory options
and arguments have been set as well as the number of values received by each option. You can disable the
validation by passing <code>false</code> as second parameter of <code><a href="../../apidocs/io/vertx/core/cli/CLI.html#parse-java.util.List-boolean-">parse</a></code>.
This is useful if you want to check an argument or option is present even if the parsed command line is invalid.</p>
</div>
<div class="paragraph">
<p>You can check whether or not the
<code><a href="../../apidocs/io/vertx/core/cli/CommandLine.html">CommandLine</a></code> is valid using <code><a href="../../apidocs/io/vertx/core/cli/CommandLine.html#isValid--">isValid</a></code>.</p>
</div>
</div>
<div class="sect2">
<h3 id="_query_interrogation_stage">Query / Interrogation Stage</h3>
<div class="paragraph">
<p>Once parsed, you can retrieve the values of the options and arguments from the
<code><a href="../../apidocs/io/vertx/core/cli/CommandLine.html">CommandLine</a></code> object returned by the <code><a href="../../apidocs/io/vertx/core/cli/CLI.html#parse-java.util.List-">parse</a></code>
method:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var commandLine = cli.parse(userCommandLineArguments)
var opt = commandLine.getOptionValue&lt;Any&gt;(&quot;my-option&quot;)
var flag = commandLine.isFlagEnabled(&quot;my-flag&quot;)
var arg0 = commandLine.getArgumentValue&lt;Any&gt;(0)</code></pre>
</div>
</div>
<div class="paragraph">
<p>One of your option can have been marked as "help". If a user command line enabled a "help" option, the validation
won&#8217;t failed, but give you the opportunity to check if the user asks for help:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="kotlin">var cli = CLI.create(&quot;test&quot;).addOption(Option(
  longName = &quot;help&quot;,
  shortName = &quot;h&quot;,
  flag = true,
  help = true)).addOption(Option(
  longName = &quot;mandatory&quot;,
  required = true))

var line = cli.parse(java.util.Collections.singletonList(&quot;-h&quot;))

// The parsing does not fail and let you do:
if (!line.isValid() &amp;&amp; line.isAskingForHelp()) {
  var builder = java.lang.StringBuilder()
  cli.usage(builder)
  stream.print(builder.toString())
}</code></pre>
</div>
</div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_the_vert_x_launcher">The vert.x Launcher</h2>
<div class="sectionbody">
<div class="paragraph">
<p>The vert.x <code><a href="../../apidocs/io/vertx/core/Launcher.html">Launcher</a></code> is used in <em>fat jar</em> as main class, and by the <code>vertx</code> command line
utility. It executes a set of <em>commands</em> such as <em>run</em>, <em>bare</em>, <em>start</em>&#8230;&#8203;</p>
</div>
<div class="sect2">
<h3 id="_extending_the_vert_x_launcher">Extending the vert.x Launcher</h3>
<div class="paragraph">
<p>You can extend the set of command by implementing your own <code><a href="../../apidocs/io/vertx/core/spi/launcher/Command.html">Command</a></code> (in Java only):</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="java">&amp;<span class="error">#</span><span class="integer">64</span>;<span class="predefined-type">Name</span>(<span class="string"><span class="delimiter">&quot;</span><span class="content">my-command</span><span class="delimiter">&quot;</span></span>)
&amp;<span class="error">#</span><span class="integer">64</span>;Summary(<span class="string"><span class="delimiter">&quot;</span><span class="content">A simple hello command.</span><span class="delimiter">&quot;</span></span>)
<span class="directive">public</span> <span class="type">class</span> <span class="class">MyCommand</span> <span class="directive">extends</span> DefaultCommand {

 <span class="directive">private</span> <span class="predefined-type">String</span> name;

 &amp;<span class="error">#</span><span class="integer">64</span>;<span class="predefined-type">Option</span>(longName = <span class="string"><span class="delimiter">&quot;</span><span class="content">name</span><span class="delimiter">&quot;</span></span>, required = <span class="predefined-constant">true</span>)
 <span class="directive">public</span> <span class="type">void</span> setName(<span class="predefined-type">String</span> n) {
   <span class="local-variable">this</span>.name = n;
 }

 &amp;<span class="error">#</span><span class="integer">64</span>;<span class="predefined-type">Override</span>
 <span class="directive">public</span> <span class="type">void</span> run() <span class="directive">throws</span> CLIException {
   <span class="predefined-type">System</span>.out.println(<span class="string"><span class="delimiter">&quot;</span><span class="content">Hello </span><span class="delimiter">&quot;</span></span> + name);
 }
}</code></pre>
</div>
</div>
<div class="paragraph">
<p>You also need an implementation of <code><a href="../../apidocs/io/vertx/core/spi/launcher/CommandFactory.html">CommandFactory</a></code>:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code data-lang="java"><span class="directive">public</span> <span class="type">class</span> <span class="class">HelloCommandFactory</span> <span class="directive">extends</span> DefaultCommandFactory&lt;HelloCommand&gt; {
 <span class="directive">public</span> HelloCommandFactory() {
  <span class="local-variable">super</span>(HelloCommand.class);
 }
}</code></pre>
</div>
</div>
<div class="paragraph">
<p>Then, create the <code>src/main/resources/META-INF/services/io.vertx.core.spi.launcher.CommandFactory</code> and add a line
indicating the fully qualified name of the factory:</p>
</div>
<div class="listingblock">
<div class="content">
<pre>io.vertx.core.launcher.example.HelloCommandFactory</pre>
</div>
</div>
<div class="paragraph">
<p>Builds the jar containing the command. Be sure to includes the SPI file
(<code>META-INF/services/io.vertx.core.spi.launcher.CommandFactory</code>).</p>
</div>
<div class="paragraph">
<p>Then, place the jar containing the command into the classpath of your fat-jar (or include it inside) or in the <code>lib</code>
directory of your vert.x distribution, and you would be able to execute:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code>vertx hello vert.x
java -jar my-fat-jar.jar hello vert.x</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_using_the_launcher_in_fat_jars">Using the Launcher in fat jars</h3>
<div class="paragraph">
<p>To use the <code><a href="../../apidocs/io/vertx/core/Launcher.html">Launcher</a></code> class in a <em>fat-jar</em> just set the <code>Main-Class</code> of the <em>MANIFEST</em> to
<code>io.vertx.core.Launcher</code>. In addition, set the <code>Main-Verticle</code> <em>MANIFEST</em> entry to the name of your main verticle.</p>
</div>
<div class="paragraph">
<p>By default, it executed the <code>run</code> command. However, you can configure the default command by setting the
<code>Main-Command</code> <em>MANIFEST</em> entry. The default command is used if the <em>fat jar</em> is launched without a command.</p>
</div>
</div>
<div class="sect2">
<h3 id="_sub_classing_the_launcher">Sub-classing the Launcher</h3>
<div class="paragraph">
<p>You can also create a sub-class of <code><a href="../../apidocs/io/vertx/core/Launcher.html">Launcher</a></code> to start your application. The class has been
designed to be easily extensible.</p>
</div>
<div class="paragraph">
<p>A <code><a href="../../apidocs/io/vertx/core/Launcher.html">Launcher</a></code> sub-class can:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>customize the vert.x configuration in <code><a href="../../apidocs/io/vertx/core/Launcher.html#beforeStartingVertx-io.vertx.core.VertxOptions-">beforeStartingVertx</a></code></p>
</li>
<li>
<p>retrieve the vert.x instance created by the "run" or "bare" command by
overriding <code><a href="../../apidocs/io/vertx/core/Launcher.html#afterStartingVertx-io.vertx.core.Vertx-">afterStartingVertx</a></code></p>
</li>
<li>
<p>configure the default verticle and command with
<code><a href="../../apidocs/io/vertx/core/impl/launcher/VertxCommandLauncher.html#getMainVerticle--">getMainVerticle</a></code> and
<code><a href="../../apidocs/io/vertx/core/impl/launcher/VertxCommandLauncher.html#getDefaultCommand--">getDefaultCommand</a></code></p>
</li>
<li>
<p>add / remove commands using <code><a href="../../apidocs/io/vertx/core/impl/launcher/VertxCommandLauncher.html#register-java.lang.Class-">register</a></code>
and <code><a href="../../apidocs/io/vertx/core/impl/launcher/VertxCommandLauncher.html#unregister-java.lang.String-">unregister</a></code></p>
</li>
</ul>
</div>
</div>
<div class="sect2">
<h3 id="_launcher_and_exit_code">Launcher and exit code</h3>
<div class="paragraph">
<p>When you use the <code><a href="../../apidocs/io/vertx/core/Launcher.html">Launcher</a></code> class as main class, it uses the following exit code:</p>
</div>
<div class="ulist">
<ul>
<li>
<p><code>0</code> if the process ends smoothly, or if an uncaught error is thrown</p>
</li>
<li>
<p><code>1</code> for general purpose error</p>
</li>
<li>
<p><code>11</code> if Vert.x cannot be initialized</p>
</li>
<li>
<p><code>12</code> if a spawn process cannot be started, found or stopped. This error code is used by the <code>start</code> and
<code>stop</code> command</p>
</li>
<li>
<p><code>14</code> if the system configuration is not meeting the system requirement (shc as java not found)</p>
</li>
<li>
<p><code>15</code> if the main verticle cannot be deployed</p>
</li>
</ul>
</div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_configuring_vert_x_cache">Configuring Vert.x cache</h2>
<div class="sectionbody">
<div class="paragraph">
<p>When Vert.x needs to read a file from the classpath (embedded in a fat jar, in a jar form the classpath or a file
that is on the classpath), it copies it to a cache directory. The reason behind this is simple: reading a file
from a jar or from an input stream is blocking. So to avoid to pay the price every time, Vert.x copies the file to
its cache directory and reads it from there every subsequent read. This behavior can be configured.</p>
</div>
<div class="paragraph">
<p>First, by default, Vert.x uses <code>$CWD/.vertx</code> as cache directory. It creates a unique directory inside this one to
avoid conflicts. This location can be configured by using the <code>vertx.cacheDirBase</code> system property. For instance
if the current working directory is not writable (such as in an immutable container context), launch your
application with:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="CodeRay highlight"><code>vertx run my.Verticle -Dvertx.cacheDirBase=/tmp/vertx-cache
# or
java -jar my-fat.jar vertx.cacheDirBase=/tmp/vertx-cache</code></pre>
</div>
</div>
<div class="admonitionblock important">
<table>
<tr>
<td class="icon">
<div class="title">Important</div>
</td>
<td class="content">
the directory must be <strong>writable</strong>.
</td>
</tr>
</table>
</div>
<div class="paragraph">
<p>When you are editing resources such as HTML, CSS or JavaScript, this cache mechanism can be annoying as it serves
only the first version of the file (and so you won&#8217;t see your edits if you reload your page). To avoid this
behavior, launch your application with <code>-Dvertx.disableFileCaching=true</code>. With this setting, Vert.x still uses
the cache, but always refresh the version stored in the cache with the original source. So if you edit a file
served from the classpath and refresh your browser, Vert.x reads it from the classpath, copies it to the cache
directory and serves it from there. Do not use this setting in production, it can kill your performances.</p>
</div>
<div class="paragraph">
<p>Finally, you can disable completely the cache by using <code>-Dvertx.disableFileCPResolving=true</code>. This setting is not
without consequences. Vert.x would be unable to read any files from the classpath (only from the file system). Be
very careful when using this settings.</p>
</div>
</div>
</div>

        

        
          <div id="footer">
            <div id="footer-text">
              
                Last updated 2020-05-15 21:32:52 CEST
              
              
            </div>
          </div>
        
      </div>
    </div>
  </div>
</div>

<footer>
  <div class="container">
    <div class="row">
      <div class="col-xs-4 col-sm-4 col-md-2 col-lg-2">
        <h2>Eclipse Vert.x</h2>
        <ul class="list-unstyled">
          <li><a href="https://vertx.io/">Home</a></li>
          <li><a href="https://vertx.io/download/">Download</a></li>
          <li><a href="https://vertx.io/docs/">Documentation</a></li>
          <li><a href="https://github.com/vert-x3/wiki/wiki">Wiki</a></li>
          <li><a href="https://vertx.io/blog/">Blog</a></li>
          <li><a href="https://vertx.io/vertx2/" class="vertx-2-link">Vert.x 2</a></li>
        </ul>
      </div>
      <div class="col-xs-4 col-sm-4 col-md-2 col-lg-2">
        <h2>Community</h2>
        <ul class="list-unstyled">
          <li><a href="https://vertx.io/community/">Help &amp; Contributors</a></li>
          <li><a href="https://vertx.io/materials/">Learning materials</a></li>
          <li><a href="https://groups.google.com/forum/?fromgroups#!forum/vertx">User Group</a></li>
          <li><a href="https://groups.google.com/forum/?fromgroups#!forum/vertx-dev">Developer Group</a></li>
        </ul>
      </div>
      <div class="col-xs-4 col-sm-4 col-md-2 col-lg-2">
        <h2>Eclipse</h2>
        <ul class="list-unstyled">
          <li><a href="https://www.eclipse.org/">Eclipse Foundation</a></li>
          <li><a href="https://eclipse.org/legal/privacy.php">Privacy Policy</a></li>
          <li><a href="https://eclipse.org/legal/termsofuse.php">Terms of Use</a></li>
          <li><a href="https://eclipse.org/legal/copyright.php">Copyright Agent</a></li>
          <li><a href="https://www.eclipse.org/legal">Legal Resources</a></li>
        </ul>
      </div>

      <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 copyright">
        <p>Eclipse Vert.x is open source and dual-licensed under the <a href="https://www.eclipse.org/legal/epl-v20.html">Eclipse Public License 2.0</a> and <a href="https://www.apache.org/licenses/LICENSE-2.0.html">Apache License 2.0</a>.</p>
        <p>This website is licensed under the <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC BY-SA 3.0 License</a>.<br>
        Design by <a href="https://www.michel-kraemer.com">Michel Kr&auml;mer</a>.</p>
        <div class="row">
          <div class="col-sm-12 col-md-5 col-md-offset-1 col-lg-offset-2">
            <a href="https://eclipse.org">
            <img class="logo eclipse-logo" src="https://vertx.io/assets/eclipse_logo_grey_small.png" width="204" height="48">
            </a>
          </div>
          <div class="col-sm-12 col-md-5 col-md-offset-1 col-lg-offset-0">
            <a href="https://cloudbees.com">
            <img class="logo cloudbees-logo" src="https://vertx.io/assets/Button-Built-on-CB-1-grey.png" width="180" height="48">
           </a>
          </div>
          <div class="col-sm-12 col-md-5 col-md-offset-7 jprofiler">
            <a href="http://www.ej-technologies.com/products/jprofiler/overview.html"
            style="text-decoration:none">
            <img class="logo jprofiler-logo" src="https://vertx.io/assets/jprofiler-logo.png" width="48" height="48"><span class="jprofiler-logo">&nbsp; JPROFILER</span>
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
</footer>

<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="https://vertx.io/javascripts/bootstrap.min.js"></script>
<script src="https://vertx.io/javascripts/highlight.pack.js"></script>
<script>hljs.initHighlightingOnLoad();</script>



<script src="https://vertx.io/javascripts/sidebar.js"></script>


<link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/cookieconsent2/3.0.3/cookieconsent.min.css" />
<script src="//cdnjs.cloudflare.com/ajax/libs/cookieconsent2/3.0.3/cookieconsent.min.js"></script>
<script>
window.addEventListener("load", function(){
window.cookieconsent.initialise({
  "palette": {
    "popup": {
      "background": "#64386b",
      "text": "#ffcdfd"
    },
    "button": {
      "background": "transparent",
      "text": "#f8a8ff",
      "border": "#f8a8ff"
    }
  },
  "content": {
    "message": "This website uses anonymous cookies to ensure we provide you the best experience. ",
    "link": "Opt out!",
    "href": "https://tools.google.com/dlpage/gaoptout/"
  }
})});
</script>
</body>
</html>

