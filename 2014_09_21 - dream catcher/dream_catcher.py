# Read a file

def most_common(lsWords,lsIgnored):
#    ignored = "a se v ve tam sem na".split(" ")
    ignored = set(lsIgnored)
    st = set(lsWords) - set(ignored)
    return max(st, key=lsWords.count)


if __name__ == "__main__":
    def_ignored = ["%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"]
    file = "dreamer.vim"    
    with open(file, "rt") as in_file:
        text = in_file.read()
    text = text.lower()
    lsWords = text.split()

    coms = []
    nWords = 242
    for i in range(nWords):
        ignored = coms + def_ignored
        coms += [most_common(lsWords, ignored)]
        print("%%%%%%\n"+" ".join(coms))
#    print(text)
#    print( "\n".join(coms) )


