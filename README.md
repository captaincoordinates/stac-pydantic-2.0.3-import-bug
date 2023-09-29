# stac-pydantic 2.0.3 Import Bug

Attempting to import `Item` from `stac_pydantic` fails with the following error
```
Traceback (most recent call last):
  File "<string>", line 1, in <module>
  File "/usr/local/lib/python3.11/site-packages/stac_pydantic/__init__.py", line 1, in <module>
    from .catalog import Catalog
  File "/usr/local/lib/python3.11/site-packages/stac_pydantic/catalog.py", line 5, in <module>
    from stac_pydantic.links import Links
  File "/usr/local/lib/python3.11/site-packages/stac_pydantic/links.py", line 59, in <module>
    class Links(BaseModel):
  File "/usr/local/lib/python3.11/site-packages/pydantic/_internal/_model_construction.py", line 104, in __new__
    private_attributes = inspect_namespace(
                         ^^^^^^^^^^^^^^^^^^
  File "/usr/local/lib/python3.11/site-packages/pydantic/_internal/_model_construction.py", line 314, in inspect_namespace
    raise TypeError("To define root models, use `pydantic.RootModel` rather than a field called '__root__'")
TypeError: To define root models, use `pydantic.RootModel` rather than a field called '__root__'

```

To reproduce: `./test.sh`
