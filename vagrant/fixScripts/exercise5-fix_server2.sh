#!/bin/bash
#Disable Strict host key checking (as requested):
sudo sed -i "s/#   StrictHostKeyChecking ask/   StrictHostKeyChecking no/g" /etc/ssh/ssh_config
#Put ssh private key so we can connect to remote host
echo "-----BEGIN RSA PRIVATE KEY-----
MIIEogIBAAKCAQEA1SV+6oBsGTVQ8Szp6UuveevlooxTTWQ9yDJJWgcqjAfv7Phg
QuyscgXjWDC9TqySMVTRxVXZq3RK+Jwdo1mHoBm3jAP9KPRX76RXOs476B6ZjQIb
8OnvLaSyjupbgfTjQ8jsPqR1pKlNGm1TU7Paam+4IDEHHt0AAPnuRcBSvW/cD6Tu
Xxx9RZgYfqEs4cEvsgY+RniXRkte4xyrv9Hbh4hgHbH76FP1+0sAaq5Pa0k7nfff
eTNenHmZGRSiHr+7tIDJL88FopVsyqBtlARj1K+gzSm1Y02/Yk/NHWraRDnAaOK9
iQ+kCUSH1CZP/73UmUQ6M5xxHdFopH7S9b45bwIDAQABAoIBAH6UbfLFoWy3BQK1
MZSipes59H276Byl0yr48ibM6q+OZyXLux8DfsWYSZMuHr6CLa+uN4WBnmr7/Sn3
TIKdwLWLkD1OgSG5Oh/O8R6zK1CGG5pqDj3cL3ZjwMau1vkufWjcAbCR6muHP4ra
MgobXTKodihn9VqW1FHAG4jA1mI43jk6wM01upOOLdtzmZh+JEgNyL0Xx+54WKaW
S7oKk3zKsMXJ9uUqEYidVKBmJhas35TJdkxzEXoqke4HKhenlOGnTTcKiKl7GQrn
9u5KwVjc+ISFu+SrNfkFHiOGL3VuyONJeuUqSWZMxVGlZvpX3J61Jbw2PRmUrdgK
/s8FYUECgYEA8/yoeYal7FnvuIS7dTiHGc73iXF3DaMVOAXy/9wQFgzhLQnsuKRF
n9/6VOSJpa5Li97+VQo/iUor9u/+JQZSINR86I2bIuEY9FPxYAsxAxRk7kNkpgKK
E9sRrsaQr25JiJvF6JbjVNOj2AMUBVetWxoQplf9RMFdAf1mkmp91fUCgYEA36Qb
mDT66KGClXsSW/gAfKrK0gSE5g0VKhSvQqVcH9VHLsJZJh6i5LD53SkJ8Q9tn1FA
7UTYzMMzZr9rDKcSb5zX8lM4dzmltWldNytBQKDw3VyUfQYayupBLRGgohpo1fcx
k4wbeu74VERYe85TyIrsnZVzwKXL3Egb1n/2j1MCgYAscKu7HuRf7W21fS+rxTUO
ZV0/ApS9viOiRasiIVIowgXNr04Xv4wS97ff+JR9wgZunppSoQA7oG/rlYED+2fA
JRPvQ8OrEbb64cNITCGMPw23PD0746CEx1UsMWyvF3Z7VGwy1jDoBXiFYuIlqvef
bVr1AXfXKyUmtKIXLyBmdQKBgESYy7YGGigc0jcThvAaw9t5b7i3liQSQzmjGpbw
ra899hWLm1ir8P8AocOKgPgl6VQC0k103qMABNYxRJ6e6HK/wyUbDajUT9WzOdpg
NCWkt/zOFuW6Z6Fx9Qfj7keKnjlzFwvQ3+T3Q8hlJlbjVKOgqS801kpzEHLC03cZ
zQDtAoGABmLqeWHCnFGBjV81/BLwypU4SkMEMI0MhkFt7yU9nLX6L74AUOakYBro
3lN8OLK4MtreDsyCGgOj/rAkuzObP521oc7l0Yo9yt45F1bVlUo6m5q9gGYC1P1f
AdXTd6vxxiTJynoJTaSQtWILLQufFQDaWpgs41cZz3T6Riro6RE=
-----END RSA PRIVATE KEY-----"> /home/vagrant/.ssh/id_rsa

#Put ssh public key in the right place
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDVJX7qgGwZNVDxLOnpS6956+WijFNNZD3IMklaByqMB+/s+GBC7KxyBeNYML1OrJIxVNHFVdmrdEr4nB2jWYegGbeMA/0o9FfvpFc6zjvoHpmNAhvw6e8tpLKO6luB9ONDyOw+pHWkqU0abVNTs9pqb7ggMQce3QAA+e5FwFK9b9wPpO5fHH1FmBh+oSzhwS+yBj5GeJdGS17jHKu/0duHiGAdsfvoU/X7SwBqrk9rSTud9995M16ceZkZFKIev7u0gMkvzwWilWzKoG2UBGPUr6DNKbVjTb9iT80datpEOcBo4r2JD6QJRIfUJk//vdSZRDoznHEd0WikftL1vjlv vagrant@server2" > /home/vagrant/.ssh/id_rsa.pub
#Allow vagrant@server1 to connect to me
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC7hHk3VrqT9w+C4M5tDQ5QluClJQvy+q/VGxCDDK6RZwmLrkou3EZ60I+skX0UHpFFt29oSq8B/R2jV9KNW1da++JoNrFD9ESisgavhCjeKqbiIiJBxV5f4WjreIgUB6G592EkmekNO+RJtO3eN5t0HnTKx3I93R0MxJDwzpswy1BLpT4Azs2GE8LqsqlEMLYr1P5wNfG6wOQ/kij28qPgbcdGVco+mbDwJxXGYHTzPqbATBlwvzdQMrIV6ffTy9f7PSlUHokYtlEUyzbPCCpzwa+7FOTM3p6rIOlFyUxvXUvnzEYRb/m3FwtbI2VEuJg/o6fPwo/7tAGGFkoDY9Gx vagrant@server1" >> /home/vagrant/.ssh/authorized_keys
