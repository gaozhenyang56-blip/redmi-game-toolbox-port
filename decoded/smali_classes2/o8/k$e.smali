.class Lo8/k$e;
.super Lcom/miui/gamebooster/service/MiuiVoiceChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo8/k;->X()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo8/k;


# direct methods
.method constructor <init>(Lo8/k;)V
    .locals 0

    iput-object p1, p0, Lo8/k$e;->a:Lo8/k;

    invoke-direct {p0}, Lcom/miui/gamebooster/service/MiuiVoiceChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTwiceTrialStateResult(ILjava/lang/String;I)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQueryTwiceTrialStateResult : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceChangeCore"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_2

    new-instance p1, Lcom/miui/gamebooster/voicechanger/model/VoiceTipsModel;

    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120567

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060389

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const v2, 0x7f080760

    invoke-direct {p1, v0, v1, v2}, Lcom/miui/gamebooster/voicechanger/model/VoiceTipsModel;-><init>(Ljava/lang/String;II)V

    invoke-static {}, Lr8/b;->c()Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f100049

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, p3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr8/b;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, p3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr8/b;->i(Ljava/lang/String;)V

    invoke-static {v3}, Lr8/b;->j(Z)V

    :cond_1
    iget-object v0, p0, Lo8/k$e;->a:Lo8/k;

    invoke-static {v0}, Lo8/k;->m(Lo8/k;)Lcom/miui/gamebooster/service/MiuiVoiceChangeCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo8/k$e;->a:Lo8/k;

    invoke-static {v0}, Lo8/k;->m(Lo8/k;)Lcom/miui/gamebooster/service/MiuiVoiceChangeCallback;

    move-result-object v0

    invoke-virtual {v0, p3, p2, p1}, Lcom/miui/gamebooster/service/MiuiVoiceChangeCallback;->v1(ILjava/lang/String;Lcom/miui/gamebooster/voicechanger/model/VoiceTipsModel;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lo8/k$e;->a:Lo8/k;

    invoke-static {p1}, Lo8/k;->n(Lo8/k;)V

    :cond_3
    :goto_0
    return-void
.end method
