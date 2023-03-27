locals {
  spns = {
    for spn in data.sase_bandwidth_allocations_list.this.data :
    spn.name => {
      spns      = spn.spn_name_list
      allocated = spn.allocated_bandwidth
    }
  }
}