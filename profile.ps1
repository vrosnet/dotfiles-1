$0 = $profile.AllUsersAllHosts
$1 = Test-Path $0
if (! $1) {
  ". $PSCommandPath" > $0
}

function prompt {
  "`n{0}`nPS > " -f (gl).path
}

function c {
  Clear-Host
}