from blockfrost import BlockFrostApi, ApiError, ApiUrls
import pandas as pd

api = BlockFrostApi(
    project_id='YOUR PROJECT ID HERE',  # or export environment variable BLOCKFROST_PROJECT_ID
)
try:
    health = api.health()
    print(health)   # prints object:    HealthResponse(is_healthy=True)
    health = api.health(return_type='json') # Can be useful if python wrapper is behind api version
    print(health)   # prints json:      {"is_healthy":True}
    health = api.health(return_type='pandas')
    print(health)   # prints Dataframe:         is_healthy
                    #                       0         True


    assets = api.assets_policy(
        policy_id = 'POLICY ID TO SNAP HERE',
        gather_pages=True,
        )
    tally = {}

    for x in assets:
        asset_addresses = api.asset_addresses(x.asset)
        if (len(asset_addresses) == 0):
          continue
        address = asset_addresses[0].address
        if address in tally:
            tally[address] += 1
        else:
            tally[address] = 1


    df = pd.DataFrame(data=tally, index=[0])
    df = (df.T)
    print (df)
    df.to_excel('addresses.xlsx')

except ApiError as e:
    print(e)
