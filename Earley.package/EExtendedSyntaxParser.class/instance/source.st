as yet unclassified
source

	^    
'Sum -> Sum (''+'' | ''-'') Product  		<| ?? = @1 , @2 , @3|>
		| Product			     			<| ?? = @1|>.
							
Product -> Product (''*'' | ''/'') Factor 	<| ?? = @1 , @2 , @3|>
		| Factor							<| ?? = @1|>.
								
Factor -> ''('' Sum  '')'' 					<| ?? = @2|>
		| Number						<| ?? = @1|>.
							
Number -> Digit Number*				<| ?? = @1 , @2|>.

Digit -> ''0'' | ''1'' | ''2'' | ''3'' | ''4'' | ''5'' | ''6'' | ''7'' | ''8'' | ''9'' <| ?? = @1|>'