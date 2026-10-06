.class Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppListUpdated()V
    .locals 3

    invoke-static {}, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAppListUpdated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->access$100(Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getNetworkAccessedAppList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->access$202(Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;Ljava/util/List;)Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/model/AppInfo;

    iget-object v1, v1, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->access$200(Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->access$302(Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;Z)Z

    return-void
.end method
