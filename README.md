# Network-Hardening
---
network-hardening for linux

---

***Network hardening is the systematic process of securing network infrastructure by reducing attack surface, enforcing least privilege, and implementing layered security controls to prevent unauthorized access and lateral movement.***

___

Steps for Hardening :-

1. Install WireGuard

2. Download Proton VPN WireGuard configuration

3. Bring up the VPN tunnel

4. Enable kill switch (firewall default-deny)

5. Block direct internet interface

6. Secure DNS (prevent DNS leaks)

7. Enable VPN on system startup

8. Disable unnecessary services and ports

9. Protect WireGuard keys and configs

10. Monitor and test VPN enforcement

___After these steps:
* All traffic is encrypted
* No IP leaks
* No DNS leaks
* No direct internet access
* Default-deny firewall
* VPN enforced at system level___

___

