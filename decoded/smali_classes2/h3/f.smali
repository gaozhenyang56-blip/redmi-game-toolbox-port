.class public abstract Lh3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final h:Landroid/util/SparseIntArray;


# instance fields
.field protected transient a:I

.field protected b:Z

.field protected c:I

.field protected d:I

.field protected e:Z

.field private f:Z

.field protected g:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lh3/f;->h:Landroid/util/SparseIntArray;

    const v1, 0x7f0e007e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e007c

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e007b

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e0062

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e008c

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e0085

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e0060

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e0061

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e008a

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e0063

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e0065

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e0064

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lh3/f;->g:I

    iput p1, p0, Lh3/f;->a:I

    return-void
.end method

.method public static a(I)I
    .locals 1

    sget-object v0, Lh3/f;->h:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public b()I
    .locals 2

    sget-object v0, Lh3/f;->h:Landroid/util/SparseIntArray;

    iget v1, p0, Lh3/f;->a:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lh3/f;->f:Z

    return v0
.end method

.method public d(I)V
    .locals 0

    return-void
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lh3/f;->e:Z

    return-void
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lh3/f;->c:I

    return-void
.end method

.method public g(I)V
    .locals 1

    iget v0, p0, Lh3/f;->d:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lh3/f;->d:I

    :cond_0
    return-void
.end method

.method public h(Z)V
    .locals 0

    iput-boolean p1, p0, Lh3/f;->b:Z

    return-void
.end method

.method public i(Z)V
    .locals 0

    iput-boolean p1, p0, Lh3/f;->f:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method
