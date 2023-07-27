# ligo-action
GitHub Workflow Action for Ligo

Github action with 3 input to use the wished version of ligo. 

Inputs :  
- `ligo_version`: required -> The ligo version to use (eg 0.70.1)  
- `command`: required -> The command to execute (ommit ligo, for `ligo compile contract`, do `compile contract ...`  
- `working_directory` -> Optional : Path to the directory where the command have to be executed
# Example :
```yaml
      - name: Install deps
        uses: marigold-dev/ligo-action@v1.0.0
        with:
          ligo_version: 0.70.1
          command: install
          working_directory: contract
      - name: Run test
        uses: marigold-dev/ligo-action@v1.0.0
        with:
          ligo_version: 0.70.1
          command: run test test/test.mligo
          working_directory: contract
```
