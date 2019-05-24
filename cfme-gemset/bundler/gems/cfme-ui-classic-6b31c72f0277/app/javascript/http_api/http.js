import { miqFetch } from './fetch';

export default {
  get,
  post,
};

function get(url, options = {}) {
  return miqFetch({
    ...options,
    url,
    method: 'GET',
    csrf: true,
    backendName: __('http'),
    credentials: 'include',
  });
}

function post(url, data, options = {}) {
  return miqFetch({
    ...options,
    url,
    method: 'POST',
    csrf: true,
    backendName: __('http'),
    credentials: 'include',
  }, data);
}
