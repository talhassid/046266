
<void> <id,main>()
{
    <id,a>, <id,B> : <int16>;
	<id,a> <assign,=> <num,2>;
	<id,B> <assign,=><id,a><addop,+>(<int16>)<num,5>;
	<write>(<str,This is \"a\":\n>);
	<write>(<id,a>);
	<if> <id,B><relop,<>><num,1> <then> {
        <id,big_var> : <int32>;
	    <id,big_var> <assign,=> (<int32>)<id,a> <addop,+> (<int32>)<id,B>;
        <write>(<id,big_var>);
    }
}
