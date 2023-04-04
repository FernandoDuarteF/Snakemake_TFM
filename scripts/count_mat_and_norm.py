import argparse

def main():
	parser = argparse.ArgumentParser()
	parser.add_argument("-c","--counts", help="counts file from featureCounts")
	parser.add_argument("-l","--16S_lenght", help="mean length of 16S sequences present in library", type = float)
	parser.add_argument("-n","--16S_number", help="number of 16S sequences present in library", type = float)
	return parser.parse_args()

args = main()

counts = args.counts()

if
    with open(counts, "r") as f:
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
        


