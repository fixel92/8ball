if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

answer = [
  # Положительные
  'Бесспорно',
  'Предрешено',
  'Никаких сомнений',
  'Определённо да',
  'Можешь быть уверен в этом',

  # Нерешительно положительные
  'Мне кажется — «да»',
  'Вероятнее всего',
  'Хорошие перспективы',
  'Знаки говорят — «да»',
  'Да',

  # Нейтральные
  'Пока не ясно, попробуй снова',
  'Спроси позже',
  'Лучше не рассказывать',
  'Сейчас нельзя предсказать',
  'Сконцентрируйся и спроси опять',

  # Отрицательные
  'Даже не думай',
  'Мой ответ — «нет»',
  'По моим данным — «нет»',
  'Перспективы не очень хорошие',
  'Весьма сомнительно'
]
greetings = [
  'Привет, дорогой друг. Отвечаю на твой вопрос...',
  'Кто вопрошает, тот получит ответ:',
  'Здравствуй, смертный. Сегодня для тебя такой ответ:'
]
# greeting
puts greetings.sample
# empty string
puts
sleep(1.5)
# answer
puts answer.sample
