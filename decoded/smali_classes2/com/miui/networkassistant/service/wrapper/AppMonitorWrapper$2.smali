.class Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$2;
.super Lcom/miui/networkassistant/service/IAppMonitorBinderListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$2;->this$0:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    invoke-direct {p0}, Lcom/miui/networkassistant/service/IAppMonitorBinderListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppListUpdated()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$2;->this$0:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->access$002(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;Z)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$2;->this$0:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    invoke-static {v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->access$100(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;)V

    return-void
.end method
