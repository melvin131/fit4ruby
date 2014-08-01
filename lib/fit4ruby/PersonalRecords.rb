#!/usr/bin/env ruby -w
# encoding: UTF-8
#
# = PersonalRecords.rb -- Fit4Ruby - FIT file processing library for Ruby
#
# Copyright (c) 2014 by Chris Schlaeger <cs@taskjuggler.org>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of version 2 of the GNU General Public License as
# published by the Free Software Foundation.
#

require 'fit4ruby/FitDataRecord'

module Fit4Ruby

  class PersonalRecords < FitDataRecord

    def initialize
      super('personal_records')
    end

  end

end

