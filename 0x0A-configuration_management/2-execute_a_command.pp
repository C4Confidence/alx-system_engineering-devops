# kill process killmenow

exec { 'kill_killmenow_process':
  command     => 'pkill killmenow',
  refreshonly => true,
  onlyif      => 'pgrep killmenow',
  provider    => 'shell',
}
