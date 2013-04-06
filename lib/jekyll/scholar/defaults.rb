module Jekyll
  class Scholar
    @defaults = {
      'style'                 => 'apa',
      'locale'                => 'en',

      'sort_by'               => 'none',
      'order'                 => 'ascending',

      'source'                => './_bibliography',
      'bibliography'          => 'references.bib',

      'details_dir'           => 'bibliography',
      'details_layout'        => 'bibtex.html',
      'details_link'          => 'Details',

      'bibliography_class'    => 'bibliography',
      'bibliography_template' => '%{reference}',

      'reference_tagname'     => 'span',
      'missing_reference'     => '(missing reference)',

      'details_link_class'    => 'details',

    	'query'                 => '@*'

    }.freeze

    class << self
      attr_reader :defaults
    end
  end
end