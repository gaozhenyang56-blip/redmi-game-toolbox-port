.class Lcom/miui/permcenter/root/RootManagementActivity$a;
.super Lw4/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/root/RootManagementActivity;->onCreateLoader(ILandroid/os/Bundle;)Lq0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lw4/d<",
        "Lcom/miui/permcenter/root/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic q:Lcom/miui/permcenter/root/RootManagementActivity;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/root/RootManagementActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/root/RootManagementActivity$a;->q:Lcom/miui/permcenter/root/RootManagementActivity;

    invoke-direct {p0, p2}, Lw4/d;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic G()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/permcenter/root/RootManagementActivity$a;->J()Lcom/miui/permcenter/root/a;

    move-result-object v0

    return-object v0
.end method

.method public J()Lcom/miui/permcenter/root/a;
    .locals 8

    iget-object v0, p0, Lcom/miui/permcenter/root/RootManagementActivity$a;->q:Lcom/miui/permcenter/root/RootManagementActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-wide/16 v1, 0x200

    invoke-static {v0, v1, v2}, Lcom/miui/permcenter/n;->w(Landroid/content/Context;J)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v3, Lcom/miui/permcenter/b;

    invoke-direct {v3}, Lcom/miui/permcenter/b;-><init>()V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/permcenter/AppPermissionInfo;

    invoke-virtual {v5}, Lcom/miui/permcenter/AppPermissionInfo;->getPermissionToAction()Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/miui/permcenter/root/a;

    invoke-direct {v0}, Lcom/miui/permcenter/root/a;-><init>()V

    iput-object v3, v0, Lcom/miui/permcenter/root/a;->a:Ljava/util/ArrayList;

    iput-object v4, v0, Lcom/miui/permcenter/root/a;->b:Ljava/util/ArrayList;

    return-object v0
.end method
