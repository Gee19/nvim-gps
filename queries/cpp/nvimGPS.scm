
; Namespace
((class_specifier
	name: (type_identifier) @class-name
	body: (field_declaration_list)) @scope-root)

; Struct
((struct_specifier
	name: (type_identifier) @class-name) @scope-root)

; Class
((namespace_definition
	name: (identifier) @class-name) @scope-root)

; Function
((function_definition
	declarator: (function_declarator
		declarator: (identifier) @function-name)) @scope-root)

; Lambda function
((declaration
	declarator: (init_declarator
		declarator: (identifier) @function-name
		value: (lambda_expression))) @scope-root)

; Method
((function_definition
	declarator: (function_declarator
		declarator: (field_identifier) @method-name)) @scope-root)

; Method written outside class
((function_definition
	declarator: (function_declarator
		declarator: (scoped_identifier
			name: (identifier) @method-name))) @scope-root)