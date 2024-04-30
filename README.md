
# 🌐 YRA (Your Robotic Analyzer)

YRA is a command-line tool designed to detect and analyze web technologies used in websites and web applications. It provides insightful information about the underlying technologies, empowering users with valuable insights for development, security, and competitive analysis.



## Features

- **Technology Detection**: YRA excels in identifying the underlying technologies used in web applications, including frameworks, programming languages, CMS platforms, and more.

- **Efficient Analysis**: Utilizing advanced algorithms and parallel processing techniques, YRA swiftly analyzes multiple URLs, delivering comprehensive results in minimal time.

- **Interactive Reports**: YRA generates interactive reports detailing the detected technologies, enabling users to explore and visualize the tech stack of any website effortlessly.

## Installation

To install YRA, simply clone the repository and follow the installation instructions:

```bash
git clone https://github.com/RobinTrigon/yra.git
cd yra
chmod +x install.sh
./install.sh
```

## Usage

### Analyzing Single URL

You can analyze a single URL by passing it as a command-line argument:

```bash
yra analyze example.com
```

#### Example Result:
```
https://example.com [HTML5, CSS3, JavaScript]
```

### Analyzing Multiple URLs

YRA supports analyzing multiple URLs simultaneously. You can specify them as command-line arguments:

```bash
yra analyze google.com yahoo.com microsoft.com
```

#### Example Result:
```
https://google.com [HTML5, CSS3, JavaScript, AngularJS]
https://yahoo.com [HTML5, CSS3, JavaScript, PHP]
https://microsoft.com [HTML5, CSS3, JavaScript, ASP.NET]
```

### Analyzing URLs from File

If you have a file containing URLs, you can analyze them by piping the file's contents into YRA:

```bash
cat urls.txt | yra analyze
```

#### Example Result:
```
https://example1.com [HTML5, CSS3, JavaScript]
https://example2.com [HTML5, CSS3, JavaScript, WordPress]
https://example3.com [HTML5, CSS3, JavaScript, React, Node.js]
```

### Help Menu

For more information and usage examples, you can access the help menu:

```bash
yra --help
```

