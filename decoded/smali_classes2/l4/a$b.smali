.class Ll4/a$b;
.super Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll4/a;->M(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ll4/a;


# direct methods
.method constructor <init>(Ll4/a;)V
    .locals 0

    iput-object p1, p0, Ll4/a$b;->a:Ll4/a;

    invoke-direct {p0}, Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(I)V
    .locals 1

    if-lez p1, :cond_0

    iget-object p1, p0, Ll4/a$b;->a:Ll4/a;

    invoke-static {p1}, Ll4/a;->d(Ll4/a;)V

    :cond_0
    invoke-static {}, Lc3/k;->g()Lc3/k;

    move-result-object p1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc3/k;->l(Landroid/content/Context;)V

    return-void
.end method
