.class Lcom/miui/optimizemanage/optimizeresult/a$a;
.super Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/optimizemanage/optimizeresult/a;->w(Lcom/miui/optimizemanage/OptimizemanageMainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/optimizemanage/OptimizemanageMainActivity;

.field final synthetic k:Lcom/miui/optimizemanage/optimizeresult/a;


# direct methods
.method constructor <init>(Lcom/miui/optimizemanage/optimizeresult/a;Lcom/miui/optimizemanage/OptimizemanageMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/a$a;->k:Lcom/miui/optimizemanage/optimizeresult/a;

    iput-object p2, p0, Lcom/miui/optimizemanage/optimizeresult/a$a;->a:Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    invoke-direct {p0}, Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(I)V
    .locals 1

    invoke-static {}, Lgb/b;->d()Lgb/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgb/b;->o(I)V

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/a$a;->k:Lcom/miui/optimizemanage/optimizeresult/a;

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/a$a;->a:Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    invoke-static {p1, v0}, Lcom/miui/optimizemanage/optimizeresult/a;->a(Lcom/miui/optimizemanage/optimizeresult/a;Lcom/miui/optimizemanage/OptimizemanageMainActivity;)V

    :cond_0
    invoke-static {}, Lc3/k;->g()Lc3/k;

    move-result-object p1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc3/k;->l(Landroid/content/Context;)V

    return-void
.end method
