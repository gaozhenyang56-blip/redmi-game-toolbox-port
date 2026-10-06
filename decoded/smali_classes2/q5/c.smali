.class public Lq5/c;
.super Lcom/miui/common/card/models/BaseCardModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq5/c$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0e016f

    invoke-direct {p0, v0}, Lcom/miui/common/card/models/BaseCardModel;-><init>(I)V

    return-void
.end method

.method static synthetic a(Lq5/c;)Z
    .locals 0

    iget-boolean p0, p0, Lq5/c;->a:Z

    return p0
.end method

.method static synthetic b(Lq5/c;)Z
    .locals 0

    iget-boolean p0, p0, Lq5/c;->b:Z

    return p0
.end method

.method static synthetic c(Lq5/c;)Z
    .locals 0

    iget-boolean p0, p0, Lq5/c;->c:Z

    return p0
.end method

.method static synthetic d(Lq5/c;)Z
    .locals 0

    iget-boolean p0, p0, Lq5/c;->d:Z

    return p0
.end method

.method static synthetic e(Lq5/c;)Z
    .locals 0

    iget-boolean p0, p0, Lq5/c;->e:Z

    return p0
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 1

    new-instance v0, Lq5/c$a;

    invoke-direct {v0, p1}, Lq5/c$a;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public f(Z)V
    .locals 0

    iput-boolean p1, p0, Lq5/c;->d:Z

    return-void
.end method

.method public g(Z)V
    .locals 0

    iput-boolean p1, p0, Lq5/c;->b:Z

    return-void
.end method

.method public h(Z)V
    .locals 0

    iput-boolean p1, p0, Lq5/c;->c:Z

    return-void
.end method

.method public i(Z)V
    .locals 0

    iput-boolean p1, p0, Lq5/c;->e:Z

    return-void
.end method

.method public j(Z)V
    .locals 0

    iput-boolean p1, p0, Lq5/c;->a:Z

    return-void
.end method

.method public validate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
