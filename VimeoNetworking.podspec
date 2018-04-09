Pod::Spec.new do |s|

  s.name         = "VimeoNetworking"
  s.version      = "3.0.1"
  s.swift_version = "4.1"
  s.summary      = "A library for interacting with the Vimeo API."
  s.description  = "An iOS/tvOS library for interacting with the Vimeo API."
  s.homepage     = "https://github.com/vimeo/VimeoNetworking"
  s.social_media_url   = "http://twitter.com/vimeo"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.authors      = { "Gavin King" => "gavin@vimeo.com",
                     "Nicole Lehrer" => "nicole@vimeo.com",
                     "Mike Westendorf" => "mikew@vimeo.com",
                     "Jason Hawkins" => "jasonh@vimeo.com",
                     "Jennifer Lim" => "jennifer@vimeo.com",
                     "Van Nguyen" => "van@vimeo.com" }

  s.ios.deployment_target = "8.0"
  s.tvos.deployment_target = "9.0"

  s.requires_arc = true
  s.source = { :git => "https://github.com/vimeo/VimeoNetworking.git", :tag => s.version.to_s }
  s.source_files  = "VimeoNetworking/Sources/**/*.{h,m,swift}"
  s.resources = "VimeoNetworking/Resources/**/*.*"
  s.dependency "AFNetworking", "3.1.0"

  s.test_spec "Tests" do |test_spec|
    test_spec.source_files = "VimeoNetworking/Tests/*.{swift}"
    test_spec.dependency "OHHTTPStubs/Swift", "6.0.0"
    test_spec.resource_bundles = { "Fixtures" => ["VimeoNetworking/Tests/Response Data/*.{json}"] }
  end
end
