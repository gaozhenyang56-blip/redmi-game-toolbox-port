.class public Lcom/miui/optimizemanage/optimizeresult/l;
.super Lcom/miui/optimizemanage/optimizeresult/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/optimizemanage/optimizeresult/l$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/optimizemanage/optimizeresult/c;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/miui/optimizemanage/optimizeresult/l;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/optimizeresult/l;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public b(Landroid/view/View;)Lcom/miui/optimizemanage/optimizeresult/l$a;
    .locals 1

    new-instance v0, Lcom/miui/optimizemanage/optimizeresult/l$a;

    invoke-direct {v0, p1}, Lcom/miui/optimizemanage/optimizeresult/l$a;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/l;->a:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic createViewHolder(Landroid/view/View;)Lcom/miui/optimizemanage/optimizeresult/d;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/optimizemanage/optimizeresult/l;->b(Landroid/view/View;)Lcom/miui/optimizemanage/optimizeresult/l$a;

    move-result-object p1

    return-object p1
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0e03b5

    return v0
.end method
