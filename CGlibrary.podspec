Pod::Spec.new do |s|
          #1.
          s.name               = "CGlibrary"
          #2.
          s.version            = "1.1.0"
          #3.  
          s.summary         = "CGlibrary framework provides a view with scrollView "
          #4.
          s.homepage        = ""
          #5.
          s.license              = ""
          #6.
          s.author               = "Dinesh CG"
          #7.
          s.platform            = :ios, "10.0"
          #8.
          s.source              = { :git => "https://github.com/Dinesh2871995/CGlibrary.git", :tag => "1.1.0" }
          #9.
          s.source_files     = "CGlibrary", "CGlibrary/*.{h,m,swift}"
    end
