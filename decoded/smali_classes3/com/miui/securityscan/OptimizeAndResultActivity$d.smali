.class Lcom/miui/securityscan/OptimizeAndResultActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/OptimizeAndResultActivity;->P()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securityscan/OptimizeAndResultActivity;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/OptimizeAndResultActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$d;->a:Lcom/miui/securityscan/OptimizeAndResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$d;->a:Lcom/miui/securityscan/OptimizeAndResultActivity;

    iget v0, v0, Lcom/miui/securityscan/OptimizeAndResultActivity;->z:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lcom/miui/securityscan/e;

    invoke-direct {v2, v0, v1}, Lcom/miui/securityscan/e;-><init>(J)V

    invoke-static {v2}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/miui/securityscan/scanner/ScoreManager;->H(J)V

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$d;->a:Lcom/miui/securityscan/OptimizeAndResultActivity;

    invoke-virtual {v0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->O0()I

    :cond_0
    return-void
.end method
