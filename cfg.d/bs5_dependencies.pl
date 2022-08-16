# Add bootstrap 5 via CDN's to the templates <head> element

$c->add_trigger( EP_TRIGGER_DYNAMIC_TEMPLATE, sub
{
  my %params = @_;
  my $repo = $params{repository};
  my $pins = $params{pins};
  my $xhtml = $repo->xhtml;

  my $bs5_CSS_link = $repo->xml->create_element( "link", rel => "stylesheet", href => "https://cdn.jsdelivr.net/npm/bootstrap\@5.0.2/dist/css/bootstrap.min.css", integrity => "sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC", crossorigin => "anonymous" );
  my $bs5_JS_script = $repo->xml->create_element( "script", src => "https://cdn.jsdelivr.net/npm/bootstrap\@5.0.2/dist/js/bootstrap.bundle.min.js", integrity => "sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM", crossorigin => "anonymous" );

  $pins->{'utf-8.head'} .= $xhtml->to_xhtml( $bs5_CSS_link );
  $pins->{'utf-8.head'} .= $xhtml->to_xhtml( $bs5_JS_script );

}, priority => 9);
