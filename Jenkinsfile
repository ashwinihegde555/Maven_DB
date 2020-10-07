@Library('shared-library@main')
def script = "shared-library/vars/deploy_dev.groovy"
def method(script){
def call
call = load 'script'
echo "loaded"
call.executeBuild();
  return call;
} 

