.class Lcom/miui/gamebooster/customview/AuditionView$h;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/customview/AuditionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation


# instance fields
.field private a:Landroid/media/AudioRecord;

.field final synthetic b:Lcom/miui/gamebooster/customview/AuditionView;


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/customview/AuditionView;Landroid/media/AudioRecord;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView$h;->b:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/miui/gamebooster/customview/AuditionView$h;->a:Landroid/media/AudioRecord;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView$h;->a:Landroid/media/AudioRecord;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView$h;->b:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/AuditionView;->t(Lcom/miui/gamebooster/customview/AuditionView;)Landroid/media/AudioRecord;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView$h;->b:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/AuditionView;->n(Lcom/miui/gamebooster/customview/AuditionView;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView$h;->a:Landroid/media/AudioRecord;

    if-eqz v0, :cond_3

    const/16 v1, 0x400

    new-array v2, v1, [S

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/AudioRecord;->read([SII)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/miui/gamebooster/customview/AuditionView$h;->b:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v1}, Lcom/miui/gamebooster/customview/AuditionView;->u(Lcom/miui/gamebooster/customview/AuditionView;)Lcom/miui/gamebooster/customview/AuditionView$g;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gamebooster/customview/AuditionView$h;->b:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v1}, Lcom/miui/gamebooster/customview/AuditionView;->u(Lcom/miui/gamebooster/customview/AuditionView;)Lcom/miui/gamebooster/customview/AuditionView$g;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/miui/gamebooster/customview/AuditionView$g;->b([S)V

    :cond_1
    invoke-static {}, Lo8/k;->C()Lo8/k;

    move-result-object v1

    if-nez v0, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-virtual {v1, v3, v2}, Lo8/k;->v0(Z[S)V

    goto :goto_0

    :cond_3
    return-void
.end method
