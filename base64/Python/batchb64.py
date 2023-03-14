import os
import base64

file_extension = "your_file_extension"

files = [f for f in os.listdir(".") if f.endswith(f".{file_extension}")]

for file_name in files:
    with open(file_name, "r") as f:
        file_contents = f.read()
        encoded_contents = base64.b64encode(file_contents.encode()).decode()
        encoded_contents_with_prefix = f"data:text/{file_extension};base64," + encoded_contents

        output_file_name = os.path.splitext(file_name)[0] + ".txt"
        with open(output_file_name, "w") as output_file:
            output_lines = [f'"{encoded_contents_with_prefix[i:i+64]}",' for i in range(0, len(encoded_contents_with_prefix), 64)]
            output_lines[-1] = output_lines[-1][:-1]  # Remove trailing comma from last line
            output_file.write('\n'.join(output_lines))
