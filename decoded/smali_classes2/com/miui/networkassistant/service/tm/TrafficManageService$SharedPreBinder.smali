.class Lcom/miui/networkassistant/service/tm/TrafficManageService$SharedPreBinder;
.super Lcom/miui/networkassistant/service/ISharedPreBinder$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/service/tm/TrafficManageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SharedPreBinder"
.end annotation


# instance fields
.field private final mSPHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;


# direct methods
.method public constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$SharedPreBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {p0}, Lcom/miui/networkassistant/service/ISharedPreBinder$Stub;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$SharedPreBinder;->mSPHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    return-void
.end method


# virtual methods
.method public attachBinderListener(Lcom/miui/networkassistant/service/ISharedPreBinderListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$SharedPreBinder;->mSPHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->attachBinderListener(Lcom/miui/networkassistant/service/ISharedPreBinderListener;)V

    return-void
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$SharedPreBinder;->mSPHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$SharedPreBinder;->mSPHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$SharedPreBinder;->mSPHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$SharedPreBinder;->mSPHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$SharedPreBinder;->mSPHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public putBoolean(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$SharedPreBinder;->mSPHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public putFloat(Ljava/lang/String;F)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$SharedPreBinder;->mSPHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;F)Z

    move-result p1

    return p1
.end method

.method public putInt(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$SharedPreBinder;->mSPHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public putLong(Ljava/lang/String;J)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$SharedPreBinder;->mSPHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result p1

    return p1
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$SharedPreBinder;->mSPHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
