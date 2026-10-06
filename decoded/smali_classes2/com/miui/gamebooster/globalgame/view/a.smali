.class public abstract Lcom/miui/gamebooster/globalgame/view/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/View;)V
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-wide v0, p0, Lcom/miui/gamebooster/globalgame/view/a;->a:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gamebooster/globalgame/view/a;->a:J

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x1f4

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/globalgame/view/a;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method
