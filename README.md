# YoudaoFanyiAPI

A ruby wrapper for [youdao fanyi api][api].

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'youdao_fanyi_api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install youdao_fanyi_api

## Usage

First you need to configure the API

```ruby
YoudaoFanyiAPI.configure do |config|
  config.key     = YOUR_KEY
  config.keyfrom = YOUR_KEYFROM
end
```

Then, you can use `translate` method.

```ruby
puts YoudaoFanyiAPI.translate('hello world')['translation'] # 你好，世界
```

You could use a client

```ruby
client = YoudaoFanyiAPI::Client.new(key: YOUR_KEY, keyfrom: YOUR_KEYFROM)
puts client.t('ruby')['basic']['explains']
# n. 红宝石；红宝石色
# adj. 红宝石色的
# ...
```

You can also use `t` method, which is an alias of `translate`. The `translate`
method returns a JSON object, you can find more details from [here][api].


## Contributing

Feel free to file an issue or send a pr.







[api]: http://fanyi.youdao.com/openapi?path=data-mode
