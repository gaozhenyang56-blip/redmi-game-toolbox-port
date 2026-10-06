.class Lcom/miui/securityscan/OptimizeAndResultActivity$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/OptimizeAndResultActivity;->A0()V
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

    iput-object p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$o;->a:Lcom/miui/securityscan/OptimizeAndResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$o;->a:Lcom/miui/securityscan/OptimizeAndResultActivity;

    invoke-static {v0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->l0(Lcom/miui/securityscan/OptimizeAndResultActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$o;->a:Lcom/miui/securityscan/OptimizeAndResultActivity;

    invoke-static {v0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->m0(Lcom/miui/securityscan/OptimizeAndResultActivity;)Lna/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$o;->a:Lcom/miui/securityscan/OptimizeAndResultActivity;

    invoke-static {v0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->m0(Lcom/miui/securityscan/OptimizeAndResultActivity;)Lna/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$o;->a:Lcom/miui/securityscan/OptimizeAndResultActivity;

    invoke-virtual {v0, v1}, Lna/a;->c(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
