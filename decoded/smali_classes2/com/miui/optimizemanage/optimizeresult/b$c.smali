.class Lcom/miui/optimizemanage/optimizeresult/b$c;
.super Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/optimizemanage/optimizeresult/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/optimizemanage/OptimizemanageMainActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/miui/optimizemanage/optimizeresult/b;


# direct methods
.method public constructor <init>(Lcom/miui/optimizemanage/OptimizemanageMainActivity;Lcom/miui/optimizemanage/optimizeresult/b;)V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b$c;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/miui/optimizemanage/optimizeresult/b$c;->k:Lcom/miui/optimizemanage/optimizeresult/b;

    return-void
.end method


# virtual methods
.method public onFinished(I)V
    .locals 2

    invoke-static {}, Lgb/b;->d()Lgb/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgb/b;->o(I)V

    invoke-static {}, Lc3/k;->g()Lc3/k;

    move-result-object v0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc3/k;->l(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/b$c;->k:Lcom/miui/optimizemanage/optimizeresult/b;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    invoke-virtual {v1, v0, v1}, Lcom/miui/optimizemanage/optimizeresult/b;->i(Lcom/miui/optimizemanage/OptimizemanageMainActivity;Lcom/miui/optimizemanage/optimizeresult/b;)V

    :cond_1
    :goto_0
    return-void
.end method
