.class public Lc4/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v0, Lc4/o;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x1b58

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0xfa0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0xbb8

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x7d6

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x7d0

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 7

    invoke-static {p0}, Lc4/c;->f(Landroid/content/Context;)Lc4/c;

    move-result-object v0

    invoke-virtual {v0}, Lc4/c;->a()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    sget-object v4, Lc4/o;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    and-int v6, v3, v5

    if-eqz v6, :cond_1

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    not-int v4, v5

    and-int/2addr v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eq v3, v1, :cond_3

    invoke-virtual {v0, v3}, Lc4/c;->i(I)V

    :cond_3
    return-void
.end method
