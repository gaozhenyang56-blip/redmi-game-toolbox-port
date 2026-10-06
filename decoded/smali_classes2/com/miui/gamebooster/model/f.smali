.class public abstract Lcom/miui/gamebooster/model/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Landroid/util/SparseIntArray;


# instance fields
.field protected transient a:I

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/miui/gamebooster/model/f;->c:Landroid/util/SparseIntArray;

    const v1, 0x7f0e021c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e021d

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/gamebooster/model/f;->a:I

    return-void
.end method

.method public static d()I
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/model/f;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract a(Landroid/view/View;)Lt5/b;
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/model/f;->a:I

    return v0
.end method

.method public c()I
    .locals 2

    sget-object v0, Lcom/miui/gamebooster/model/f;->c:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/miui/gamebooster/model/f;->a:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/model/f;->b:Z

    return v0
.end method

.method public f(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/model/f;->b:Z

    return-void
.end method
