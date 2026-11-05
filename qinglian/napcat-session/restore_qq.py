import asyncio,importlib.util,json
spec=importlib.util.spec_from_file_location('portal_restore','/opt/napcat-login/portal.py')
m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m)
async def main():
    async with m.aiohttp.ClientSession(timeout=m.aiohttp.ClientTimeout(total=15)) as http:
        app={'http':http}
        status=await m.nc(app,'QQLogin/CheckLoginStatus')
        if status.get('isLogin'):return {'logged_in':True,'already_online':True}
        choices=await m.nc(app,'QQLogin/GetQuickLoginList')
        if isinstance(choices,dict):choices=choices.get('list',choices.get('accounts',[]))
        ids=[]
        for item in choices if isinstance(choices,list) else []:
            value=item.get('uin') if isinstance(item,dict) else item
            if value and str(value).isdigit():ids.append(str(value))
        if len(ids)!=1:return {'logged_in':False,'quick_accounts':len(ids),'requires_user_scan':True}
        try:await m.nc(app,'QQLogin/SetQuickLogin',{'uin':ids[0]})
        except RuntimeError:return {'logged_in':False,'requires_user_scan':True,'saved_login_rejected':True}
        for _ in range(15):
            await asyncio.sleep(2)
            status=await m.nc(app,'QQLogin/CheckLoginStatus')
            if status.get('isLogin'):return {'logged_in':True,'restored_saved_login':True,'core_ready':status.get('coreReady')}
        return {'logged_in':False,'requires_user_scan':True,'phase':status.get('loginPhase')}
try:print(json.dumps(asyncio.run(asyncio.wait_for(main(),timeout=70))))
except Exception as error:print(json.dumps({'logged_in':False,'requires_user_scan':True,'error_type':type(error).__name__}))
