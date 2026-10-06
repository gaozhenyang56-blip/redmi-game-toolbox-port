.class public Lob/b;
.super Lob/a;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field private c:Lcom/miui/permcenter/AppPermissionInfo;


# direct methods
.method public constructor <init>(Lcom/miui/permcenter/AppPermissionInfo;)V
    .locals 6

    invoke-direct {p0}, Lob/a;-><init>()V

    iput-object p1, p0, Lob/b;->c:Lcom/miui/permcenter/AppPermissionInfo;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/miui/permcenter/AppPermissionInfo;->getUid()I

    move-result v0

    invoke-static {v0}, Lx4/z1;->m(I)I

    move-result v0

    const/16 v1, 0x3e7

    if-ne v0, v1, :cond_0

    const-string v0, "pkg_icon_xspace://"

    goto :goto_0

    :cond_0
    const-string v0, "pkg_icon://"

    :goto_0
    invoke-static {}, Lx4/z1;->r()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/miui/permcenter/AppPermissionInfo;->getUid()I

    move-result v2

    invoke-static {v2}, Lx4/z1;->m(I)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    invoke-virtual {p1}, Lcom/miui/permcenter/AppPermissionInfo;->getUid()I

    move-result v5

    invoke-static {v5}, Lx4/z1;->m(I)I

    move-result v5

    if-eq v5, v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v4

    :goto_2
    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pkg_work_profile://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/permcenter/AppPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/permcenter/AppPermissionInfo;->getUid()I

    move-result v1

    invoke-static {v1}, Lx4/z1;->m(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/miui/permcenter/AppPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lob/b;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/permcenter/AppPermissionInfo;->getPermissionToAction()Ljava/util/HashMap;

    move-result-object v0

    const-wide/16 v1, 0x4000

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/miui/permcenter/AppPermissionInfo;->getIsAllowStartByWakePath()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    move v3, v4

    :cond_5
    :goto_4
    iput-boolean v3, p0, Lob/b;->b:Z

    :cond_6
    return-void
.end method

.method public static b(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnb/c;",
            ">;)",
            "Ljava/util/List<",
            "Lob/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_7

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    move v3, v2

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnb/c;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lnb/c;->b()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    new-instance v5, Lob/d;

    invoke-virtual {v4}, Lnb/c;->a()Lnb/d;

    move-result-object v6

    sget-object v7, Lnb/d;->a:Lnb/d;

    if-ne v6, v7, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    move v6, v2

    :goto_1
    invoke-direct {v5, v6, v2}, Lob/d;-><init>(ZI)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v1, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lnb/c;->b()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/permcenter/AppPermissionInfo;

    new-instance v6, Lob/b;

    invoke-direct {v6, v5}, Lob/b;-><init>(Lcom/miui/permcenter/AppPermissionInfo;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v5, v6, Lob/b;->b:Z

    if-eqz v5, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-ge v2, p0, :cond_7

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lob/d;

    iget-boolean v4, p0, Lob/d;->a:Z

    if-eqz v4, :cond_6

    move v4, v3

    goto :goto_4

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v5

    sub-int/2addr v4, v5

    :goto_4
    iput v4, p0, Lob/d;->b:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    :goto_5
    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method public c()Lcom/miui/permcenter/AppPermissionInfo;
    .locals 1

    iget-object v0, p0, Lob/b;->c:Lcom/miui/permcenter/AppPermissionInfo;

    return-object v0
.end method
