.class Lcom/miui/securityscan/OptimizeAndResultActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/OptimizeAndResultActivity;->z0()V
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

    iput-object p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$a;->a:Lcom/miui/securityscan/OptimizeAndResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$a;->a:Lcom/miui/securityscan/OptimizeAndResultActivity;

    invoke-static {v0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->u0(Lcom/miui/securityscan/OptimizeAndResultActivity;)Lwf/a;

    move-result-object v0

    invoke-interface {v0}, Lwf/a;->stopPlay()V

    return-void
.end method
