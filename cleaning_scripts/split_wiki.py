import sys

def main():
    fn = sys.argv[1]
    chunk = int(sys.argv[2])
    pref = sys.argv[3]
    split_i = 0
    end = False
    with open(fn,'r') as of:
        while not end:
            lines = []
            for i in range(chunk):
                line = of.readline()
                if line == '':
                    end = True
                    break
                else:
                    lines.append(line)
            with open(f"split_{pref}{split_i}.txt", 'w') as wf:
                for l in lines:
                    wf.write(l)
            split_i += 1

main()
