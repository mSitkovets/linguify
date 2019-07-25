I18n.translations || (I18n.translations = {});
I18n.translations["en"] = I18n.extend((I18n.translations["en"] || {}), {"activerecord":{"errors":{"messages":{"record_invalid":"Validation failed: %{errors}","restrict_dependent_destroy":{"has_many":"Cannot delete record because dependent %{record} exist","has_one":"Cannot delete record because a dependent %{record} exists"}}}},"date":{"abbr_day_names":["Sun","Mon","Tue","Wed","Thu","Fri","Sat"],"abbr_month_names":[null,"Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"],"day_names":["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"],"formats":{"default":"%Y-%m-%d","long":"%B %d, %Y","short":"%b %d"},"month_names":[null,"January","February","March","April","May","June","July","August","September","October","November","December"],"order":["year","month","day"]},"datetime":{"distance_in_words":{"about_x_hours":{"one":"about 1 hour","other":"about %{count} hours"},"about_x_months":{"one":"about 1 month","other":"about %{count} months"},"about_x_years":{"one":"about 1 year","other":"about %{count} years"},"almost_x_years":{"one":"almost 1 year","other":"almost %{count} years"},"half_a_minute":"half a minute","less_than_x_minutes":{"one":"less than a minute","other":"less than %{count} minutes"},"less_than_x_seconds":{"one":"less than 1 second","other":"less than %{count} seconds"},"over_x_years":{"one":"over 1 year","other":"over %{count} years"},"x_days":{"one":"1 day","other":"%{count} days"},"x_minutes":{"one":"1 minute","other":"%{count} minutes"},"x_months":{"one":"1 month","other":"%{count} months"},"x_seconds":{"one":"1 second","other":"%{count} seconds"}},"prompts":{"day":"Day","hour":"Hour","minute":"Minute","month":"Month","second":"Seconds","year":"Year"}},"errors":{"connection_refused":"Oops! Failed to connect to the Web Console middleware.\nPlease make sure a rails development server is running.\n","format":"%{attribute} %{message}","messages":{"accepted":"must be accepted","blank":"can't be blank","confirmation":"doesn't match %{attribute}","empty":"can't be empty","equal_to":"must be equal to %{count}","even":"must be even","exclusion":"is reserved","greater_than":"must be greater than %{count}","greater_than_or_equal_to":"must be greater than or equal to %{count}","inclusion":"is not included in the list","invalid":"is invalid","less_than":"must be less than %{count}","less_than_or_equal_to":"must be less than or equal to %{count}","model_invalid":"Validation failed: %{errors}","not_a_number":"is not a number","not_an_integer":"must be an integer","odd":"must be odd","other_than":"must be other than %{count}","present":"must be blank","required":"must exist","taken":"has already been taken","too_long":{"one":"is too long (maximum is 1 character)","other":"is too long (maximum is %{count} characters)"},"too_short":{"one":"is too short (minimum is 1 character)","other":"is too short (minimum is %{count} characters)"},"wrong_length":{"one":"is the wrong length (should be 1 character)","other":"is the wrong length (should be %{count} characters)"}},"unacceptable_request":"A supported version is expected in the Accept header.\n","unavailable_session":"Session %{id} is no longer available in memory.\n\nIf you happen to run on a multi-process server (like Unicorn or Puma) the process\nthis request hit doesn't store %{id} in memory. Consider turning the number of\nprocesses/workers to one (1) or using a different server in development.\n"},"explore":{"index":{"add_html":"Add to Play Later","play_html":"Play Now","title_html":"Find A Quiz!"}},"helpers":{"select":{"prompt":"Please select"},"submit":{"create":"Create %{model}","submit":"Save %{model}","update":"Update %{model}"}},"layouts":{"application":{"home":"Home","title":"Hanji-Go"}},"line_items":{"line_item":{"remove":"Remove"}},"lists":{"list":{"empty":"Empty list","language":"Language","quiz":"Quiz","title":"Your Play Later List"}},"number":{"currency":{"format":{"delimiter":",","format":"%u%n","precision":2,"separator":".","significant":false,"strip_insignificant_zeros":false,"unit":"$"}},"format":{"delimiter":",","precision":3,"separator":".","significant":false,"strip_insignificant_zeros":false},"human":{"decimal_units":{"format":"%n %u","units":{"billion":"Billion","million":"Million","quadrillion":"Quadrillion","thousand":"Thousand","trillion":"Trillion","unit":""}},"format":{"delimiter":"","precision":3,"significant":true,"strip_insignificant_zeros":true},"storage_units":{"format":"%n %u","units":{"byte":{"one":"Byte","other":"Bytes"},"eb":"EB","gb":"GB","kb":"KB","mb":"MB","pb":"PB","tb":"TB"}}},"percentage":{"format":{"delimiter":"","format":"%n%"}},"precision":{"format":{"delimiter":""}}},"quizzes":{"form":{"add_question":"Add Question","add_question_type":{"answer":"Answer","option_a":"Option A","option_b":"Option B","option_c":"Option C","question":"Question"},"description":"Description","difficulty_level":"Difficulty Level","instruction_language":"Instruction Language","language_learning":"Language Learning","language_select":"Select a language","level_select":"Select a level","submit":"Create Quiz","title":"Title"},"new":{"legend":"Please Enter Information About Your Quiz"}},"success":"You have successfully created a quiz","support":{"array":{"last_word_connector":", and ","two_words_connector":" and ","words_connector":", "}},"time":{"am":"am","formats":{"default":"%a, %d %b %Y %H:%M:%S %z","long":"%B %d, %Y %H:%M","short":"%d %b %H:%M"},"pm":"pm"}});
I18n.translations["es"] = I18n.extend((I18n.translations["es"] || {}), {"activerecord":{"attributes":{"quiz":{"description":"Descripción","difficulty_level":"Nivel de dificultad","instruction_language":"Idioma de instrucción","language_learning":"Aprendizaje de idiomas","title":"Título"}},"errors":{"messages":{"blank":"no puede quedar en blanco","inclusion":"no est\u0026aacute; incluido en la lista"}},"models":{"quiz":"Examen"}},"errors":{"template":{"body":"Hay problemas con los siguientes campos:","header":{"one":"1 error ha impedido que este %{model} se guarde","other":"%{count} errores han impedido que este %{model} se guarde"}}},"explore":{"index":{"add_html":"Añadir a Jugar más Tarde","play_html":"Reproducir Ahora","title_html":"Encontrar una Prueba!"}},"layouts":{"application":{"home":"Inicio","title":"Hanji-Go"}},"line_items":{"line_item":{"remove":"Retirar"}},"lists":{"list":{"empty":"Lista Vacía","language":"Idioma","quiz":"Examen","title":"Tu Lista de Juegos más Tarde"}},"quizzes":{"form":{"add_question":"Añadir pregunta","add_question_type":{"answer":"Responder","option_a":"Opción A","option_b":"Opción B","option_c":"Opción C","question":"Pregunta"},"description":"Descripción","difficulty_level":"Nivel de dificultad","instruction_language":"Idioma de instrucción","language_learning":"Aprendizaje de idiomas","language_select":"Selecciona un idioma","level_select":"Seleccione un nivel","submit":"Crear cuestionario","title":"Título"},"new":{"legend":"Por favor ingrese información acerca de su prueba"}},"success":"Has creado correctamente un cuestionario"});
