#python-project-dependency-graphs

A simple tool to detect cyclic imports in python projects.

## Wut?

```bash
    pip install -r requirements.txt
    detect.sh <<path to project>>
```

This builds the dependency graph of the project with [snakefood](http://furius.ca/snakefood/). Then uses that with [networkx](https://networkx.github.io/) to find cycles. The output is one tuple for each cycle it finds.

The script outputs the snakefood file and a dot file written to `/tmp` that you can use later.

The dot file can be used to generate a visual representation of your project's dependency graph.

```bash
    dot -T pdf <<generated dot file>> > <<output file>>
```
