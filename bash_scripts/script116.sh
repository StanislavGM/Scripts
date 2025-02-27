_argCount=$#;
while [[ ${_argCount} -gt 0 ]]; do
    if [[ ${_argCount} -ne 0 ]]; then
        if [[ $# -gt 1 ]]; then
            _varName="${1}";
            if [[ "${_varName:0:2}" != "--" ]]; then
                _rs=16;
                _failureMsg="Invalid name/value pair specified. Name must begin with a '--' characters. \ 
			Name found '${_varName}'. Aborting script with result status=${_rs}";
                echo "$_failureMsg";
                kill -INT $$;
            fi;
            _varName="${_varName:2:${#_varName}-2}";
            shift;
            _varValue="${1}";
            shift;
            declare -g ${_varName}="${_varValue}";
            if [[ "${_varName}" = "ARRAY" ]]; then
                if [[ $# -gt 1 ]]; then
                    _varName="${1}";
                    if [[ "${_varName:0:2}" != "--" ]]; then
                        _rs=16;
                        _failureMsg="Invalid name/value pair specified. Name must begin with a '--' characters. \ 
				Name found '${_varName}'. Aborting script with result status=${_rs}";
                        echo "$_failureMsg";
                        kill -INT $$;
                    fi;
                    _varName="${_varName:2:${#_varName}-2}";
                    declare -ga ${_varName};
                    _arrayCounter=$ARRAY;
                    while [[ $ARRAY -gt 0 ]]; do
                        shift;
                        # let "_index = _arrayCounter - ARRAY";
                        ((_index = _arrayCounter - ARRAY));
                        declare -ga "${_varName}[${_index}]"="${1}";
                        ((ARRAY--));
                    done;
                    shift;
                fi;
            fi;
        fi;
    fi;
_argCount=$#;
done
