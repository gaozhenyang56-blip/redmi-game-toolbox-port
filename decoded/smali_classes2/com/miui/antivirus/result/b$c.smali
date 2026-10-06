.class Lcom/miui/antivirus/result/b$c;
.super Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/result/b;->e(Lcom/miui/antivirus/activity/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic k:Lcom/miui/antivirus/result/b;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/result/b;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/b$c;->k:Lcom/miui/antivirus/result/b;

    iput-object p2, p0, Lcom/miui/antivirus/result/b$c;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/result/b$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/activity/MainActivity;

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/antivirus/result/b$c;->k:Lcom/miui/antivirus/result/b;

    invoke-static {p1, v0}, Lcom/miui/antivirus/result/b;->a(Lcom/miui/antivirus/result/b;Lcom/miui/antivirus/activity/MainActivity;)V

    invoke-static {}, Lc3/k;->g()Lc3/k;

    move-result-object p1

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc3/k;->l(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method
