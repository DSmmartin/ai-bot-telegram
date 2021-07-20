# ai-bot-telegram

This is a project where a AI Bot answers some questions integrated in Telegram App

## Requirements

1. Anaconda
2. Docker


## Prepare and install environment

Run the following commands

```
conda env create -f conda.yml
conda activate ai-bot-telegram
git clone -b v1.3.0 https://github.com/facebookresearch/ParlAI.git ./parlai
cd ./parlai
python setup.py develop
```

## How to launch and check Blender 2.0 Model


```
 parlai interactive -mf zoo:blenderbot2/blenderbot2_400M/model --search-server relevant_search_server
```


## References

[ParlAI Github project](https://github.com/facebookresearch/ParlAI)

[ParlAI documentation](https://parl.ai/docs/index.html)

[Telegram Bot Documentation](https://core.telegram.org/bots)