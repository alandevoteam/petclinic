    Old content
    
    # - name: Extract version from POM file
    #   id: extract_version
    #   run: |
    #     version=$(grep -oP '(?<=<version>)[^<]+' pom.xml)
    #     version=$(echo $version | grep -oP '^\d+\.\d+\.\d+')
    #     echo "::set-output name=version::$version"

    # ${{ steps.extract_version.outputs.version }}

        # - name: Update release version in ansible inventory
    #   run: |
    #     echo "[testing-vm]" > ~/actions-runner/_work/github-petclinic/github-petclinic/src/test/ansible/inventory.ini
    #     echo "testpetclinic.westeurope.cloudapp.azure.com ansible_user=adminuser ansible_ssh_pass=P@assword1234. VERSION=${{ steps.extract_version.outputs.version }}" >> ~/actions-runner/_work/github-petclinic/github-petclinic/src/test/ansible/inventory.ini
    #     echo "" >> ~/actions-runner/_work/github-petclinic/github-petclinic/src/test/ansible/inventory.ini
 
    # - name: Update Selenium script with version number
    #   run: sed -i "s|http://xptpetclinic.westeurope.cloudapp.azure.com:8080/petclinic-|http://prodpetclinic.westeurope.cloudapp.azure.com/petclinic-${{ steps.extract_version.outputs.version }}/|g" ~/actions-runner/_work/github-petclinic/github-petclinic/src/test/seleniumscript.py
   
    # - name: Update JMeter script with version
    #   run: sed -i "s|<stringProp name=\"HTTPSampler.path\">/petclinic-/</stringProp>|<stringProp name=\"HTTPSampler.path\">/petclinic-${{ steps.extract_version.outputs.version }}/</stringProp>|" ~/actions-runner/_work/github-petclinic/github-petclinic/src/test/petclinic_loadtest_plan.jmx
      
    # - name: environment configuration completed
    #   run: sleep 10

    # - name: Start Jmeter loadtest, fall back if test fails.
    #   run: /opt/jmeter/bin/jmeter -n -t ~/actions-runner/_work/devopspetclinic/devopspetclinic/src/test/petclinic_loadtest_plan.jmx -l ~/actions-runner/_work/devopspetclinic/devopspetclinic/devops/tests/file.jtl

    # - name: Start Selenium script, fall back if test fails.
    #   run: python3 ~/actions-runner/_work/devopspetclinic/devopspetclinic/devops/tests/seleniumscript.py
  