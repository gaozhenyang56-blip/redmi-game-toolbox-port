.class public Lcom/miui/common/card/functions/CommonFunction;
.super Lcom/miui/common/card/functions/BaseFunction;
.source "SourceFile"


# static fields
.field private static ACTION_WHITE_LIST:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CommonFunction"


# instance fields
.field private actionUri:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private intent:Landroid/content/Intent;

.field private isRecordClickState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/common/card/functions/CommonFunction;->ACTION_WHITE_LIST:Ljava/util/List;

    const-string v1, "miui.intent.action.GARBAGE_CLEANUP"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/common/card/functions/CommonFunction;->ACTION_WHITE_LIST:Ljava/util/List;

    const-string v1, "miui.intent.action.GARBAGE_DEEPCLEAN"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/common/card/functions/CommonFunction;->ACTION_WHITE_LIST:Ljava/util/List;

    const-string v1, "miui.intent.action.GARBAGE_DEEPCLEAN_WECHAT"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/common/card/functions/CommonFunction;->ACTION_WHITE_LIST:Ljava/util/List;

    const-string v1, "miui.intent.action.GARBAGE_DEEPCLEAN_QQ"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/common/card/functions/CommonFunction;->ACTION_WHITE_LIST:Ljava/util/List;

    const-string v1, "miui.intent.action.GARBAGE_UNINSTALL_APPS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/common/card/functions/CommonFunction;->ACTION_WHITE_LIST:Ljava/util/List;

    const-string v1, "miui.intent.action.GARBAGE_UNINSTALL_APPS_NEW"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/card/functions/BaseFunction;-><init>()V

    iput-object p1, p0, Lcom/miui/common/card/functions/CommonFunction;->intent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/common/card/functions/CommonFunction;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "data_config"

    invoke-static {p1, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object v0

    const-string v1, "is_homepage_operated"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Luf/b;->p(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/miui/common/card/functions/CommonFunction;->intent:Landroid/content/Intent;

    const-string v1, "enter_homepage_way"

    const-string v3, "00004"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/common/card/functions/CommonFunction;->intent:Landroid/content/Intent;

    const-string v1, "track_gamebooster_enter_way"

    const-string v3, "00001"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/common/card/functions/CommonFunction;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.securitycenter.action.TRANSITION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "enter_way"

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/common/card/functions/CommonFunction;->intent:Landroid/content/Intent;

    :goto_0
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_0
    const-string v1, "#Intent;action=miui.intent.action.APP_MANAGER;end"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/common/card/functions/CommonFunction;->intent:Landroid/content/Intent;

    const-string v3, "com.miui.securitycenter"

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/miui/common/card/functions/CommonFunction;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v3, Lcom/miui/common/card/functions/CommonFunction;->ACTION_WHITE_LIST:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/miui/common/card/functions/CommonFunction;->intent:Landroid/content/Intent;

    invoke-static {p1, v1}, Lc4/f;->g(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_2

    :cond_2
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "securitycenter://home:8888/mainActivity?isAutoOpenPmPage=true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    instance-of v1, p1, Lcom/miui/securityscan/MainActivity;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Lcom/miui/securityscan/MainActivity;

    invoke-virtual {v1, v2}, Lcom/miui/securityscan/MainActivity;->B0(I)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/miui/common/card/functions/CommonFunction;->intent:Landroid/content/Intent;

    invoke-static {p1, v1}, Lx4/f1;->R(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_4

    const v1, 0x7f120210

    invoke-static {p1, v1}, Lx4/y1;->j(Landroid/content/Context;I)V

    :cond_4
    :goto_2
    iget-boolean v1, p0, Lcom/miui/common/card/functions/CommonFunction;->isRecordClickState:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/miui/common/card/functions/CommonFunction;->id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object p1, p0, Lcom/miui/common/card/functions/CommonFunction;->id:Ljava/lang/String;

    invoke-static {p1, v2}, Lpf/i;->u(Ljava/lang/String;Z)V

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/miui/common/card/functions/CommonFunction;->actionUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/miui/common/card/functions/CommonFunction;->actionUri:Ljava/lang/String;

    :goto_3
    invoke-static {p1, v0, v2}, Lpf/i;->p(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_7
    :goto_4
    return-void
.end method

.method public setActionUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/functions/CommonFunction;->actionUri:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/functions/CommonFunction;->id:Ljava/lang/String;

    return-void
.end method

.method public setRecordClickState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/functions/CommonFunction;->isRecordClickState:Z

    return-void
.end method
