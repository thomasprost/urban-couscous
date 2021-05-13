### Magento2 commands and reminders

#### Deploying static assets with multiple languages

```
php -dmemory_limit=6G bin/magento setup:static-content:deploy en_US ja_JP
```

#### Logging errors

```php
$writer = new \Zend\Log\Writer\Stream(BP . '/var/log/debug.log');
$logger = new \Zend\Log\Logger();
$logger->addWriter($writer);
$logger->info(print_r($variable);
```