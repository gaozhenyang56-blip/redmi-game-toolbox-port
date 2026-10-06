.class Lcom/miui/networkassistant/config/SharedPreferenceHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/config/SharedPreferenceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    invoke-static {p2}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/service/ITrafficManageBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->access$002(Lcom/miui/networkassistant/service/ITrafficManageBinder;)Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-static {}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->access$100()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
