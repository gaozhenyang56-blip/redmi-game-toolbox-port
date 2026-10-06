.class Lcom/miui/securityscan/OptimizeAndResultActivity$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/OptimizeAndResultActivity;->M0()V
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

    iput-object p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$i;->a:Lcom/miui/securityscan/OptimizeAndResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$i;->a:Lcom/miui/securityscan/OptimizeAndResultActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/securityscan/OptimizeAndResultActivity;->H:Z

    invoke-virtual {v0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->C0()V

    return-void
.end method
