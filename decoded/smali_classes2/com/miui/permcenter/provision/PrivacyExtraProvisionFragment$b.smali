.class final Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment$b;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/l<",
        "Lqc/a;",
        "Loj/t;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPrivacyExtraProvisionActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrivacyExtraProvisionActivity.kt\ncom/miui/permcenter/provision/PrivacyExtraProvisionFragment$initView$2\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,294:1\n37#2,2:295\n37#2,2:297\n*S KotlinDebug\n*F\n+ 1 PrivacyExtraProvisionActivity.kt\ncom/miui/permcenter/provision/PrivacyExtraProvisionFragment$initView$2\n*L\n116#1:295,2\n120#1:297,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment$b;->a:Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lqc/a;)V
    .locals 8
    .param p1    # Lqc/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "info"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment$b;->a:Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->n:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lqc/a;->c()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const-string v4, "miui.intent.extra.REQUEST_PERMISSIONS_NAMES"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lqc/a;->h()Ljava/util/List;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const-string v4, "miui.intent.extra.REQUEST_PERMISSIONS_NAMES_DESC"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lqc/a;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    invoke-virtual {p1}, Lqc/a;->c()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_1

    invoke-virtual {p1}, Lqc/a;->d()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {p1}, Lqc/a;->c()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_1

    :cond_0
    const/4 v6, 0x3

    :goto_1
    aput v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "miui.intent.extra.KEY_REQUEST_PERMISSIONS_STATE"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    invoke-virtual {p1}, Lqc/a;->i()Ljava/lang/String;

    move-result-object v2

    const-string v4, "miui.intent.extra.PACKAGE_NAME"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1, v3}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment$b;->a:Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;

    invoke-static {v0, p1}, Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;->e0(Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;Lqc/a;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lqc/a;

    invoke-virtual {p0, p1}, Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment$b;->a(Lqc/a;)V

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
