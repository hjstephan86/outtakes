import os
import re
import sys

# Define keywords for JavaScript, CSS, and Java
JS_KEYWORDS = [
    'function', 'var', 'let', 'const', 'if', 'else', 'for', 'while', 'return',
    'document', 'window', 'onclick', 'console', 'alert', 'setTimeout', 'setInterval'
]
CSS_KEYWORDS = [
    '{', '}', 'color', 'background', 'margin', 'padding', 'border', 'width', 'height',
    'display', 'flex', 'grid', 'position', 'top', 'left', 'right', 'bottom'
]
JAVA_KEYWORDS = [
    'public', 'private', 'protected', 'static', 'final', 'abstract', 'class', 'interface',
    'extends', 'implements', 'import', 'package', 'void', 'int', 'String', 'boolean',
    'double', 'float', 'long', 'char', 'byte', 'short', 'new', 'this', 'super',
    'System.out.println', 'ArrayList', 'HashMap', 'List', 'Map', 'Set'
]
HTML_TAGS = ['<div', '<span', '<a', '<p', '<h1', '<h2', '<ul', '<li', '<table', '<tr', '<td']

def count_keywords(line, keywords):
    count = 0
    for kw in keywords:
        count += len(re.findall(r'\b' + re.escape(kw) + r'\b', line))
    return count

def classify_line(line, current_context):
    stripped = line.strip()

    if current_context == 'HTML':
        if '<style' in stripped:
            return 'CSS', 'CSS'
        elif '<script' in stripped:
            return 'JavaScript', 'JavaScript'
        elif '</style>' in stripped:
            return 'HTML', 'HTML'
        elif '</script>' in stripped:
            return 'HTML', 'HTML'
        else:
            return 'HTML', 'HTML'

    elif current_context == 'CSS':
        if '</style>' in stripped:
            return 'HTML', 'HTML'
        else:
            return 'CSS', 'CSS'

    elif current_context == 'JavaScript':
        if '</script>' in stripped:
            return 'HTML', 'HTML'
        else:
            js_score = count_keywords(stripped, JS_KEYWORDS)
            html_score = sum(stripped.count(tag) for tag in HTML_TAGS)
            if js_score > html_score:
                return 'JavaScript', 'JavaScript'
            elif html_score > js_score:
                return 'HTML', 'HTML'
            else:
                return 'JavaScript', 'JavaScript'

    return current_context, current_context

# Dictionary to store total lines per language
language_lines = {
    'Python': 0,
    'JavaScript': 0,
    'CSS': 0,
    'HTML': 0,
    'Java': 0,
    'Other': 0
}

# List to store output lines for printing/saving
output_lines = []

def process_file(filepath):
    filename = os.path.basename(filepath)
    ext = os.path.splitext(filename)[1].lower()
    if ext in ['.html', '.htm']:
        file_type = 'HTML'
    elif ext == '.css':
        file_type = 'CSS'
    elif ext == '.js':
        file_type = 'JavaScript'
    elif ext == '.py':
        file_type = 'Python'
    elif ext == '.java':
        file_type = 'Java'
    else:
        # Skip unsupported file types
        return

    current_context = 'HTML' if file_type == 'HTML' else file_type
    output_lines.append(f"\nProcessing {filepath} as {file_type}:\n")
    with open(filepath, 'r', encoding='utf-8', errors='ignore') as f:
        for line in f:
            if file_type == 'HTML':
                current_context, lang = classify_line(line, current_context)
            else:
                lang = file_type
            if lang in language_lines:
                language_lines[lang] += 1
            else:
                language_lines['Other'] += 1
            # Save line with classification for potential further use
            output_lines.append(f"{line.rstrip()}")
    
def process_folder(folder_path):
    for root, dirs, files in os.walk(folder_path):
        for file in files:
            if file.lower().endswith(('.html', '.htm', '.css', '.js', '.py', '.java')):
                filepath = os.path.join(root, file)
                process_file(filepath)

def print_and_save_summary():
    total_lines = sum(language_lines.values())
    # Prepare table lines
    table_lines = []
    header = f"{'Language':<12} {'Lines':>10} {'Percentage':>12}"
    separator = '-' * len(header)
    table_lines.append(header)
    table_lines.append(separator)
    for lang, count in language_lines.items():
        percent = (count / total_lines * 100) if total_lines > 0 else 0
        table_lines.append(f"{lang:<12} {count:>10} {percent:>11.2f}%")
    total_line = f"\nTotal lines: {total_lines}"

    # Print to console
    for line in table_lines:
        print(line)
    print(total_line)

    # Save to file
    with open('lang-dist.txt', 'w', encoding='utf-8') as f:
        for line in table_lines:
            f.write(line + '\n')
        f.write(total_line + '\n')

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python classify_folder_summary.py <folder_path>")
    else:
        folder_path = sys.argv[1]
        if not os.path.isdir(folder_path):
            print(f"Error: {folder_path} is not a valid directory.")
        else:
            process_folder(folder_path)
            print_and_save_summary()
