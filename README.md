# Terraform Modules for Palo Alto Networks Prisma SASE

## Overview

A set of modules for using **Palo Alto Networks Prisma SASE** to provide control and protection
to your applications running in Amazon Web Services (AWS). These modules support the management and provisioning
of policy, objects, remote networks, services connections and more.


For copyright and license see the LICENSE file.

## Structure

This repository has the following directory structure:

* `modules` - this directory contains several standalone, reusable, production-grade Terraform modules. Each module is individually documented.
* `examples` - this directory shows examples of different ways to combine the modules contained in the
  `modules` directory.

## Compatibility

The compatibility with Terraform is defined individually per each module. In general, expect the earliest compatible
Terraform version to be 1.3.8 across most of the modules.

## Roadmap

We are maintaining a [public roadmap](https://github.com/orgs/PaloAltoNetworks/projects/33/views/1) to help users understand when we will release new features, bug fixes and enhancements.

## Versioning

These modules follow the principles of [Semantic Versioning](http://semver.org/). You can find each new release,
along with the changelog, on the GitHub [Releases](https://github.com/PaloAltoNetworks/terraform-sase-modules/releases) page.

## Getting Help

[Open an issue](https://github.com/PaloAltoNetworks/terraform-sase-modules/issues) on Github.