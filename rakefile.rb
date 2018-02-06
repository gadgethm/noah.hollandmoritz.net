GH_PAGES_DIR = "gadgethm.github.io"

desc "Build Jekyll site and copy files"
task :build do
  system "bundle exec jekyll build"
  system "mkdir ./../temp"
  system "cp -r ./_site/* ./../temp && git rm -r ./_site/ -f && git add --all"
  system "git checkout master && git rm -r ./* -f && cd ./../ && cp -r ./temp/* ./#{GH_PAGES_DIR}/ && rm -r ./temp/ && cd ./#{GH_PAGES_DIR} && git add --all"
end

desc "Build Jekyll site, then launch local test page in firefox"
task :test do
  system "bundle exec jekyll serve"
end

desc "Update Gems and plugins"
task :update do
  system "bundle install"
  system "bundle update"
end
