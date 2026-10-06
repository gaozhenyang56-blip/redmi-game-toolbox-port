.class Lcom/miui/gamebooster/customview/AuditionView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/customview/AuditionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/customview/AuditionView;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/customview/AuditionView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView$a;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView$a;->a:Lcom/miui/gamebooster/customview/AuditionView;

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lcom/miui/gamebooster/customview/AuditionView;->c(Lcom/miui/gamebooster/customview/AuditionView;I)I

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView$a;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/AuditionView;->a(Lcom/miui/gamebooster/customview/AuditionView;)I

    move-result v0

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView$a;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/AuditionView;->d(Lcom/miui/gamebooster/customview/AuditionView;)Lcom/miui/gamebooster/customview/AuditionView$i;

    move-result-object v0

    const/4 v1, 0x5

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView$a;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/AuditionView;->d(Lcom/miui/gamebooster/customview/AuditionView;)Lcom/miui/gamebooster/customview/AuditionView$i;

    move-result-object v0

    const/4 v1, 0x3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
