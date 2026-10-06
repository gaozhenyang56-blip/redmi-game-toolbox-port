.class Lcom/miui/gamebooster/customview/y$f;
.super Lcom/miui/gamebooster/service/MiuiVoiceChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/customview/y;->a0()V
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

    iput-object p1, p0, Lcom/miui/gamebooster/customview/y$f;->a:Lcom/miui/gamebooster/customview/y;

    invoke-direct {p0}, Lcom/miui/gamebooster/service/MiuiVoiceChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestTrialResult(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y$f;->a:Lcom/miui/gamebooster/customview/y;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gamebooster/customview/y;->p(Lcom/miui/gamebooster/customview/y;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y$f;->a:Lcom/miui/gamebooster/customview/y;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/y;->o(Lcom/miui/gamebooster/customview/y;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/customview/y$f$a;

    invoke-direct {v1, p0, p1}, Lcom/miui/gamebooster/customview/y$f$a;-><init>(Lcom/miui/gamebooster/customview/y$f;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
