---
date: 2022-10-20T16:09:00+09:00
lastmod: 2024-07-19T15:23:00+09:00
title: "Migrating a Ghost blog to an EKS cluster: Part 1"
summary: "Part 1 of a log of migrating a ghost blog to an EKS cluster."
draft: false
params:
  commentsEnabled: true
---
{{< figure src="ihor-dvoretskyi-GCFuprAvC6A-unsplash.jpg#center" caption="Picture of a laptop featuring a helm. Photo by [Ihor Dvoretskyi](https://unsplash.com/@ihor_dvoretskyi)/[Unsplash](https://unsplash.com)" >}}

_Note: This is a restored post from my former blog. I now migrated once again to this Hugo blog. (Added 2024-07-19)_

Whoa. It's been a while since I stopped updating this blog.

For the record, I'm still a fan of monolithic server architecture on most of the situations that doesn't need over-complexity, extreme high availability, and, of course, high infrastructure cost. If you're going to host a simple blog with a self-hosted solutions like ghost (just like this blog), wordpress, or something other, I recommend going for a monolithic, robust, and simpler server architecture (or just some high availability with solutions available from clusterlabs) like I used to do.

But what's the fun if we don't embrace and enjoy the technology available out there for ourselves? Like British mountaineer George Mallory's famous quote, "Because it's there", I mean. So I decided to migrate my abandoned blog to a new k8s cluster. And this is how I did it.

_Note 1: I actually migrated this blog twice to a different k8s cluster each, once in a managed k8s cluster in DigitalOcean, and once in another managed k8s cluster in Amazon Web Services (ie their "Elastic Kubernetes Service"). Since the process was virtually the same except for EKS-specific steps, I omitted the first migration entirely._

_Note 2: This migration has been done before I joined AWS. Even though I now work for them, my profile does not cover EKS and this is by no means an official guidance for using Amazon EKS. (Added 2024-07-19)_

## Step 1: Backing up the application

Of course the first step is backing up the application on your current infrastructure. This is nowhere near over-emphasising how much we emphasise the importance of the step: Backup, backup, and backup.

_Note 3: Actually, ghost now supports exporting the whole content in JSON format. [Refer to here](https://ghost.org/docs/migration/ghost/) for details._

Again of course, issuing `backup` three times is not how you do the backup unless you actually have automated backups with that command; for the convenience of explanation, let's say the ghost installation is located on `/srv/ghost/` and you're using either mariadb or mysql with a database named `ghost` _(Ghost recommends mysql over mariadb because of its JSON data type related features, as far as I know, so we will be using mysql on the new setup anyway – Don't be sad, I prefer mariadb over mysql too -- of course below postgresql)_.

Backing up the application is quite simple. You just dump your ghost database with this command first.

```bash
$ sudo mysqldump ghost > ghost_$(date --iso-8601=date).sql
```

Recent mysql/mariadb versions can authenticate with unix user credentials, so `-p` flag wouldn't be needed usually. But if you set root password (and remember it), you're getting an authentication error, or if you want to use a non-root user for the dump, just add the `-u` and `-p` flag and input your database root/user password when prompted.

Next is backing up your application directory. In my experience, only `content/` subdirectory was needed if you are going to install fresh setup of ghost first (which is the more stable way when migrating to k8s). But for the reference, saving the `config.production.json` file might be a good idea too. Back those up with your favourite tool. I just tarballed it:

```bash
$ cd /srv/
$ tar -cJvf ghost.tar.xz ghost
```

And then scp it to your local machine or another server that wouldn't be destroyed. Now your backup is ready!

## Step 2: Turn up your kubernetes cluster

Now it's the time to turn up your kubernetes cluster, since we're trying to migrate the ghost blog to one. You can choose to self-host your kubernetes cluster on premise, or on your cloud server instances, or you can choose among managed cloud-based kubernetes cluster services – each choice has its own tool for turning up your k8s cluster. For instance, if you are going to turn up a self-managed k8s cluster (both on premise or on cloud), you will going to be probably using `kubeadm` that's official k8s tool for turning up a cluster, even though there are tools like `minikube`, `microk8s`, or `k3s`, since the other tools are usually for developer-oriented, while we're aiming for a production-ready or at least a poor-person's-production-ready cluster.

I cannot explain that much variety of tools in this blog at the moment at once. Instead, I'm going to summarise how I turned up my k8s cluster on Amazon Web Services' Elastic Kubernetes Service (Amazon EKS). Personally, I usually work on my laptop that runs Arch Linux that I customised, but you can easily find installation documentations for tools I used online.

First, we start from installing AWS CLI and `eksctl`, the official CLI tool from AWS team for managing EKS clusters. [eksctl.io](https://eksctl.io) has the needed instructions and guides I referred when I first tried using the EKS.

And let's assume you have configured AWS CLI and eksctl with your API credentials for convenience. You can find the official guide from AWS team [here](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html).

Now, you need to write a yaml (If you didn't know how to pronounce it, it rhymes with camel) manifest for the cluster. I'm going to skip the example since it can be very different by the configuration. You can refer to [eksctl example config on GitHub](https://github.com/eksctl-io/eksctl/tree/main/examples) for the examples.

Customise and save this to something like `clusterconfig.yaml` on an appropriate location, and issue this command to verify the config:

```bash
$ eksctl create cluster -f clusterconfig.yaml --dry-run
```

If it generates another yaml manifest with default values we missed filling in, our manifest is valid. If it returns an error, refer to the error message and AWS/eksctl documentation to fix it.

Now, issue the command, sit back, and relax and wait since it takes time.

```bash
$ eksctl create cluster -f clusterconfig.yaml
```

If it generates error message, follow the instructions from it and refer to AWS/eksctl documentation for troubleshooting. Usually if you're getting an error on retry, it's related to a cloudformation stack left behind (if and only if it does not resolve over time, you can manually delete the cloudformation stack).

And voila! Your EKS cluster should be now live. eksctl writes kubeconfig for you, so further setting isn't needed – try this to verify if your cluster is ready.

```bash
$ kubectl cluster-info  # shows API endpoint info about the cluster
$ kubectl get nodes  # shows worker node status
$ kubectl -n kube-system get all  # shows kubernetes system stuff
```

You're fine if you don't understand the outputs. Refer to the official guide to slowly get used to it.

Next time, we will set up a cloud native storage solution to set persistent volumes with multiple rw access (this step is not mandatory since ghost recommends one instance per site and achieving HA with other way than simultaneously running multiple active instances).

_Continued in Part 2._
