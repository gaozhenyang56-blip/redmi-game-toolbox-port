.class Lcom/miui/gamebooster/customview/y$d;
.super Lcom/miui/gamebooster/service/MiuiVoiceChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/customview/y;->W(I)V
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

    iput-object p1, p0, Lcom/miui/gamebooster/customview/y$d;->a:Lcom/miui/gamebooster/customview/y;

    invoke-direct {p0}, Lcom/miui/gamebooster/service/MiuiVoiceChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onWebPageDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y$d;->a:Lcom/miui/gamebooster/customview/y;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/y;->G(Lcom/miui/gamebooster/customview/y;)Ls8/w;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y$d;->a:Lcom/miui/gamebooster/customview/y;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/y;->G(Lcom/miui/gamebooster/customview/y;)Ls8/w;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ls8/w;->c(Z)V

    :cond_0
    return-void
.end method
