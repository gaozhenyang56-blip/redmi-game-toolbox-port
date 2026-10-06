.class Lcom/miui/securityscan/OptimizeAndResultActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/OptimizeAndResultActivity;->h()V
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

    iput-object p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$f;->a:Lcom/miui/securityscan/OptimizeAndResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$f;->a:Lcom/miui/securityscan/OptimizeAndResultActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/securityscan/OptimizeAndResultActivity;->G:Z

    iget-boolean v1, v0, Lcom/miui/securityscan/OptimizeAndResultActivity;->H:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/miui/securityscan/OptimizeAndResultActivity;->J:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->C0()V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/miui/securityscan/OptimizeAndResultActivity;->x:Ljava/util/List;

    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/securityscan/scanner/ScoreManager;->q()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
