.class Lrd/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrd/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrd/j;


# direct methods
.method constructor <init>(Lrd/j;)V
    .locals 0

    iput-object p1, p0, Lrd/j$a;->a:Lrd/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lrd/j$a;->a:Lrd/j;

    invoke-static {p1}, Lrd/j;->d(Lrd/j;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lrd/j$a;->a:Lrd/j;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lrd/j;->e(Lrd/j;J)J

    return-void
.end method
