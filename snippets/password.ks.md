# Adding a password to kickstart

Setting a password for your users if very helpful during kickstart installation.

## Editing kickstart file

Most times this task is as simple as:
```
# root password plaintext
rootpw "password here"

# root password hashed
rootpw --iscrypted HASH

# Adding a user with password hashed
user --groups=wheel --name=admin --password=HASH --iscrypted --gecos="wtd-admin"

```

As you can see you have to generate some hashes. These hashes depend on the used password algorithm, defined via:

```
auth --enableshadow --passalgo=sha512
```

## Generating the hash

To generate such a hash, you can find some examples below in python. You will be prompted for the password. The salt should differ each time. It can be any random string.

### MD5
```
echo 'import crypt,getpass; print crypt.crypt(getpass.getpass(), "$1$8_CHARACTER_SALT")' | python -
```

### SHA256
```
echo 'import crypt,getpass; print crypt.crypt(getpass.getpass(), "$5$16_CHARACTER_SALT")' | python -
```

### SHA512
```
echo 'import crypt,getpass; print crypt.crypt(getpass.getpass(), "$6$16_CHARACTER_SALT_HERE")' | python -
```
