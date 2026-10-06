.class Lcom/miui/gamebooster/customview/y$g;
.super Lcom/miui/gamebooster/service/MiuiVoiceChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/customview/y;->Z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/customview/y;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/customview/y;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/y$g;->a:Lcom/miui/gamebooster/customview/y;

    invoke-direct {p0}, Lcom/miui/gamebooster/service/MiuiVoiceChangeCallback;-><init>()V

    return-void
.end method

.method public static synthetic o8(Lcom/miui/gamebooster/customview/y$g;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/y$g;->p8()V

    return-void
.end method

.method private synthetic p8()V
    .locals 6

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y$g;->a:Lcom/miui/gamebooster/customview/y;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120b13

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/gamebooster/customview/y$g;->a:Lcom/miui/gamebooster/customview/y;

    invoke-static {v4}, Lcom/miui/gamebooster/customview/y;->l(Lcom/miui/gamebooster/customview/y;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/miui/gamebooster/customview/y;->u(Lcom/miui/gamebooster/customview/y;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public onServiceAvaliable(I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/gamebooster/customview/y$g;->a:Lcom/miui/gamebooster/customview/y;

    invoke-static {p1}, Lcom/miui/gamebooster/customview/y;->r(Lcom/miui/gamebooster/customview/y;)V

    return-void
.end method

.method public onUserInfoRefresh()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "VoiceChangerChildView"

    const-string v1, "onUserInfoRefresh is running"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y$g;->a:Lcom/miui/gamebooster/customview/y;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/y;->r(Lcom/miui/gamebooster/customview/y;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y$g;->a:Lcom/miui/gamebooster/customview/y;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/y;->t(Lcom/miui/gamebooster/customview/y;)V

    return-void
.end method

.method public onUserStatusRefresh(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserStatusRefresh is running"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VoiceChangerChildView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/gamebooster/customview/y$g;->a:Lcom/miui/gamebooster/customview/y;

    invoke-static {p1}, Lcom/miui/gamebooster/customview/y;->r(Lcom/miui/gamebooster/customview/y;)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/y$g;->a:Lcom/miui/gamebooster/customview/y;

    invoke-static {p1}, Lcom/miui/gamebooster/customview/y;->t(Lcom/miui/gamebooster/customview/y;)V

    return-void
.end method

.method public v1(ILjava/lang/String;Lcom/miui/gamebooster/voicechanger/model/VoiceTipsModel;)V
    .locals 6

    const-string v0, "VoiceChangerChildView"

    const-string v1, "onTrialChange is running"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y$g;->a:Lcom/miui/gamebooster/customview/y;

    invoke-static {v0, p1}, Lcom/miui/gamebooster/customview/y;->m(Lcom/miui/gamebooster/customview/y;I)I

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y$g;->a:Lcom/miui/gamebooster/customview/y;

    invoke-static {v0, p2}, Lcom/miui/gamebooster/customview/y;->p(Lcom/miui/gamebooster/customview/y;Ljava/lang/String;)Ljava/lang/String;

    iget-object p2, p0, Lcom/miui/gamebooster/customview/y$g;->a:Lcom/miui/gamebooster/customview/y;

    invoke-static {p2}, Lcom/miui/gamebooster/customview/y;->l(Lcom/miui/gamebooster/customview/y;)I

    move-result p2

    if-lez p2, :cond_0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y$g;->a:Lcom/miui/gamebooster/customview/y;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/y;->l(Lcom/miui/gamebooster/customview/y;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "voice_experience_card_days"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "voice_experience_card_show"

    invoke-static {v0, p2}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    iget-object p2, p0, Lcom/miui/gamebooster/customview/y$g;->a:Lcom/miui/gamebooster/customview/y;

    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100047

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/miui/gamebooster/customview/y;->q(Lcom/miui/gamebooster/customview/y;Ljava/lang/String;)V

    invoke-static {}, Lo8/k;->C()Lo8/k;

    move-result-object p1

    invoke-virtual {p1}, Lo8/k;->J()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object p2, p0, Lcom/miui/gamebooster/customview/y$g;->a:Lcom/miui/gamebooster/customview/y;

    invoke-static {p2}, Lcom/miui/gamebooster/customview/y;->l(Lcom/miui/gamebooster/customview/y;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "voice_experience_card_click"

    invoke-static {p2, p1}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/y$g;->a:Lcom/miui/gamebooster/customview/y;

    invoke-static {p1}, Lcom/miui/gamebooster/customview/y;->o(Lcom/miui/gamebooster/customview/y;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/miui/gamebooster/customview/a0;

    invoke-direct {p2, p0}, Lcom/miui/gamebooster/customview/a0;-><init>(Lcom/miui/gamebooster/customview/y$g;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/customview/y$g;->a:Lcom/miui/gamebooster/customview/y;

    invoke-static {p1}, Lcom/miui/gamebooster/customview/y;->r(Lcom/miui/gamebooster/customview/y;)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/y$g;->a:Lcom/miui/gamebooster/customview/y;

    invoke-static {p1, p3}, Lcom/miui/gamebooster/customview/y;->s(Lcom/miui/gamebooster/customview/y;Lcom/miui/gamebooster/voicechanger/model/VoiceTipsModel;)V

    return-void
.end method
