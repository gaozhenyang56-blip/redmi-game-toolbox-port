.class Lcom/miui/applicationlock/ApplockRecommendActivity$c$a;
.super Lw4/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/applicationlock/ApplockRecommendActivity$c;->onCreateLoader(ILandroid/os/Bundle;)Lq0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lw4/d<",
        "Ljava/util/ArrayList<",
        "Lc3/b;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic q:Lcom/miui/applicationlock/ApplockRecommendActivity;

.field final synthetic r:Lcom/miui/applicationlock/ApplockRecommendActivity$c;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/ApplockRecommendActivity$c;Landroid/content/Context;Lcom/miui/applicationlock/ApplockRecommendActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/ApplockRecommendActivity$c$a;->r:Lcom/miui/applicationlock/ApplockRecommendActivity$c;

    iput-object p3, p0, Lcom/miui/applicationlock/ApplockRecommendActivity$c$a;->q:Lcom/miui/applicationlock/ApplockRecommendActivity;

    invoke-direct {p0, p2}, Lw4/d;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic G()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/applicationlock/ApplockRecommendActivity$c$a;->J()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public J()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lc3/b;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lc3/f;->t()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/miui/applicationlock/AppLockManageFragment;->K:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/miui/applicationlock/ApplockRecommendActivity$c$a;->q:Lcom/miui/applicationlock/ApplockRecommendActivity;

    invoke-static {v5, v3}, Lx4/f1;->P(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lc3/b;

    const/4 v7, 0x0

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Lx4/z1;->m(I)I

    move-result v3

    invoke-direct {v6, v5, v7, v4, v3}, Lc3/b;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/ApplockRecommendActivity$c$a;->q:Lcom/miui/applicationlock/ApplockRecommendActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/ApplockRecommendActivity;->g0(Lcom/miui/applicationlock/ApplockRecommendActivity;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc3/b;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lc3/b;->h(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-object v2
.end method
