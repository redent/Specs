Pod::Spec.new do |s|

  s.name         = 'LibComponentLogging-NSLog'
  s.version      = '1.0.3'
  s.source       = { :git => 'https://github.com/aharren/LibComponentLogging-NSLog.git',
                     :tag => '1.0.3' }

  s.homepage     = 'http://0xc0.de/LibComponentLogging'
  s.author       = { 'Arne Harren' => 'ah@0xc0.de' }
  s.license      = 'MIT'

  s.summary      = 'LibComponentLogging logging back-end which redirects '     \
                   'logging to NSLog.'
  s.description  = 'LibComponentLogging-NSLog is a very simple logging '       \
                   'back-end for LibComponentLogging which redirects log '     \
                   'messages to NSLog, but adds information about the log '    \
                   'level, the log component, and the log statement\'s '       \
                   'location (file name and line number).'

  s.source_files = 'LCLNSLog*.{h,m}'

  s.dependency 'LibComponentLogging-Core', '>= 1.1.5'

  s.requires_arc = false

  s.prepare_command = 'echo "This Pod relies on the removed \`pre_install\` or \`post_install\` hooks and therefore will no longer continue to work. Please try updating to the latest version of this Pod or updating the Pod specification. See http://blog.cocoapods.org/CocoaPods-Trunk/ for more details." && exit 1'
end
