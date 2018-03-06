#python-project-dependency-graphs

A simple tool to detect cyclic imports in python projects.

## Usage example 

```bash
    pip install -r requirements.txt
    detect.sh <<path to project>>
```

```bash
    Output:
    Found 1 cycles:
    ('project/api.py', 'project/dbmsr.py')
    snakefood file: /tmp/tmp.tFNLIl2J55
    dot file: /tmp/tmp.YvcNtf92Rq
```

This builds the dependency graph of the project with [snakefood](http://furius.ca/snakefood/). Then uses that with [networkx](https://networkx.github.io/) to find cycles. The output is one tuple for each cycle it finds.

The script outputs the snakefood file and a dot file written to `/tmp` that you can use later.

The dot file can be used to generate a visual representation of your project's dependency graph.

```bash
    ubuntu_requirements.sh
    dot -T pdf <<generated dot file>> > <<output file>>
```
