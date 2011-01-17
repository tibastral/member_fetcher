# -*- encoding : utf-8 -*-
$:.unshift "#{File.dirname(__FILE__)}/lib"
require 'member_fetcher'
ActionController::Base.class_eval { include MemberFetcher }
