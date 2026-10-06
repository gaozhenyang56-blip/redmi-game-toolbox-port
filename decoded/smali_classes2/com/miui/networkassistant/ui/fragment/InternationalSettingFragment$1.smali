.class Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->withDrawal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->access$000(Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->access$100(Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lp4/d;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->access$200(Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->access$300(Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->access$400(Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, La8/z;->d()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x1

    const-string v2, "withdrawal_confirm"

    invoke-static {v2, v0, v1}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    :cond_1
    return-void
.end method
