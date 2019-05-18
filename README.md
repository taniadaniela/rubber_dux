# rubber_dux
rubber duck terminal app

RubberDuX is an small debugging personal helper made with [Elixir.](https://github.com/elixir-lang/elixir)
This project was conceived to improve skills with Elixir and learn something new.

It can help you with some ideas or points to investigate when having code problems.

## How to run?
In your terminal:
`mix escript.build` for compilation  
`./rubber_dux` for execution

## How to use?
Once you have executed the compilation and execution commands an interactive prompt will appear,
there you can type a question and the smarty duck will provide its wisdom:

![prompt](/screenshots/inter.jpg)

You can keep asking questions until you fix your problem.

You can hit Cmd + c (Ctrl + c) to quit the app.

## Contribute
You can help with keywords of problems and solutions associated to them, check lib/rubber_dux.ex file.
Any suggestion is well received!

## Next versions
Ideally this should use a better technique for providing more accurate answers to help solve problems. Maybe Machine Learning or Neural Networks.
