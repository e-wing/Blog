Database is Postgres



```
If non-OSX
```
sudo -u postgres psql -c "CREATE USER blog WITH CREATEDB PASSWORD 'blog';"
```
If OSX

```
createuser -P -S -R -d blog 
(add password blog)

```
