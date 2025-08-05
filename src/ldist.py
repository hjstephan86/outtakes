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
            return 'HTML', 'CSS' # Zeile ist HTML, wechsle zum CSS-Kontext
        elif '<script' in stripped:
            return 'HTML', 'JavaScript' # Zeile ist HTML, wechsle zum JavaScript-Kontext
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

    elif current_context == 'Python-HTML':
        if '"""' in stripped or "'''" in stripped:
            return 'Python', 'Python'  # Ende des HTML-Blocks
        else:
            return 'HTML', 'Python-HTML'
    
    elif current_context == 'Python-CSS':
        if '"""' in stripped or "'''" in stripped:
            return 'Python', 'Python'
        else:
            return 'CSS', 'Python-CSS'
    
    elif current_context == 'Python-JS':
        if '"""' in stripped or "'''" in stripped:
            return 'Python', 'Python'
        else:
            return 'JavaScript', 'Python-JS'

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
        lines = f.readlines()
    
    if file_type == 'Python':
        # Spezielle Behandlung für Python-Dateien
        i = 0
        while i < len(lines):
            line = lines[i]
            stripped = line.strip()
            
            # Prüfe auf Start von mehrzeiligem String mit Web-Content
            if ('"""' in line or "'''" in line) and not line.count('"""') == 2 and not line.count("'''") == 2:
                delimiter = '"""' if '"""' in line else "'''"
                
                # Schaue in den String hinein um Typ zu bestimmen
                string_content = ""
                j = i
                while j < len(lines):
                    if j == i:
                        # Erste Zeile: nimm alles nach dem delimiter
                        parts = lines[j].split(delimiter, 1)
                        if len(parts) > 1:
                            string_content += parts[1]
                    else:
                        if delimiter in lines[j]:
                            # Letzte Zeile: nimm alles vor dem delimiter
                            parts = lines[j].split(delimiter, 1)
                            string_content += parts[0]
                            break
                        else:
                            string_content += lines[j]
                    j += 1
                
                # Bestimme den Typ basierend auf dem String-Inhalt
                content_type = 'Python'
                if any(tag in string_content for tag in ['<html', '<div', '<head', '<body', '<title', '<h1', '<p']):
                    content_type = 'HTML'
                elif any(prop in string_content for prop in ['background', 'color:', 'margin:', 'padding:', 'font-family']):
                    content_type = 'CSS'
                elif any(js in string_content for js in ['document.', 'function', 'var ', 'let ', 'const ']):
                    content_type = 'JavaScript'
                
                # Zähle alle Zeilen des mehrzeiligen Strings
                for k in range(i, min(j+1, len(lines))):
                    line_content = lines[k].strip()
                    
                    # Die erste Zeile (mit html = """) ist Python-Code
                    if k == i:
                        language_lines['Python'] += 1
                    # Die letzte Zeile (nur """) ist auch Python
                    elif k == j:
                        language_lines['Python'] += 1
                    # Leere Zeilen werden als Python gezählt
                    elif not line_content:
                        language_lines['Python'] += 1
                    # Nur echte Inhaltszeilen werden als Web-Sprache gezählt
                    else:
                        if content_type in language_lines:
                            language_lines[content_type] += 1
                        else:
                            language_lines['Other'] += 1
                    
                    output_lines.append(lines[k].rstrip())
                
                i = j + 1
            else:
                # Normale Python-Zeile oder einzeiliger String
                # Prüfe auch einzeilige HTML-Strings
                lang = 'Python'
                if ('"' in line or "'" in line):
                    # Extrahiere String-Inhalte
                    import re
                    strings = re.findall(r'["\']([^"\']*)["\']', line)
                    for string_content in strings:
                        if any(tag in string_content for tag in ['<html', '<div', '<head', '<body', '<title', '<h1', '<p']):
                            lang = 'HTML'
                            break
                        elif any(prop in string_content for prop in ['background', 'color:', 'margin:', 'font-']):
                            lang = 'CSS'
                            break
                
                if lang in language_lines:
                    language_lines[lang] += 1
                else:
                    language_lines['Other'] += 1
                output_lines.append(line.rstrip())
                i += 1
    
    else:
        # Für andere Dateitypen: ursprüngliche Logik
        for line in lines:
            if file_type == 'HTML':
                lang, current_context = classify_line(line, current_context)
            else:
                lang = file_type
            if lang in language_lines:
                language_lines[lang] += 1
            else:
                language_lines['Other'] += 1
            output_lines.append(line.rstrip())
            
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
    with open('ldist.txt', 'w', encoding='utf-8') as f:
        for line in table_lines:
            f.write(line + '\n')
        f.write(total_line + '\n')

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python3 ldist.py <folder_path>")
    else:
        folder_path = sys.argv[1]
        if not os.path.isdir(folder_path):
            print(f"Error: {folder_path} is not a valid directory.")
        else:
            process_folder(folder_path)
            print_and_save_summary()
