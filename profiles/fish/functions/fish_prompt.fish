function fish_prompt
    set -l error $status

    set -l path \'(prompt_pwd)\'
    # make tilde character green
    set -l path (string replace -r "'~" "#c*('~')'" -- $path)

    set -l prompt \'| \'
    # make prompt character red on error
    if test "$error" -ne 0
        set prompt "#r($prompt)"
    end

    # Set sub-variables for different parts of git prompt
    set -l hc "[153,0,51]"
    set -l div "{+(#g('↑')),-(#r('↓'))}"

    # combine parts
    set -l git "#y($path) [#b*(b)@#b(B):$div | #~(#g(MARD):#r(maud):h(#$hc('@')))]'\n'$prompt"

    # fallback PS1
    set -l ps1 "#y($path) $prompt"

    echo -e (glit $git -e $ps1)
end
