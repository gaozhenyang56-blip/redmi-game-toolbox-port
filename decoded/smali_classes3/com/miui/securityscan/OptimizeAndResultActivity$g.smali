.class Lcom/miui/securityscan/OptimizeAndResultActivity$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/OptimizeAndResultActivity;->s(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/miui/securityscan/OptimizeAndResultActivity;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/OptimizeAndResultActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$g;->b:Lcom/miui/securityscan/OptimizeAndResultActivity;

    iput-boolean p2, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$g;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$g;->b:Lcom/miui/securityscan/OptimizeAndResultActivity;

    invoke-virtual {v0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->Y0()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$g;->a:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcg/a;->a(I)V

    :cond_0
    return-void
.end method
