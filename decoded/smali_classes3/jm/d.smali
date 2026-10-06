.class public Ljm/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljm/d;->a:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljm/d;->a:I

    iput p2, p0, Ljm/d;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Ljm/d;->d:I

    return v0
.end method

.method public b()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Ljm/d;->c:Landroid/view/View;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Ljm/d;->a:I

    return v0
.end method

.method public d(Ljm/e;)V
    .locals 2

    iget p1, p1, Ljm/e;->c:I

    and-int/lit8 p1, p1, 0x7

    iget-object v0, p0, Ljm/d;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    iget v1, p0, Ljm/d;->b:I

    if-ge v1, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Ljm/d;->d:I

    return-void
.end method

.method public f(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Ljm/d;->c:Landroid/view/View;

    return-void
.end method
