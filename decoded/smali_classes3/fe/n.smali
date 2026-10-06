.class public Lfe/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfe/n$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

.field private c:Lfe/j;


# direct methods
.method private constructor <init>(Lfe/n$b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lfe/n$b;->a(Lfe/n$b;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lfe/n;->a:Landroid/content/Context;

    invoke-static {p1}, Lfe/n$b;->b(Lfe/n$b;)Lfe/j;

    move-result-object v0

    iput-object v0, p0, Lfe/n;->c:Lfe/j;

    invoke-static {p1}, Lfe/n$b;->c(Lfe/n$b;)Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    move-result-object p1

    iput-object p1, p0, Lfe/n;->b:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    iget-object v0, p0, Lfe/n;->a:Landroid/content/Context;

    iget-object v1, p0, Lfe/n;->c:Lfe/j;

    invoke-virtual {p1, v0, v1}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->w(Landroid/content/Context;Lfe/j;)V

    iget-object p1, p0, Lfe/n;->b:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    invoke-virtual {p1}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->q()V

    return-void
.end method

.method synthetic constructor <init>(Lfe/n$b;Lfe/n$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lfe/n;-><init>(Lfe/n$b;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lqd/c;->c()Lqd/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lqd/c;->e(Landroid/content/Context;)V

    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p0, :cond_0

    const-string p0, "02-13"

    invoke-static {p0}, Lqd/d;->g(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lfe/n;->b:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    iget-object v1, p0, Lfe/n;->c:Lfe/j;

    invoke-virtual {v1}, Lfe/j;->q()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->r(I)V

    return-void
.end method

.method public c(Lw4/e;)V
    .locals 1

    iget-object v0, p0, Lfe/n;->b:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    invoke-virtual {v0, p1}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->setEventHandler(Lw4/e;)V

    return-void
.end method
