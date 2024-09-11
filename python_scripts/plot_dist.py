from matplotlib import pyplot as plt
import matplotlib.patches as mpatches
import argparse

parser = argparse.ArgumentParser()
parser.add_argument('--file1', '-f1')
parser.add_argument('--file2', '-f2')
args = parser.parse_args()


def read_file(input_file):
	all_lengths = []
	all_counts = []
		
	with open(input_file, 'r') as inf:
		for line in inf:
			groups = line.strip()
			groups = groups.split(' ')
			counts = int(groups[0])
			length = int(groups[1])
			all_lengths.append(length)
			all_counts.append(counts)	

	return all_lengths, all_counts

file1_lengths, file1_counts = read_file(args.file1)
file2_lengths, file2_counts = read_file(args.file2)



plt.bar(file1_lengths, file1_counts, color="blue")
plt.bar(file2_lengths, file2_counts, color="red", alpha=0.5)
plt.yscale("log")

plt.xlabel("Read Length")
plt.ylabel("Frequency (Log scale)")
plt.title("Frequency of read lengths for R1 and R2")

red_patch = mpatches.Patch(color='red', label='R2')
blue_patch = mpatches.Patch(color="purple", label='R1')
plt.legend(handles=[red_patch, blue_patch])



plt.savefig("out.jpg")