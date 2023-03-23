# NOTICE: This repo is under heavy active development and is not yet ready for production use. Please use at your own risk.

# Terraform Modules for Palo Alto Networks Prisma SASE

## Overview

A set of modules for using **Palo Alto Networks Prisma SASE Terraform Provider** to provide control and protection
to your applications and users on Prisma SASE. These modules support the management and provisioning
of policy, objects, remote networks, services connections and more.

Examples provided try to follow along the Prisma SASE Architecture Guides.

* [SASE for Users Architecture Guide](https://www.paloaltonetworks.com/resources/guides/prisma-access-for-users-architecture-guide)
* [SASE for Securing Internet Design Guide ](https://www.paloaltonetworks.com/resources/guides/sase-securing-internet-design-guide)
* [SASE for Securing Private Apps Design Guide](https://www.paloaltonetworks.com/resources/guides/sase-securing-private-apps-design-guide)

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
along with the changelog, on the GitHub [Releases](https://github.com/PaloAltoNetworks/terraform-prisma-sase-modules/releases) page.

## Getting Help

[Open an issue](https://github.com/PaloAltoNetworks/terraform-sase-modules/issues) on Github.