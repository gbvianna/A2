ou should consider upgrading via the '/usr/local/bin/python -m pip install --upgrade pip' command.

Traceback (most recent call last):

  File "/usr/local/bin/streamlit", line 5, in <module>

    from streamlit.cli import main

ModuleNotFoundError: No module named 'streamlit.cli'

Exception in thread Thread-1:

Traceback (most recent call last):

  File "/home/appuser/.local/lib/python3.7/site-packages/streamlit/shared/config.py", line 69, in get_option

    'proxy.staticRoot': 'streamlit/proxy_static/',

  File "/home/appuser/.local/lib/python3.7/site-packages/streamlit/shared/config.py", line 48, in _load_config

    with open(config_file_name) as config_file:

FileNotFoundError: [Errno 2] No such file or directory: '/usr/local/streamlit/config/config.yaml'


During handling of the above exception, another exception occurred:


Traceback (most recent call last):

  File "/usr/local/lib/python3.7/threading.py", line 926, in _bootstrap_inner

    self.run()

  File "/usr/local/lib/python3.7/threading.py", line 870, in run

    self._target(*self._args, **self._kwargs)

  File "/home/appuser/.local/lib/python3.7/site-packages/streamlit/local/connection.py", line 148, in connection_thread

    self._loop.run_until_complete(self._attempt_connection())

  File "/usr/local/lib/python3.7/asyncio/base_events.py", line 587, in run_until_complete

    return future.result()

  File "/home/appuser/.local/lib/python3.7/site-packages/streamlit/local/connection.py", line 38, in inner

    return await method(self, *args, **kwargs)

  File "/home/appuser/.local/lib/python3.7/site-packages/streamlit/local/connection.py", line 158, in _attempt_connection

    server = config.get_option('proxy.server')

  File "/home/appuser/.local/lib/python3.7/site-packages/streamlit/shared/config.py", line 77, in get_option

    'proxy.staticRoot': 'local/client/build/',

  File "/home/appuser/.local/lib/python3.7/site-packages/streamlit/shared/config.py", line 48, in _load_config

    with open(config_file_name) as config_file:

FileNotFoundError: [Errno 2] No such file or directory: '/home/appuser/.local/lib/config.yaml'


[manager] Error restarting streamlit: exit status 7: output: streamlit: ERROR (not running)
streamlit: ERROR (spawn error)

[manager] Error during processing dependencies! Please fix the error and push an update, or try restarting the app.

Traceback (most recent call last):

  File "/usr/local/bin/streamlit", line 5, in <module>

    from streamlit.cli import main

ModuleNotFoundError: No module named 'streamlit.cli'

Exception in thread Thread-1:

Traceback (most recent call last):

  File "/home/appuser/.local/lib/python3.7/site-packages/streamlit/shared/config.py", line 69, in get_option

    'proxy.staticRoot': 'streamlit/proxy_static/',

  File "/home/appuser/.local/lib/python3.7/site-packages/streamlit/shared/config.py", line 48, in _load_config

    with open(config_file_name) as config_file:

FileNotFoundError: [Errno 2] No such file or directory: '/usr/local/streamlit/config/config.yaml'


During handling of the above exception, another exception occurred:


Traceback (most recent call last):

  File "/usr/local/lib/python3.7/threading.py", line 926, in _bootstrap_inner

    self.run()

  File "/usr/local/lib/python3.7/threading.py", line 870, in run

    self._target(*self._args, **self._kwargs)

  File "/home/appuser/.local/lib/python3.7/site-packages/streamlit/local/connection.py", line 148, in connection_thread

    self._loop.run_until_complete(self._attempt_connection())

  File "/usr/local/lib/python3.7/asyncio/base_events.py", line 587, in run_until_complete

    return future.result()

  File "/home/appuser/.local/lib/python3.7/site-packages/streamlit/local/connection.py", line 38, in inner

    return await method(self, *args, **kwargs)

  File "/home/appuser/.local/lib/python3.7/site-packages/streamlit/local/connection.py", line 158, in _attempt_connection

    server = config.get_option('proxy.server')

  File "/home/appuser/.local/lib/python3.7/site-packages/streamlit/shared/config.py", line 77, in get_option

    'proxy.staticRoot': 'local/client/build/',

  File "/home/appuser/.local/lib/python3.7/site-packages/streamlit/shared/config.py", line 48, in _load_config

    with open(config_file_name) as config_file:

FileNotFoundError: [Errno 2] No such file or directory: '/home/appuser/.local/lib/config.yaml'


Traceback (most recent call last):

  File "/usr/local/bin/streamlit", line 5, in <module>

    from streamlit.cli import main

ModuleNotFoundError: No module named 'streamlit.cli'

Exception in thread Thread-1:

Traceback (most recent call last):

  File "/home/appuser/.local/lib/python3.7/site-packages/streamlit/shared/config.py", line 69, in get_option

    'proxy.staticRoot': 'streamlit/proxy_static/',

  File "/home/appuser/.local/lib/python3.7/site-packages/streamlit/shared/config.py", line 48, in _load_config

    with open(config_file_name) as config_file:

FileNotFoundError: [Errno 2] No such file or directory: '/usr/local/streamlit/config/config.yaml'


During handling of the above exception, another exception occurred:


Traceback (most recent call last):

  File "/usr/local/lib/python3.7/threading.py", line 926, in _bootstrap_inner

    self.run()

  File "/usr/local/lib/python3.7/threading.py", line 870, in run

    self._target(*self._args, **self._kwargs)

  File "/home/appuser/.local/lib/python3.7/site-packages/streamlit/local/connection.py", line 148, in connection_thread

    self._loop.run_until_complete(self._attempt_connection())

  File "/usr/local/lib/python3.7/asyncio/base_events.py", line 587, in run_until_complete

    return future.result()

  File "/home/appuser/.local/lib/python3.7/site-packages/streamlit/local/connection.py", line 38, in inner

    return await method(self, *args, **kwargs)

  File "/home/appuser/.local/lib/python3.7/site-packages/streamlit/local/connection.py", line 158, in _attempt_connection

    server = config.get_option('proxy.server')

  File "/home/appuser/.local/lib/python3.7/site-packages/streamlit/shared/config.py", line 77, in get_option

    'proxy.staticRoot': 'local/client/build/',

  File "/home/appuser/.local/lib/python3.7/site-packages/streamlit/shared/config.py", line 48, in _load_config

    with open(config_file_name) as config_file:

FileNotFoundError: [Errno 2] No such file or directory: '/home/appuser/.local/lib/config.yaml'


[manager] Error checking Streamlit healthz: Get "http://localhost:8501/healthz": dial tcp 127.0.0.1:8501: connect: connection refused

Traceback (most recent call last):

  File "/usr/local/bin/streamlit", line 5, in <module>

    from streamlit.cli import main

ModuleNotFoundError: No module named 'streamlit.cli'

Exception in thread Thread-1:

Traceback (most recent call last):

  File "/home/appuser/.local/lib/python3.7/site-packages/streamlit/shared/config.py", line 69, in get_option

    'proxy.staticRoot': 'streamlit/proxy_static/',

  File "/home/appuser/.local/lib/python3.7/site-packages/streamlit/shared/config.py", line 48, in _load_config

    with open(config_file_name) as config_file:

FileNotFoundError: [Errno 2] No such file or directory: '/usr/local/streamlit/config/config.yaml'


During handling of the above exception, another exception occurred:


Traceback (most recent call last):

  File "/usr/local/lib/python3.7/threading.py", line 926, in _bootstrap_inner

    self.run()

  File "/usr/local/lib/python3.7/threading.py", line 870, in run

    self._target(*self._args, **self._kwargs)

  File "/home/appuser/.local/lib/python3.7/site-packages/streamlit/local/connection.py", line 148, in connection_thread

    self._loop.run_until_complete(self._attempt_connection())

  File "/usr/local/lib/python3.7/asyncio/base_events.py", line 587, in run_until_complete

    return future.result()

  File "/home/appuser/.local/lib/python3.7/site-packages/streamlit/local/connection.py", line 38, in inner

    return await method(self, *args, **kwargs)

  File "/home/appuser/.local/lib/python3.7/site-packages/streamlit/local/connection.py", line 158, in _attempt_connection

    server = config.get_option('proxy.server')

  File "/home/appuser/.local/lib/python3.7/site-packages/streamlit/shared/config.py", line 77, in get_option

    'proxy.staticRoot': 'local/client/build/',

  File "/home/appuser/.local/lib/python3.7/site-packages/streamlit/shared/config.py", line 48, in _load_config

    with open(config_file_name) as config_file:

FileNotFoundError: [Errno 2] No such file or directory: '/home/appuser/.local/lib/config.yaml'


[manager] Error checking Streamlit healthz: Get "http://localhost:8501/healthz": dial tcp 127.0.0.1:8501: connect: connection refused

[manager] Error checking Streamlit healthz: Get "http://localhost:8501/healthz": dial tcp 127.0.0.1:8501: connect: connection refused

[manager] Error checking Streamlit healthz: Get "http://localhost:8501/healthz": dial tcp 127.0.0.1:8501: connect: connection refused

[manager] Error checking Streamlit healthz: Get "http://localhost:8501/healthz": dial tcp 127.0.0.1:8501: connect: connection refused

[manager] Error checking Streamlit healthz: Get "http://localhost:8501/healthz": dial tcp 127.0.0.1:8501: connect: connection refused

[manager] Error checking Streamlit healthz: Get "http://localhost:8501/healthz": dial tcp 127.0.0.1:8501: connect: connection refused

[manager] Error checking Streamlit healthz: Get "http://localhost:8501/healthz": dial tcp 127.0.0.1:8501: connect: connection refused

[manager] Error checking Streamlit healthz: Get "http://localhost:8501/healthz": dial tcp 127.0.0.1:8501: connect: connection refused

[manager] Error checking Streamlit healthz: Get "http://localhost:8501/healthz": dial tcp 127.0.0.1:8501: connect: connection refused

[manager] Streamlit server consistently failed status checks

[manager] Please fix the errors, push an update to the git repo, or reboot the app.
