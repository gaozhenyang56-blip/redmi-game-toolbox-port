.class Lcom/miui/applicationlock/MaskNotificationActivity$b$a;
.super Lw4/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/applicationlock/MaskNotificationActivity$b;->onCreateLoader(ILandroid/os/Bundle;)Lq0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lw4/d<",
        "Ljava/util/ArrayList<",
        "Lc3/o;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic q:Lcom/miui/applicationlock/MaskNotificationActivity;

.field final synthetic r:Lcom/miui/applicationlock/MaskNotificationActivity$b;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/MaskNotificationActivity$b;Landroid/content/Context;Lcom/miui/applicationlock/MaskNotificationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/MaskNotificationActivity$b$a;->r:Lcom/miui/applicationlock/MaskNotificationActivity$b;

    iput-object p3, p0, Lcom/miui/applicationlock/MaskNotificationActivity$b$a;->q:Lcom/miui/applicationlock/MaskNotificationActivity;

    invoke-direct {p0, p2}, Lw4/d;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic G()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/applicationlock/MaskNotificationActivity$b$a;->J()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public J()Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lc3/o;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/applicationlock/MaskNotificationActivity$b$a;->q:Lcom/miui/applicationlock/MaskNotificationActivity;

    invoke-static {v1}, Lcom/miui/applicationlock/MaskNotificationActivity;->e0(Lcom/miui/applicationlock/MaskNotificationActivity;)Lmiui/security/SecurityManager;

    move-result-object v1

    invoke-static {v1}, Lc3/f;->z(Lmiui/security/SecurityManager;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lc3/o;

    invoke-direct {v4}, Lc3/o;-><init>()V

    new-instance v5, Lc3/o;

    invoke-direct {v5}, Lc3/o;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v9, "zh"

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    iget-object v12, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v13, v0, Lcom/miui/applicationlock/MaskNotificationActivity$b$a;->q:Lcom/miui/applicationlock/MaskNotificationActivity;

    invoke-static {v13, v12}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lc3/b;

    iget v15, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v15, v11

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget v11, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11}, Lx4/z1;->m(I)I

    move-result v11

    invoke-direct {v14, v13, v15, v12, v11}, Lc3/b;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V

    iget-object v11, v0, Lcom/miui/applicationlock/MaskNotificationActivity$b$a;->q:Lcom/miui/applicationlock/MaskNotificationActivity;

    invoke-static {v11}, Lcom/miui/applicationlock/MaskNotificationActivity;->e0(Lcom/miui/applicationlock/MaskNotificationActivity;)Lmiui/security/SecurityManager;

    move-result-object v11

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Lx4/z1;->m(I)I

    move-result v8

    invoke-virtual {v11, v12, v8}, Lmiui/security/SecurityManager;->getApplicationMaskNotificationEnabledAsUser(Ljava/lang/String;I)Z

    move-result v8

    invoke-virtual {v14, v8}, Lc3/b;->h(Z)V

    invoke-virtual {v14, v10}, Lc3/b;->j(Z)V

    invoke-virtual {v14}, Lc3/b;->f()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    sget-object v8, Lcom/miui/applicationlock/MaskNotificationActivity;->j:Landroid/util/ArraySet;

    invoke-virtual {v8, v12}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, v0, Lcom/miui/applicationlock/MaskNotificationActivity$b$a;->q:Lcom/miui/applicationlock/MaskNotificationActivity;

    invoke-static {v8}, Lcom/miui/applicationlock/MaskNotificationActivity;->f0(Lcom/miui/applicationlock/MaskNotificationActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    invoke-virtual {v14, v8}, Lc3/b;->j(Z)V

    :cond_1
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move v8, v11

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v8, :cond_3

    iget-object v1, v0, Lcom/miui/applicationlock/MaskNotificationActivity$b$a;->q:Lcom/miui/applicationlock/MaskNotificationActivity;

    invoke-static {v1}, Lcom/miui/applicationlock/MaskNotificationActivity;->f0(Lcom/miui/applicationlock/MaskNotificationActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/miui/applicationlock/MaskNotificationActivity$b$a;->q:Lcom/miui/applicationlock/MaskNotificationActivity;

    invoke-static {v1}, Lcom/miui/applicationlock/MaskNotificationActivity;->g0(Lcom/miui/applicationlock/MaskNotificationActivity;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_3
    invoke-virtual {v4, v2}, Lc3/o;->e(Ljava/util/List;)V

    sget-object v1, Lc3/p;->a:Lc3/p;

    invoke-virtual {v4, v1}, Lc3/o;->g(Lc3/p;)V

    iget-object v1, v0, Lcom/miui/applicationlock/MaskNotificationActivity$b$a;->q:Lcom/miui/applicationlock/MaskNotificationActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121528

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lc3/o;->f(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_5

    iget-object v1, v0, Lcom/miui/applicationlock/MaskNotificationActivity$b$a;->q:Lcom/miui/applicationlock/MaskNotificationActivity;

    invoke-static {v1}, Lcom/miui/applicationlock/MaskNotificationActivity;->f0(Lcom/miui/applicationlock/MaskNotificationActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/miui/applicationlock/MaskNotificationActivity$b$a;->q:Lcom/miui/applicationlock/MaskNotificationActivity;

    invoke-static {v1}, Lcom/miui/applicationlock/MaskNotificationActivity;->g0(Lcom/miui/applicationlock/MaskNotificationActivity;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_5
    invoke-virtual {v5, v3}, Lc3/o;->e(Ljava/util/List;)V

    sget-object v1, Lc3/p;->b:Lc3/p;

    invoke-virtual {v5, v1}, Lc3/o;->g(Lc3/p;)V

    iget-object v1, v0, Lcom/miui/applicationlock/MaskNotificationActivity$b$a;->q:Lcom/miui/applicationlock/MaskNotificationActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121529

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lc3/o;->f(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v6
.end method
