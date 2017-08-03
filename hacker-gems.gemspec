# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hacker-gems/version'

Gem::Specification.new do |spec|
  spec.name          = "hacker-gems"
  spec.version       = HackerGems::VERSION
  spec.authors       = ["KING SABRI | @KINGSABRI"]
  spec.email         = ["king.sabri@gmail.com"]

  spec.summary       = %q{Hacker-gems installs most needed gems for hackers.}
  spec.description   = %q{Hacker-gems installs most needed gems for hackers.}
  spec.homepage      = "https://github.com/KINGSABRI/hacker-gems"
  spec.licenses      = ['MIT']
  
  
  # 
  # Basic gems
  # 
  
  # Pry - An IRB alternative and runtime developer console.
  spec.add_dependency 'pry'
  spec.add_dependency 'pry-doc'
  spec.add_dependency 'pry-byebug'
  
  #
  # System gems 
  #
  
  # colorize - Extends String class or add a ColorizedString with methods to set text color, background.
  spec.add_dependency 'colorize'
  # virustotal - A script for automating virustotal.com queries
  spec.add_dependency 'virustotal'
  # uirusu - A tool and REST library for interacting with Virustotal.org
  spec.add_dependency 'uirusu'
  # tty-prompt - A beautiful and powerful interactive command line prompt.
  spec.add_dependency 'tty-prompt'
  # clipboard - Lets you access the clipboard on Linux, MacOS, Windows and Cygwin.
  spec.add_dependency 'clipboard'
  # commander - The complete solution for Ruby command-line executables.
  spec.add_dependency 'commander'
  # Highline - handle user input and output via a “Q&A” style API, including type conversions and validation.
  spec.add_dependency 'highline'
  
  #
  # Network gems
  #
  
  # net-ssh - A pure-Ruby implementation of the SSH2 client protocol.
  spec.add_dependency 'net-ssh'
  # net-scp - A pure Ruby implementation of the SCP client protocol
  spec.add_dependency 'net-scp'
  # ruby-nmap - A Ruby interface to Nmap, the exploration tool and security / port scanner.
  spec.add_dependency 'ruby-nmap'
  # net-ping - A ping interface. Includes TCP, HTTP, LDAP, ICMP, UDP, WMI (for Windows).
  spec.add_dependency 'net-ping'
  # ftpd - A pure Ruby FTP server library. It supports implicit and explicit TLS, IPV6, passive and active mode.
  spec.add_dependency 'ftpd'
  # snmp - A Ruby implementation of SNMP (the Simple Network Management Protocol).
  spec.add_dependency 'snmp'
  # packetfu - A mid-level packet manipulation library for Ruby.
  spec.add_dependency 'packetfu'
  # geoip - searches a GeoIP database host or IP address, returns the country, city, ISP and location.
  spec.add_dependency 'geoip'
  # ronin-scanners - A library for Ronin that provides Ruby interfaces to various third-party security scanners.
  spec.add_dependency 'ronin-scanners'
  # RubyDNS - provides a simple Ruby DSL for DNS servers.
  spec.add_dependency 'rubydns'

  #
  # Web gems
  #
  
  # net-http-digest_auth - An implementation of RFC 2617 - Digest Access Authentication.
  spec.add_dependency 'net-http-digest_auth'
  # ruby-ntlm - NTLM implementation for Ruby
  spec.add_dependency 'ruby-ntlm'
  # Rails - the most known web framework in ruby
  spec.add_dependency 'rails'
  # tiny_tds - TinyTDS - A modern, simple and fast FreeTDS library for Ruby using DB-Library.
  spec.add_dependency 'tiny_tds'
  # activerecord-sqlserver-adapter
  spec.add_dependency 'activerecord-sqlserver-adapter'
  # activerecord-oracle_enhanced-adapter
  spec.add_dependency 'activerecord-oracle_enhanced-adapter'
  # buby - a mashup of JRuby with the popular commercial web security testing tool Burp Suite from PortSwigger.
  # spec.add_dependency 'buby'
  # wasabi - A simple WSDL parser.
  spec.add_dependency 'wasabi'
  # savon - Heavy metal SOAP client.
  spec.add_dependency 'savon'
  # httpi - Common interface for Ruby's HTTP libraries.
  spec.add_dependency 'httpi'
  # httpclient - gives something like the functionality of libwww-perl (LWP) in Ruby
  spec.add_dependency 'httpclient'
  # nokogiri - An HTML, XML, SAX, and Reader parser.
  spec.add_dependency 'nokogiri'
  # twitter - A Ruby interface to the Twitter API.
  spec.add_dependency 'twitter'
  # selenium-webdriver - A tool for writing automated tests of websites. It aims to mimic the behaviour of a real user
  spec.add_dependency 'selenium-webdriver'
  # watir-webdriver - WebDriver-backed Watir.
  spec.add_dependency 'watir-webdriver'
  # coffee-script - Ruby CoffeeScript is a bridge to the JS CoffeeScript compiler.
  spec.add_dependency 'coffee-script'
  # opal - Ruby runtime and core library for JavaScript.
  spec.add_dependency 'opal'
  # mechanize - a ruby library that makes automated web interaction easy.
  spec.add_dependency 'mechanize'
  # HTTP.rb - Fast, Elegant HTTP client for ruby
  spec.add_dependency 'http'
  # RestClient - A class and executable for interacting with RESTful web services.
  spec.add_dependency 'rest-client'
  # httparty - Makes http fun! Also, makes consuming restful web services dead easy.
  spec.add_dependency 'httparty'
  # websocket - Universal Ruby library to handle WebSocket protocol.
  spec.add_dependency 'websocket'
  # Ruby web spidering library that can spider a site, multiple domains, certain links or infinitely.
  spec.add_dependency 'spidr'
  
  #
  # Exploitation gems 
  #
  
  # metasm - A cross-architecture assembler, disassembler, linker, and debugger.
  spec.add_dependency 'metasm'
  
  #
  # Forensic gems 
  #

  # ruby_apk - analyzing android apk library for ruby
  spec.add_dependency 'ruby_apk'
  
  #
  # Rubyfu book - Offline version of rubyfu book
  #
  spec.add_dependency 'rubyfu'
  
  # 
  #spec.add_dependency ''
  
  
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  
  message = "Thanks for installing 'hacker-gems' gem!\n" + 
            "Please visit " + "\e[0m\e[1m(" + "\e[0m\e[1mhttps://rubyfu.net" + "\e[0m\e[1m)\e[0m" + " for more hacking code!"
  spec.post_install_message = message
end
