.class public Lfe/n$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfe/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

.field private c:Lfe/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfe/n$b;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lfe/n$b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lfe/n$b;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lfe/n$b;)Lfe/j;
    .locals 0

    iget-object p0, p0, Lfe/n$b;->c:Lfe/j;

    return-object p0
.end method

.method static synthetic c(Lfe/n$b;)Lcom/miui/powercenter/quickoptimize/ScanResultFrame;
    .locals 0

    iget-object p0, p0, Lfe/n$b;->b:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    return-object p0
.end method


# virtual methods
.method public d()Lfe/n;
    .locals 2

    new-instance v0, Lfe/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfe/n;-><init>(Lfe/n$b;Lfe/n$a;)V

    return-object v0
.end method

.method public e(Lfe/j;)Lfe/n$b;
    .locals 0

    iput-object p1, p0, Lfe/n$b;->c:Lfe/j;

    return-object p0
.end method

.method public f(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)Lfe/n$b;
    .locals 0

    iput-object p1, p0, Lfe/n$b;->b:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    return-object p0
.end method
