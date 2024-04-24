# kill process killmenow

exec { 'pkill':
  command  => 'pkill killmenow',
  refreshonly => true,
  onlyif => 'pgrep killmenow',
  provider => 'shell',
}
