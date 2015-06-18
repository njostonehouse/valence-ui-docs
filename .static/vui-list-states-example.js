( function() {

	'use strict';

	$(document).ready(function() {

		var $list = $( '#liststates' );

		var updateListSelection = function() {

			$list.find( 'li.vradio > label > input' ).each(
				function ( index, inputNode ) {

					var $input = $( inputNode );

					$input.closest( 'li.vradio' ).toggleClass(
						'selected', $input.prop( 'checked' )
					);

				}
			);

		};

		updateListSelection();

		$list.change( function( args ) {

			var $target = $( args.target );

			if ( $target.attr( 'type' ) === 'radio' ) {
				updateListSelection();
			}

		} );

	});

} )();

