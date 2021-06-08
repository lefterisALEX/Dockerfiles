FROM amazon/aws-cli:2.2.4 
RUN yum install -y openssl tar xz-utils gzip git wget zip unzip
RUN curl -LO "https://dl.k8s.io/release/v1.19.10/bin/linux/amd64/kubectl" 
RUN mv kubectl /usr/local/bin/kubectl
RUN chmod +x /usr/local/bin/kubectl
RUN curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
RUN  chmod +x get_helm.sh
RUN ./get_helm.sh
RUN git clone https://github.com/tfutils/tfenv.git ~/.tfenv
RUN echo 'export PATH="$HOME/.tfenv/bin:$PATH"' >> ~/.bash_profile
RUN ln -s ~/.tfenv/bin/* /usr/local/bin
RUN wget https://github.com/gruntwork-io/terragrunt/releases/download/v0.29.10/terragrunt_linux_amd64
RUN chmod +x terragrunt_linux_amd64
RUN mv terragrunt_linux_amd64 /usr/local/bin/terragrunt
ENTRYPOINT ["/bin/bash", "-c"]
