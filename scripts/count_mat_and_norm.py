
def main():
	parser = argparse.ArgumentParser()
	parser.add_argument("-s","--sequence", help="sequence in fata format")
	parser.add_argument("-f","--forward", help="forward primer", type = str)
	parser.add_argument("-r","--reverse", help="reverse primer", type = str)
	parser.add_argument("-m","--mismatches", default = 0, help="number of mismatches", type = str)
	parser.add_argument("--minlength", default = 100, help="minimum product length", type = int)
	parser.add_argument("--maxlength", default = 1000, help="maximum product length", type = int)
	return parser.parse_args()

args = main()



with open('SRR6713625.counts', "r") as f:
    for x in range(2):
        next(f)
    for line in f:
        line = line.split("\t")
        length, counts = float(line[5]), float(line[6])
        try:
            norm = (length/counts)/400
        except ZeroDivisionError:
            norm = 0
        print(norm)
        


