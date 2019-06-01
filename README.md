# Ruby enumerable method implementations

The solo project to test my understanding of the Enumerable methods in Ruby.

It covers enumerable methods "each, each_with_index, select, all?, any?, none? count, map, inject".

The project is part of a series of projects to be completed by students of [Microverse](https://www.microverse.org/ "The Global School for Remote Software Developers!").

## Technologies

- Ruby

## Test with 'irb'

> Clone the repository to your local machine

```sh
$ git clone https://github.com/shjang7/enumerable-method.git
```

> Open your 'irb'

```sh
$ irb
```

> Open the file from your IDE

```sh
PATH : ./enumerable-method/enumerable.rb
```

> Copy each method to 'irb' and check working

```sh
> def my_each
    return self.to_enum(:my_each) unless block_given?
    for i in self
      yield(i)
    end
  end
```

> If the method included related method(i.e. my_each), also you would test the related method previously


## Contributors

This is a solo project by me: [Suhyeon Jang](https://github.com/shjang7)

## Contributing

1. Fork it (https://github.com/shjang7/enumerable-method/fork)
2. Create your feature branch (git checkout -b feature/[choose-a-name])
3. Commit your changes (git commit -am 'what this commit will fix/add')
4. Push to the branch (git push origin feature/[chosen-name])
5. Create a new Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](./LICENSE.md) file for details
