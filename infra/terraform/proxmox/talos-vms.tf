// Example Proxmox VM definitions for Talos
resource "proxmox_vm_qemu" "talos_control_plane" {
  name = "talos-cp-1"
  target_node = "pve"
  clone = "talos-template"
  cores = 2
  memory = 2048
  network {
    model = "virtio"
    bridge = "vmbr0"
  }
  ipconfig0 = "ip=192.168.5.10/20,gw=192.168.1.1"
}
