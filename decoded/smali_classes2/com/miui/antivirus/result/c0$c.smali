.class public Lcom/miui/antivirus/result/c0$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/result/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/miui/antivirus/result/ScanResultFrame;

.field private c:Lcom/miui/antivirus/result/n;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/antivirus/result/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/result/c0$c;->d:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/miui/antivirus/result/c0$c;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic b(Lcom/miui/antivirus/result/c0$c;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/result/c0$c;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcom/miui/antivirus/result/c0$c;)Lcom/miui/antivirus/result/n;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/result/c0$c;->c:Lcom/miui/antivirus/result/n;

    return-object p0
.end method

.method static synthetic d(Lcom/miui/antivirus/result/c0$c;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/result/c0$c;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic e(Lcom/miui/antivirus/result/c0$c;)Lcom/miui/antivirus/result/ScanResultFrame;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/result/c0$c;->b:Lcom/miui/antivirus/result/ScanResultFrame;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)Lcom/miui/antivirus/result/c0$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/antivirus/result/a;",
            ">;)",
            "Lcom/miui/antivirus/result/c0$c;"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/antivirus/result/c0$c;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method public f()Lcom/miui/antivirus/result/c0;
    .locals 2

    new-instance v0, Lcom/miui/antivirus/result/c0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/antivirus/result/c0;-><init>(Lcom/miui/antivirus/result/c0$c;Lcom/miui/antivirus/result/c0$a;)V

    return-object v0
.end method

.method public g(Lcom/miui/antivirus/result/n;)Lcom/miui/antivirus/result/c0$c;
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/c0$c;->c:Lcom/miui/antivirus/result/n;

    return-object p0
.end method

.method public h(Lcom/miui/antivirus/result/ScanResultFrame;)Lcom/miui/antivirus/result/c0$c;
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/c0$c;->b:Lcom/miui/antivirus/result/ScanResultFrame;

    return-object p0
.end method
